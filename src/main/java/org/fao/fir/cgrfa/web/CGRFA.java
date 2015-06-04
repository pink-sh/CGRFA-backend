package org.fao.fir.cgrfa.web;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.ResponseBuilder;

import org.apache.pdfbox.exceptions.COSVisitorException;
import org.codehaus.jackson.map.ObjectMapper;
import org.fao.fir.cgrfa.dao.mapper.model.Surveyanswers;
import org.fao.fir.cgrfa.objects.PDFQuestionList;
import org.fao.fir.cgrfa.objects.Questionnaire;
import org.fao.fir.cgrfa.objects.UploadedFile;
import org.fao.fir.cgrfa.objects.json.AnswersList;
import org.fao.fir.cgrfa.objects.json.Headers;
import org.fao.fir.cgrfa.objects.json.SurveyList;
import org.fao.fir.cgrfa.sql.Worker;
import org.glassfish.jersey.media.multipart.ContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataBodyPart;
import org.glassfish.jersey.media.multipart.FormDataMultiPart;

@Path("")
public class CGRFA {
	
	private static String FILE_NAME = "CGRFA_Questionnaire_!COUNTRY!_!DATE!.pdf";
	
	@Context ServletContext context;

	@GET
	@Produces(MediaType.TEXT_PLAIN)
	@Path("test/")
	public String test() {
		return "Here we are!";
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("getList/")
	public Response getList() {
		Worker w = new Worker();
		
		LinkedList<SurveyList> list = w.getListOfSurvey();
		ObjectMapper mapper = new ObjectMapper();
		try {
			return Response.ok(mapper.writeValueAsString(list)).build();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return Response.status(500).build();
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("getForm/{id}")
	public Response getForm(@PathParam("id") String id) {
		Worker w = new Worker();
		
		Questionnaire questionnaire = new Questionnaire();
		questionnaire.setControlledLists(w.getControlledLists());
		questionnaire.setQuestions(w.buildQuestionList(id));
		questionnaire.setQuestionType(w.getQuestionTypes());
		questionnaire.setHeaders(w.getQuestionnaireHeaders(id));
		questionnaire.setInsertedCountriesIDs(new ArrayList<String>());
		
		ObjectMapper mapper = new ObjectMapper();
		try {
			return Response.ok(mapper.writeValueAsString(questionnaire)).build();
		} catch (IOException e) {
			e.printStackTrace();
			return Response.status(500).build();
		}
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("getForm/")
	public Response getEmptyForm() {
		Worker w = new Worker();
		
		Questionnaire questionnaire = new Questionnaire();
		questionnaire.setControlledLists(w.getControlledLists());
		questionnaire.setQuestions(w.buildQuestionList());
		questionnaire.setQuestionType(w.getQuestionTypes());
		questionnaire.setHeaders(w.getQuestionnaireHeaders());
		questionnaire.setInsertedCountriesIDs(w.getListOfInsertedCountriesIDs());
		
		ObjectMapper mapper = new ObjectMapper();
		try {
			return Response.ok(mapper.writeValueAsString(questionnaire)).build();
		} catch (IOException e) {
			e.printStackTrace();
			return Response.status(500).build();
		}
	}
	
	@GET
	@Path("deleteSurvey/{id}")
	public Response deleteSurvey(@PathParam("id") String id) {
		Worker w = new Worker();
		w.deleteSurvey(Integer.parseInt(id));
		return Response.ok().build();
	}
	
	
	@POST
	@Path("SaveSurvey/")
	@Consumes(MediaType.APPLICATION_JSON)	
	public Response saveSurvey(String data) {

		Worker w = new Worker();
	
		try {
			AnswersList list = w.prepareAnswers(data);
			Headers headers = w.getHeadersFromJsonResponse(data);
			int status = w.persistAnswers(list.getSurvey_id(), list.getAnswers());
			if (status > 0) {
				w.deleteSurvey(list.getSurvey_id());
				return Response.status(500).build();
			}
			w.persistStatus(list.getSurvey_id(), list.getStatus());
			w.updateSurveyDate(list.getSurvey_id());
			w.updateSurveyByHeaders(list.getSurvey_id(), headers);
		} catch (IOException e) {
			e.printStackTrace();
			return Response.status(500).build();
		} catch (ParseException e) {
			e.printStackTrace();
			return Response.status(500).build();
		}

	    return Response.ok().build();
	}
	
	@POST
	@Path("SaveNewHtmlSurvey/")
	@Consumes(MediaType.APPLICATION_JSON)	
	public Response saveNewHtmlSurvey(String data) {
		
		Worker w = new Worker();
		int insertedSurvey = -1;
		try {
			insertedSurvey = w.persistSurvey(w.getSurveyFromJsonHeaders(data));
			List<Surveyanswers> list = w.getNewSurveyListOfAnswers(data, insertedSurvey);
			int status = w.persistListOfAnswers(list);
			if (status > 0) {
				return Response.status(500).build();
			}
			w.persistSurveyStatus(insertedSurvey);
		} catch (IOException e) {
			if (insertedSurvey >= 0) {
				w.deleteSurvey(insertedSurvey);
			}
			e.printStackTrace();
			return Response.status(500).build();
		} catch (Exception e) {
			if (insertedSurvey >= 0) {
				w.deleteSurvey(insertedSurvey);
			}
			e.printStackTrace();
			return Response.status(500).build();
		}

	
		return Response.ok().build();
	}
	
	@POST
	@Path("upload/")
	@Consumes(MediaType.MULTIPART_FORM_DATA)
	public Response uploadFile(FormDataMultiPart form) {
		
		String finalPath = context.getInitParameter("UploadFolder");
		this.mkFolder(finalPath);
		if (!finalPath.endsWith(File.separator)) {
			finalPath = finalPath + File.separator;
		}
		
		String tempFolder = finalPath + "temp" + File.separator;
		this.mkFolder(tempFolder);
		
		String temporaryFileName = UUID.randomUUID().toString();
		temporaryFileName = temporaryFileName + ".pdf";
		
		List<FormDataBodyPart> listOfFiles = form.getFields("files[]");
		List<UploadedFile> list = new LinkedList<UploadedFile>();
		for (FormDataBodyPart filePart : listOfFiles) {
			ContentDisposition headerOfFilePart =  filePart.getContentDisposition();
			String uploadedFileName = filePart.getContentDisposition().getFileName();
			long uploadedFileSize = filePart.getContentDisposition().getSize();
			InputStream fileInputStream = filePart.getValueAs(InputStream.class);
			String tmpFilePath = tempFolder + temporaryFileName;
			saveFile(fileInputStream, tmpFilePath);
			
			Worker w = new Worker();
			PDFQuestionList res = w.parsePDF(tmpFilePath);
			if (res == null) {
				return Response.status(500).build();
			}
			String enCountry = w.getEnglishCountryNameByID(res.getCountry()).replaceAll(" ", "");
			String newFileName = FILE_NAME.replaceFirst("!DATE!", this.getTodayDate()).replaceFirst("!COUNTRY!", enCountry);
			
			try {
				Files.copy(Paths.get(tmpFilePath), Paths.get(finalPath + newFileName));
				Files.delete(Paths.get(tmpFilePath));
			} catch (IOException e) {
				return Response.status(500).build();
			}
			
			UploadedFile uploadedFile = new UploadedFile();
			uploadedFile.setName(uploadedFileName);
			uploadedFile.setSize(Long.toString(uploadedFileSize));
			uploadedFile.setThumbnailUrl("img/pdf.png");
			list.add(uploadedFile);
			
			res.setFileName(headerOfFilePart.getFileName());
			res.setNewFileName(finalPath + newFileName);
			int status = w.persistQuestionnaire(res);
			if (status > 0) {
				return Response.status(500).build();
			}
		}
		Map<String, Object> files = new HashMap<>();
        files.put("files", list);
        
		ObjectMapper mapper = new ObjectMapper();
		try {
			return Response.ok(mapper.writeValueAsString(files)).build();
		} catch (IOException e) {
			e.printStackTrace();
			return Response.status(500).build();
		}
	}
	
	
	@GET
	@Path("getFile/{file}")
	@Produces("application/pdf")
	public Response getFile(@PathParam("file") String base64FilePath) {
		
		byte[] asBytes = Base64.getDecoder().decode(base64FilePath);
		String filePath;
		try {
			filePath = new String(asBytes, "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			return Response.status(500).build();
		}
		File file = new File(filePath);
		if (!file.exists()) {
			return Response.status(404).build();
		}

		ResponseBuilder response = Response.ok((Object) file);
		response.header("Content-Disposition",
			"attachment; filename=" + file.getName());
		return response.build();
	}
	
	@GET
	@Path("statistics/pdf/")
	@Produces("application/pdf")
	public Response getStatistics() {
		Worker w = new Worker();
		try {
			String filename = w.getStatusReport();
			DateFormat dateFormat = new SimpleDateFormat("yyyyMMdd_HHmmss");
	        Date date = new Date();
	        String today = dateFormat.format(date);
	        String outFileName = "AqGR_report_" + today + ".pdf";
	        ResponseBuilder response = Response.ok((Object) new File(filename));
			response.header("Content-Disposition",
				"attachment; filename=" + outFileName);
			return response.build();
		} catch (COSVisitorException e) {
			e.printStackTrace();
			return Response.status(500).build();
		} catch (IOException e) {
			e.printStackTrace();
			return Response.status(500).build();
		}
	}
	
	
	@GET
	@Path("images/pdf.png")
	@Produces("image/png")
	public Response getPdfIcon() {
		ClassLoader classLoader = getClass().getClassLoader();
		File file = new File(classLoader.getResource("images/pdf.png").getFile());
		try {
			BufferedImage bi = ImageIO.read(file);
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
		    ImageIO.write(bi, "png", baos);
		    byte[] imageData = baos.toByteArray();
		    return Response.ok(new ByteArrayInputStream(imageData)).build();
		} catch (IOException e) {
			e.printStackTrace();
			return Response.status(500).build();
		}
	}
	
	
	
	private void saveFile(InputStream uploadedInputStream, String serverLocation) {

		try {
			OutputStream outpuStream = new FileOutputStream(new File(
					serverLocation));
			int read = 0;
			byte[] bytes = new byte[1024];

			outpuStream = new FileOutputStream(new File(serverLocation));
			while ((read = uploadedInputStream.read(bytes)) != -1) {
				outpuStream.write(bytes, 0, read);
			}

			outpuStream.flush();
			outpuStream.close();

			uploadedInputStream.close();
		} catch (IOException e) {

			e.printStackTrace();
		}

	}
	
	private void mkFolder(String path) {
		if (Files.notExists(Paths.get(path))) {
			File f = new File(path);
			f.mkdir();
		}
	}
	
	private String getTodayDate() {
		DateFormat dateFormat = new SimpleDateFormat("ddMMMyyyy_HHmmss");
		Date date = new Date();
		return dateFormat.format(date);
	}
}
