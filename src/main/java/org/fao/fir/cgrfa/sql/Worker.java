package org.fao.fir.cgrfa.sql;


import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.imageio.ImageIO;

import org.apache.ibatis.exceptions.TooManyResultsException;
import org.apache.pdfbox.exceptions.COSVisitorException;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.pdmodel.common.PDRectangle;
import org.apache.pdfbox.pdmodel.edit.PDPageContentStream;
import org.apache.pdfbox.pdmodel.font.PDFont;
import org.apache.pdfbox.pdmodel.font.PDType1Font;
import org.apache.pdfbox.pdmodel.graphics.xobject.PDPixelMap;
import org.apache.pdfbox.pdmodel.graphics.xobject.PDXObjectImage;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.fao.fir.cgrfa.dao.mapper.model.Controlledlists;
import org.fao.fir.cgrfa.dao.mapper.model.Countries;
import org.fao.fir.cgrfa.dao.mapper.model.Questions;
import org.fao.fir.cgrfa.dao.mapper.model.Questionsfields;
import org.fao.fir.cgrfa.dao.mapper.model.Questionstables;
import org.fao.fir.cgrfa.dao.mapper.model.Questionstablescolumns;
import org.fao.fir.cgrfa.dao.mapper.model.Questionstablesfields;
import org.fao.fir.cgrfa.dao.mapper.model.Questionstablesrows;
import org.fao.fir.cgrfa.dao.mapper.model.Questiontype;
import org.fao.fir.cgrfa.dao.mapper.model.Survey;
import org.fao.fir.cgrfa.dao.mapper.model.Surveyanswers;
import org.fao.fir.cgrfa.dao.mapper.model.Surveystatus;
import org.fao.fir.cgrfa.objects.ControlledEntry;
import org.fao.fir.cgrfa.objects.Field;
import org.fao.fir.cgrfa.objects.PDFQuestion;
import org.fao.fir.cgrfa.objects.PDFQuestionList;
import org.fao.fir.cgrfa.objects.PDFTable;
import org.fao.fir.cgrfa.objects.PDFTableRow;
import org.fao.fir.cgrfa.objects.Question;
import org.fao.fir.cgrfa.objects.QuestionType;
import org.fao.fir.cgrfa.objects.QuestionnaireHeaders;
import org.fao.fir.cgrfa.objects.Table;
import org.fao.fir.cgrfa.objects.TableCell;
import org.fao.fir.cgrfa.objects.TableRow;
import org.fao.fir.cgrfa.objects.json.Answer;
import org.fao.fir.cgrfa.objects.json.AnswerInRow;
import org.fao.fir.cgrfa.objects.json.AnswersList;
import org.fao.fir.cgrfa.objects.json.Country;
import org.fao.fir.cgrfa.objects.json.Headers;
import org.fao.fir.cgrfa.objects.json.Status;
import org.fao.fir.cgrfa.objects.json.SurveyList;
import org.fao.fir.cgrfa.pdf.XFA_Parser;
import org.fao.fir.cgrfa.pdf.parser.objects.Subform;

public class Worker {
	
	PersistanceInterface in;
	
	public Worker() {
		in = new PersistanceImplementation();
	}
	
	public LinkedList<SurveyList> getListOfSurvey() {
		LinkedList<SurveyList> surveyList = new LinkedList<SurveyList>();
		
		List<Survey> storedSurveys = in.getAllSurvey();
		
		for (Survey storedSurvey : storedSurveys) {
			SurveyList singleSurvey = new SurveyList();
			singleSurvey.setId(storedSurvey.getId());
			singleSurvey.setPreparedBy(storedSurvey.getPreparedBy());
			singleSurvey.setDate(storedSurvey.getDate());
			if (storedSurvey.getName() != null) {
				try {
					singleSurvey.setOriginalPDF(Base64.getEncoder().encodeToString(storedSurvey.getName().getBytes("utf-8")));
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				}
			}
			
			Countries dbCountry = in.getCountryById(storedSurvey.getCountry());
			
			Country country = new Country();
			country.setId(dbCountry.getId());
			country.setIso2(dbCountry.getIso2());
			country.setIso3(dbCountry.getIso3());
			country.setNameAr(dbCountry.getNameAr());
			country.setNameEn(dbCountry.getNameEn());
			country.setNameFr(dbCountry.getNameFr());
			country.setNameEs(dbCountry.getNameEs());
			country.setNameZh(dbCountry.getNameZh());
			country.setNameRu(dbCountry.getNameRu());
			
			singleSurvey.setCountry(country);
			
			singleSurvey.setRejected(in.getStatusCountBySurvey(storedSurvey.getId(), 0));
			singleSurvey.setUnderRevision(in.getStatusCountBySurvey(storedSurvey.getId(), 1));
			singleSurvey.setAccepted(in.getStatusCountBySurvey(storedSurvey.getId(), 2));
			
			if (singleSurvey.getRejected() > 4) {
				singleSurvey.setOverallStatus(0);
			} else if (singleSurvey.getRejected() == 0 && singleSurvey.getUnderRevision() == 0) {
				singleSurvey.setOverallStatus(2);
			} else {
				singleSurvey.setOverallStatus(1);
			}
			
			surveyList.add(singleSurvey);
		}
		
		return surveyList;
	}
	
	public List<Question> buildQuestionList() {
		List<Questions> l1 = in.getAllQuestions();
		List<Questiontype> lqt = in.getQuestionTypes();
		
		List<Question> questions = new ArrayList<Question>();
		
		for (Questions q : l1) {
			Question question = new Question();
			int id = q.getId();
			question.setId(id);
			
			question.setTitle(q.getTitle());
			
			question.setText_a(q.getNameA());
			question.setText_c(q.getNameC());
			question.setText_e(q.getNameE());
			question.setText_f(q.getNameF());
			question.setText_r(q.getNameR());
			question.setText_s(q.getNameS());
			
			question.setStatus(1);
			
			List<Questionsfields> lq = in.getQuestionFieldsById(id);
			
			List<Field> lf = new ArrayList<Field>();
			List<Table> lt = new ArrayList<Table>();
			for (Questionsfields qf : lq) {
				int type = qf.getType();
				
				if (type == 8) {
					Table table = new Table();
					table.setName(qf.getName());
					Questionstables dbTab = in.getTableByName(qf.getName());
					List<Questionstablescolumns> qtc = in.getTableColumnsById(dbTab.getId());
					
					
					if (qtc.size() > 5) {
						table.setRatio(Integer.toString(((int)92/qtc.size())+10));
						table.setWidth("92");
					} 
					else if (qtc.size() > 3 && qtc.size() <= 5) {
						table.setRatio(Integer.toString(((int)70/qtc.size())));
						table.setWidth("70");
					}
					else {
						table.setRatio(Integer.toString((int)50/qtc.size()));
						table.setWidth("50");
					}
					
					List<Questionstablesrows> qtr = in.getTableRowsById(dbTab.getId());
					
					LinkedList<String> head_e = new LinkedList<String>();
					LinkedList<String> head_f = new LinkedList<String>();
					LinkedList<String> head_s = new LinkedList<String>();
					LinkedList<String> head_a = new LinkedList<String>();
					LinkedList<String> head_r = new LinkedList<String>();
					LinkedList<String> head_c = new LinkedList<String>();
					LinkedList<TableRow> tableRows = new LinkedList<TableRow>();
					
					for (Questionstablescolumns col : qtc) {
						head_e.add(col.getHeaderE());
						head_f.add(col.getHeaderF());
						head_s.add(col.getHeaderS());
						head_a.add(col.getHeaderA());
						head_r.add(col.getHeaderR());
						head_c.add(col.getHeaderC());
					}
					
					for (Questionstablesrows row : qtr) {
						TableRow tableRow = new TableRow();
						tableRow.setName(row.getName());
						tableRow.setMulti(row.getMulti());
						LinkedList<TableCell> tableCells = new LinkedList<TableCell>();
						for (Questionstablescolumns col : qtc) {
							TableCell cell = new TableCell();
							List<Questionstablesfields> qtcfs = in.getCellFieldsByCoordinates(dbTab.getId(), col.getId(), row.getId());
							LinkedList<Field> fields = new LinkedList<Field>();
							for (Questionstablesfields qtcf : qtcfs) {
								Field field = new Field();
								field.setName(qtcf.getName());
								field.setText_a(qtcf.getTextA());
								field.setText_f(qtcf.getTextF());
								field.setText_e(qtcf.getTextE());
								field.setText_r(qtcf.getTextR());
								field.setText_c(qtcf.getTextC());
								field.setText_s(qtcf.getTextS());
								field.setType(qtcf.getType());
								field.setDefault_value(qtcf.getDefaultValue());
								if (qtcf.getControlledList() != null) {
									field.setControlledList(qtcf.getControlledList());
								}
								for (Questiontype t : lqt) {
									if (t.getId() == qtcf.getType()) {
										field.setType_name(t.getType());
									}
								}
								String htmlId = "[id==" + Integer.toString(qtcf.getId()) + "]![table==" + qtcf.getTableId() + "]![column==" + Integer.toString(qtcf.getColumnId()) + "]![row==" + Integer.toString(qtcf.getRowId()) + "]![fieldname==" + qtcf.getName() + "]![multisort==" + Integer.toString(row.getMulti()) + "]";  
								field.setHtmlId(htmlId);
								fields.add(field);
							}
							cell.setFields(fields);
							tableCells.add(cell);
						}
						tableRow.setCells(tableCells);
						tableRows.add(tableRow);
					}
					
					table.setHeader_e(head_e);
					table.setHeader_f(head_f);
					table.setHeader_s(head_s);
					table.setHeader_a(head_a);
					table.setHeader_r(head_r);
					table.setHeader_z(head_c);
					table.setMatrix(tableRows);

					lt.add(table);
				} else {
					Field field = new Field();
					field.setType(type);
					for (Questiontype t : lqt) {
						if (t.getId() == type) {
							field.setType_name(t.getType());
						}
					}
					field.setName(qf.getName());
					field.setText_a(qf.getTextA());
					field.setText_e(qf.getTextE());
					field.setText_f(qf.getTextF());
					field.setText_c(qf.getTextC());
					field.setText_r(qf.getTextR());
					field.setText_s(qf.getTextS());
					field.setHtmlId("[id==" + Integer.toString(qf.getId()) + "]![fieldname==" + qf.getName() + "]");
					if (qf.getControlledList() != null) {
						field.setControlledList(qf.getControlledList());
					}
					lf.add(field);
				}
			}
			question.setTables(lt);
			question.setFields(lf);
			questions.add(question);
			
		}
		return questions;
	}
	
	public List<Question> buildQuestionList(String survey_id) {
		List<Questions> l1 = in.getAllQuestions();
		List<Questiontype> lqt = in.getQuestionTypes();
		
		List<Question> questions = new ArrayList<Question>();
		
		for (Questions q : l1) {
			Question question = new Question();
			int id = q.getId();
			question.setId(id);
			
			question.setTitle(q.getTitle());
			
			question.setText_a(q.getNameA());
			question.setText_c(q.getNameC());
			question.setText_e(q.getNameE());
			question.setText_f(q.getNameF());
			question.setText_r(q.getNameR());
			question.setText_s(q.getNameS());
			
			Surveystatus status = in.getQuestionStatus(Integer.parseInt(survey_id), id);
			
			question.setStatus(status.getStatus());
			
			List<Questionsfields> lq = in.getQuestionFieldsById(id);
			
			List<Field> lf = new ArrayList<Field>();
			List<Table> lt = new ArrayList<Table>();
			for (Questionsfields qf : lq) {
				int type = qf.getType();
				
				if (type == 8) {
					Table table = new Table();
					table.setName(qf.getName());
					Questionstables dbTab = in.getTableByName(qf.getName());
					List<Questionstablescolumns> qtc = in.getTableColumnsById(dbTab.getId());
					
					if (qtc.size() > 5) {
						table.setRatio(Integer.toString(((int)92/qtc.size())+10));
						table.setWidth("92");
					} 
					else if (qtc.size() > 3 && qtc.size() <= 5) {
						table.setRatio(Integer.toString(((int)70/qtc.size())));
						table.setWidth("70");
					}
					else {
						table.setRatio(Integer.toString((int)50/qtc.size()));
						table.setWidth("50");
					}
					
					List<Questionstablesrows> qtr = in.getTableRowsById(dbTab.getId());
					
					LinkedList<String> head_e = new LinkedList<String>();
					LinkedList<String> head_f = new LinkedList<String>();
					LinkedList<String> head_s = new LinkedList<String>();
					LinkedList<String> head_a = new LinkedList<String>();
					LinkedList<String> head_r = new LinkedList<String>();
					LinkedList<String> head_c = new LinkedList<String>();
					LinkedList<TableRow> tableRows = new LinkedList<TableRow>();
					
					for (Questionstablescolumns col : qtc) {
						head_e.add(col.getHeaderE());
						head_f.add(col.getHeaderF());
						head_s.add(col.getHeaderS());
						head_a.add(col.getHeaderA());
						head_r.add(col.getHeaderR());
						head_c.add(col.getHeaderC());
					}
					
					for (Questionstablesrows row : qtr) {
						
						if (row.getMulti() == 1) {
							int numberOfMultiRowInserted = in.getNumberOfInsertedMultiRows(dbTab.getId(), row.getId(), Integer.parseInt(survey_id));
							
							for (int xx = 0; xx < numberOfMultiRowInserted; xx++) {
								TableRow tableRow = new TableRow();
								tableRow.setName(row.getName());
								tableRow.setMulti(row.getMulti());
								int rowCounter = xx + 1;
								LinkedList<TableCell> tableCells = new LinkedList<TableCell>();
								for (Questionstablescolumns col : qtc) {
									TableCell cell = new TableCell();
									List<Questionstablesfields> qtcfs = in.getCellFieldsByCoordinates(dbTab.getId(), col.getId(), row.getId());
									LinkedList<Field> fields = new LinkedList<Field>();
									for (Questionstablesfields qtcf : qtcfs) {
										Field field = new Field();
										field.setName(qtcf.getName());
										field.setText_a(qtcf.getTextA());
										field.setText_f(qtcf.getTextF());
										field.setText_e(qtcf.getTextE());
										field.setText_r(qtcf.getTextR());
										field.setText_c(qtcf.getTextC());
										field.setText_s(qtcf.getTextS());
										field.setType(qtcf.getType());
										field.setDefault_value(qtcf.getDefaultValue());
										
										if (qtcf.getControlledList() != null) {
											field.setControlledList(qtcf.getControlledList());
											
										}
										for (Questiontype t : lqt) {
											if (t.getId() == qtcf.getType()) {
												field.setType_name(t.getType());
											}
										}
										
										Surveyanswers answer = in.getSurveyFieldAnswerMultiRow(Integer.parseInt(survey_id), 
												qtcf.getId(), dbTab.getId(), row.getId(), rowCounter);
										
										if (answer != null) {
											field.setValue(answer.getValue());
											field.setHtmlId(buildHtmlID(answer));
										} else {
											field.setHtmlId(null);
										}
										fields.add(field);
									}
									cell.setFields(fields);
									tableCells.add(cell);
								}
								tableRow.setCells(tableCells);
								tableRows.add(tableRow);
							}
						} else {
							TableRow tableRow = new TableRow();
							tableRow.setName(row.getName());
							tableRow.setMulti(row.getMulti());
							LinkedList<TableCell> tableCells = new LinkedList<TableCell>();
							for (Questionstablescolumns col : qtc) {
								TableCell cell = new TableCell();
								List<Questionstablesfields> qtcfs = in.getCellFieldsByCoordinates(dbTab.getId(), col.getId(), row.getId());
								LinkedList<Field> fields = new LinkedList<Field>();
								for (Questionstablesfields qtcf : qtcfs) {
									Field field = new Field();
									field.setName(qtcf.getName());
									field.setText_a(qtcf.getTextA());
									field.setText_f(qtcf.getTextF());
									field.setText_e(qtcf.getTextE());
									field.setText_r(qtcf.getTextR());
									field.setText_c(qtcf.getTextC());
									field.setText_s(qtcf.getTextS());
									field.setType(qtcf.getType());
									field.setDefault_value(qtcf.getDefaultValue());
									if (qtcf.getControlledList() != null) {
										field.setControlledList(qtcf.getControlledList());
									}
									for (Questiontype t : lqt) {
										if (t.getId() == qtcf.getType()) {
											field.setType_name(t.getType());
										}
									}
									if (qtcf.getName() != null) {
										Surveyanswers answer = in.getSurveyFieldAnswerRow(Integer.parseInt(survey_id), 
												qtcf.getId(), dbTab.getId(), row.getId());
										if (answer != null) {
											field.setValue(answer.getValue());
											field.setHtmlId(buildHtmlID(answer));
										} else {
											field.setHtmlId(null);
										}
									}
									fields.add(field);
								}
								cell.setFields(fields);
								tableCells.add(cell);
							}
							tableRow.setCells(tableCells);
							tableRows.add(tableRow);
						}
					}
					
					table.setHeader_e(head_e);
					table.setHeader_f(head_f);
					table.setHeader_s(head_s);
					table.setHeader_a(head_a);
					table.setHeader_r(head_r);
					table.setHeader_z(head_c);
					table.setMatrix(tableRows);

					lt.add(table);
				} else {
					Field field = new Field();
					field.setType(type);
					for (Questiontype t : lqt) {
						if (t.getId() == type) {
							field.setType_name(t.getType());
						}
					}
					field.setName(qf.getName());
					field.setText_a(qf.getTextA());
					field.setText_e(qf.getTextE());
					field.setText_f(qf.getTextF());
					field.setText_c(qf.getTextC());
					field.setText_r(qf.getTextR());
					field.setText_s(qf.getTextS());
					if (qf.getControlledList() != null) {
						field.setControlledList(qf.getControlledList());
					}
					
					Surveyanswers answer = in.getSurveyFieldAnswerTop(Integer.parseInt(survey_id), qf.getId());
	
					if (answer != null) {
						field.setValue(answer.getValue());
						field.setHtmlId(buildHtmlID(answer));
					} else {
						field.setHtmlId(null);
					}
					
					lf.add(field);
				}
			}
			question.setTables(lt);
			question.setFields(lf);
			questions.add(question);
			
		}
		return questions;
	}
	
	public String getEnglishCountryNameByID(String id) {
		Countries country = in.getCountry(id);
		return country.getNameEn();
	}
	
	public HashMap<Integer, List<ControlledEntry>> getControlledLists() {
		HashMap<Integer, List<ControlledEntry>> returnObject = new HashMap<Integer, List<ControlledEntry>>();
		List<Integer> cl_ids = in.getDistinctControlledListIds();
		
		for (int cl_id : cl_ids) {
			List<Controlledlists> list = in.getControlledList(cl_id);
			List<ControlledEntry> entryList = new ArrayList<ControlledEntry>();
			for (Controlledlists ent : list) {
				if (ent.getExternalCl() != null) {
					String table = ent.getExternalCl();
					String key = ent.getExternalClKey();
					String value = ent.getExternalClValue();
					entryList = in.getExternalControlledList(table, value, key);
				} else {
					ControlledEntry entry = new ControlledEntry();
					entry.setKey(ent.getValue());
					entry.setText_a(ent.getTextA());
					entry.setText_f(ent.getTextF());
					entry.setText_s(ent.getTextS());
					entry.setText_e(ent.getTextE());
					entry.setText_r(ent.getTextR());
					entry.setText_c(ent.getTextC());
					
					entryList.add(entry);
				}
			}
			returnObject.put(cl_id, entryList);
			
		}
		
		return returnObject;
	}
	
	public List<QuestionType> getQuestionTypes() {
		List<QuestionType> qts = new ArrayList<QuestionType>();
		List<Questiontype> qtsdb = in.getQuestionTypes();
		for (Questiontype qtdb : qtsdb) {
			QuestionType qt = new QuestionType();
			qt.setId(qtdb.getId());
			qt.setType(qtdb.getType());
			qts.add(qt);
		}
		return qts;
	}
	
	public QuestionnaireHeaders getQuestionnaireHeaders(String id) {
		QuestionnaireHeaders headers = new QuestionnaireHeaders();
		Survey survey = in.getSurveyHeadersById(Integer.parseInt(id));
		headers.setCountry(in.getCountryById(survey.getCountry()));
		headers.setDate(this.getStringDate(survey.getDate()));
		headers.setPreparedBy(survey.getPreparedBy());
		return headers;
	}
	
	public QuestionnaireHeaders getQuestionnaireHeaders() {
		QuestionnaireHeaders headers = new QuestionnaireHeaders();
		headers.setCountry(null);
		headers.setDate(null);
		headers.setPreparedBy(null);
		return headers;
	}
	
	public void persistQuestionnaire(PDFQuestionList questionList) {
		try {
			Survey survey = new Survey();
			survey.setCountry(in.getCountry(questionList.getCountry()).getId());
			survey.setDate(new SimpleDateFormat("yyyy-MM-dd").parse(questionList.getDate()));
			survey.setName(questionList.getNewFileName());
			survey.setPreparedBy(questionList.getPreparedBy());
			survey.setDeleted(0);
			
			Survey exists = in.getSurveyHeadersByCountry(survey.getCountry());
			if (exists != null) {
				this.deleteSurvey(exists.getId());
			}
			
			int lastId = this.persistSurvey(survey);
			this.persistSurveyStatus(lastId);
			this.persistQuestionnaireAnswers(questionList, lastId);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public int persistSurvey(Survey survey) {
		if (survey.getInsertedDate() == null) {
			survey.setInsertedDate(new Date());
		}
		Survey InsertedSurvey = in.insertSurvey(survey);
		return InsertedSurvey.getId();
	}
	
	public void persistSurveyStatus(Integer SurveyId) {
		List<Questions> questions = in.getAllQuestions();
		for(Questions question : questions) {
			Surveystatus status = new Surveystatus();
			status.setQuestionId(question.getId());
			status.setSurveyId(SurveyId);
			in.insertSurveyDefaultStatus(status);
		}
	}
	
	public void persistQuestionnaireAnswers(PDFQuestionList questionList, Integer surveyId) {
		LinkedList<PDFQuestion> answers = questionList.getList();
		
		for (PDFQuestion answer: answers) {
			int questionId = answer.getId();
			if (answer.getSingleQuestion() != null) {
				String field = answer.getSingleQuestion().getName();
				String value = answer.getSingleQuestion().getValue();
				Questionsfields sFld = in.getFormFieldByNameAndQuestion(questionId, field);
				if (sFld != null) {
					Surveyanswers sa = new Surveyanswers();
					sa.setSurveyId(surveyId.intValue());
					sa.setField(field);
					sa.setValue(value);
					sa.setFieldId(sFld.getId());
					in.insertSurveyAnswer(sa);
				} else {
					/*
					 * TODO
					 * Some fields cannot be mapped
					 * Handle the error!!
					 * 
					 */
				}
			}
			
			if (answer.getMultipleQuestion() != null) {
				for (org.fao.fir.cgrfa.pdf.parser.objects.Field sField : answer.getMultipleQuestion()) {
					String field = sField.getName();
					String value = sField.getValue();
					Questionsfields sFld = in.getFormFieldByNameAndQuestion(questionId, field);
					if (sFld != null) {
						Surveyanswers sa = new Surveyanswers();
						sa.setSurveyId(surveyId.intValue());
						sa.setField(field);
						sa.setValue(value);
						sa.setFieldId(sFld.getId());
						in.insertSurveyAnswer(sa);
					} else {
						/*
						 * TODO
						 * Some fields cannot be mapped
						 * Handle the error!!
						 * 
						 */
					}
				}
			}
			
			if (answer.getTable() != null) {
				PDFTable table = answer.getTable();
				
				Questionstables sTbl = in.getTableByName(table.getName());
				
				int multi = 0;
				for (PDFTableRow row : table.getTable()) {
					if (sTbl == null || row == null) {
						/*
						 * TODO
						 * Some row in the parsed table is null
						 * Handle the error!!
						 * 
						 */
					}
					Questionstablesrows sRow = in.getTableRowByNameTableName(sTbl.getName(), row.getName());
					if (sRow == null) {
						/*
						 * TODO
						 * The belonging row cannot be retrieved from the DB
						 * Handle the error!!
						 */
					}
					if (sRow.getMulti() == 1) {
						multi = multi + 1;
					} else {
						multi = 0;
					}
					for (org.fao.fir.cgrfa.pdf.parser.objects.Field sField : row.getRows()) {
						String field = sField.getName();
						String value = sField.getValue();
						Questionstablesfields sFld = null;
						try {
							sFld = in.getCellFieldByTableRowAndName(sTbl.getId(), sRow.getId(), field);
						} catch (TooManyResultsException ex) {
							/*
							 * TODO
							 * Handle too many results. It should never happen but you never know
							 * Handle the error!!
							 * 
							 */
						}
						if (sFld != null) {
							Surveyanswers sa = new Surveyanswers();
							sa.setSurveyId(surveyId.intValue());
							sa.setField(field);
							sa.setValue(value);
							sa.setFieldId(sFld.getId());
							sa.setTableId(sTbl.getId());
							sa.setTableRowId(sRow.getId());
							if (multi > 0) {
								sa.setTableRowMultiSort(multi);
							} else {
								sa.setTableRowMultiSort(null);
							}
							in.insertSurveyAnswer(sa);
						} else {
							/*
							 * TODO
							 * Some fields cannot be mapped
							 * Handle the error!!
							 * 
							 */
						}
					}
				}
			}
		}
	}
	
	public void persistListOfAnswers(List<Surveyanswers> list) {
		for (Surveyanswers single : list) {
			in.insertSurveyAnswer(single);
		}
	}
	
	public void persistStatus(int survey_id, List<Status> listOfStatus) {
		for (Status status : listOfStatus) {
			Surveystatus originalStatus = in.getQuestionStatus(survey_id, status.getId());
			if (originalStatus.getStatus() != status.getStatus()) {
				originalStatus.setStatus(status.getStatus());
         	   	in.updateQuestionStatus(originalStatus);
			}
		}
	}
	
	public void updateSurveyDate(int survey_id) {
		Survey survey = in.getSurveyHeadersById(survey_id);
		survey.setModifiedDate(new Date());
		in.updateSurveyByPrimaryKeySelective(survey);
	}
	
	public void deleteSurvey(int survey_id) {
		in.deleteSurvey(survey_id);
	}
	
	public void persistAnswers(int survey_id, List<Answer> listOfAnswer) {
		
		List<Surveyanswers> storedAnswers = in.getSurveyAnswersBySurveyId(survey_id);
		
		LinkedList<List<AnswerInRow>> newRows = new LinkedList<List<AnswerInRow>>();
		for (Answer answer : listOfAnswer) {
			if (!answer.getId().startsWith("NEWROW")) {
				int id = Integer.parseInt(this.getAnswerMeta(answer, "id"));
				for (Surveyanswers storedAnswer : storedAnswers) {
					if (id == storedAnswer.getId()) {
						if (answer.getValue() == null) {
							if (storedAnswer.getValue() != null) {
								storedAnswer.setValue(null);
								in.updateSurveyAnswerByPrimaryKeySelective(storedAnswer);
							}
						}
						else if (!answer.getValue().equalsIgnoreCase(storedAnswer.getValue())) {
							storedAnswer.setValue(answer.getValue());
							in.updateSurveyAnswerByPrimaryKeySelective(storedAnswer);
							
						}
						break;
					}
				}
			} else { //If we are handling a new row we calculate the position in the database and later we bulk store them
				String[] sStr = answer.getId().split("!");
				Pattern p = Pattern.compile("\\[(.*?)\\]");
				Matcher m = p.matcher(sStr[0]);

				int newRowIndex = -1;
				while(m.find()) {
				    newRowIndex = Integer.parseInt(m.group(1));
				}
				
				AnswerInRow answerInRow = new AnswerInRow();
				answerInRow.setId(answer.getId());
				answerInRow.setValue(answer.getValue());
				
				int id = Integer.parseInt(this.getAnswerMeta(answer, "id"));
				int tblid = Integer.parseInt(this.getAnswerMeta(answer, "tblid"));
				int rowId = Integer.parseInt(this.getAnswerMeta(answer, "rowid"));
				
				int tableMaxIndex = in.getMaxRowForTable(survey_id, id, tblid, rowId);
				if (tableMaxIndex < 1) {
					answerInRow.setMultiRowIndex(newRowIndex + 1);
				} else {
					answerInRow.setMultiRowIndex(tableMaxIndex + (newRowIndex + 1));
				}
				
				try {
					newRows.get(newRowIndex).add(answerInRow);
				} catch (IndexOutOfBoundsException ex) {
					List<AnswerInRow> loa = new ArrayList<AnswerInRow>();
					newRows.add(loa);
					newRows.get(newRowIndex).add(answerInRow);
				}
			}
		}
		
		//Bulk loading new rows (if any)
		for (List<AnswerInRow> listAnswersInRows : newRows) {
			for (AnswerInRow answerInRow : listAnswersInRows) {
				Answer tmpAnswer = new Answer();
				tmpAnswer.setId(answerInRow.getId());
				tmpAnswer.setValue(answerInRow.getValue());
				int id = Integer.parseInt(this.getAnswerMeta(tmpAnswer, "id"));
				
				Surveyanswers storedAnswer = in.getSurveyAnswerById(id);
				
				storedAnswer.setId(null);
				storedAnswer.setValue(answerInRow.getValue());
				storedAnswer.setTableRowMultiSort(answerInRow.getMultiRowIndex());
				
				in.insertSurveyAnswer(storedAnswer);
			}
		}
		
		//Handling deletes...
		List<Integer> listOfDeletedIds = new ArrayList<Integer>();
		for (Surveyanswers storedAnswer : storedAnswers) {
			boolean found = false;
			for (Answer answer : listOfAnswer) {
				int id = Integer.parseInt(this.getAnswerMeta(answer, "id"));
				if (id == storedAnswer.getId()) {
					found = true;
					break;
				}
			}
			if (!found) {
				listOfDeletedIds.add(storedAnswer.getId());
			}
		}
		
		for (Integer id : listOfDeletedIds) {
			Surveyanswers storedAnswer = in.getSurveyAnswerById(id);
			storedAnswer.setDeleted(1);
			
			List<Surveyanswers> listOfNextFieldsinRows = in.getAnswersNextRowsByField(storedAnswer.getSurveyId(), 
					storedAnswer.getTableId(), storedAnswer.getFieldId(), storedAnswer.getTableRowId(), storedAnswer.getTableRowMultiSort());
			
			for (Surveyanswers nextField : listOfNextFieldsinRows) {
				nextField.setTableRowMultiSort(nextField.getTableRowMultiSort() - 1);
				in.updateSurveyAnswerByPrimaryKeySelective(nextField);
			}
			
			in.updateSurveyAnswerByPrimaryKeySelective(storedAnswer);
		}
	}
	
	public AnswersList prepareAnswers(String json) throws JsonProcessingException, IOException, ParseException {
		if (json == null) {
			return null;
		}
		AnswersList answersList = new AnswersList();
		
		ObjectMapper mapper = new ObjectMapper();
		JsonNode node = mapper.readTree(json);
		int survey_id = node.get("survey").asInt();
		answersList.setSurvey_id(survey_id);
		
		Iterator<String> fieldNames = node.getFieldNames();
		while(fieldNames.hasNext()){
			String fieldName = fieldNames.next();
			if (fieldName.equalsIgnoreCase("headers")) {
				Headers headers = new Headers();
				Iterator<String> fieldHeaderNames = node.get(fieldName).getFieldNames();
				while(fieldHeaderNames.hasNext()){
					String fName = fieldHeaderNames.next();
					if (fName.equalsIgnoreCase("country")) {
						Country country = new Country();
						Iterator<String> fieldCountryNames = node.get(fieldName).get(fName).getFieldNames();
						while (fieldCountryNames.hasNext()) {
							String fcName = fieldCountryNames.next();
							if (fcName.equalsIgnoreCase("id")) {
								JsonNode id = node.get(fieldName).get(fName).get(fcName);
								country.setId(id.asInt());
							}
							else if (fcName.equalsIgnoreCase("iso2")) {
								JsonNode iso2 = node.get(fieldName).get(fName).get(fcName);
								country.setIso2(iso2.asText());
							}
							else if (fcName.equalsIgnoreCase("iso3")) {
								JsonNode iso3 = node.get(fieldName).get(fName).get(fcName);
								country.setIso3(iso3.asText());
							}
							else if (fcName.equalsIgnoreCase("nameAr")) {
								JsonNode nameAr = node.get(fieldName).get(fName).get(fcName);
								country.setNameAr(nameAr.asText());
							}
							else if (fcName.equalsIgnoreCase("nameEn")) {
								JsonNode nameEn = node.get(fieldName).get(fName).get(fcName);
								country.setNameEn(nameEn.asText());
							}
							else if (fcName.equalsIgnoreCase("nameEs")) {
								JsonNode nameEs = node.get(fieldName).get(fName).get(fcName);
								country.setNameEs(nameEs.asText());
							}
							else if (fcName.equalsIgnoreCase("nameFr")) {
								JsonNode nameFr = node.get(fieldName).get(fName).get(fcName);
								country.setNameFr(nameFr.asText());
							}
							else if (fcName.equalsIgnoreCase("nameRu")) {
								JsonNode nameRu = node.get(fieldName).get(fName).get(fcName);
								country.setNameRu(nameRu.asText());
							}
							else if (fcName.equalsIgnoreCase("nameZh")) {
								JsonNode nameZh = node.get(fieldName).get(fName).get(fcName);
								country.setNameZh(nameZh.asText());
							}
						}
						headers.setCountry(country);
					} else if (fName.equalsIgnoreCase("date")) {
						JsonNode jsonNode = node.get(fieldName).get(fName);
						DateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
						Date date = formatter.parse(jsonNode.asText());
						headers.setDate(date);
					} else if (fName.equalsIgnoreCase("preparedBy")) {
						JsonNode jsonNode = node.get(fieldName).get(fName);
						headers.setPreparedBy(jsonNode.asText());
					}
				}
				answersList.setHeaders(headers);
			}
			else if (fieldName.equalsIgnoreCase("answers")) {
				Iterator<String> fieldAnswersNames = node.get(fieldName).getFieldNames();
				List<Answer> ansList = new ArrayList<Answer>();
				while(fieldAnswersNames.hasNext()) {
					String fieldAnswerName = fieldAnswersNames.next();
					Answer answer = new Answer();
					answer = this.getAnswer(node.get(fieldName), fieldAnswerName, ansList);
					if (answer != null && answer.getId() != null) {
						ansList.add(answer);
					}
				}
				answersList.setAnswers(ansList);
			}
			else if (fieldName.equalsIgnoreCase("status")) {
				Iterator<String> fieldStatusNames = node.get(fieldName).getFieldNames();
				List<Status> statusList = new ArrayList<Status>();
				while(fieldStatusNames.hasNext()){
					String fieldStatusName = fieldStatusNames.next();
					JsonNode fieldStatusValue = node.get(fieldName).get(fieldStatusName);
					int value = 0;
		            if (fieldStatusValue.isObject()) {
		            	Status status = new Status();
		            	value = fieldStatusValue.get("status").asInt();
		            	status.setId(Integer.parseInt(fieldStatusName));
		            	status.setStatus(value);
		            	statusList.add(status);
		            }
				}
				answersList.setStatus(statusList);
            }
		}
		
		
		return answersList;
	}
	
	private Answer getAnswer(JsonNode node, String fieldName, List<Answer> answersList) {
		if (fieldName == null || fieldName.equalsIgnoreCase("null")) {
			return null;
		}
		Answer answer = new Answer();
		
		String[] splittedValues = fieldName.split("!");
		String newId = "";
		boolean hasCounter = false;
		for (int i = 0; i< splittedValues.length; i++) {
			if (splittedValues[i].startsWith("[counter")) {
				hasCounter = true;
			} else {
				newId = newId + splittedValues[i] + "!";
			}
		}
		newId = newId.substring(0, newId.length()-1);
		
		if (!hasCounter) {
			answer.setId(fieldName);
			if (node.get(fieldName).asText().equalsIgnoreCase("0")) {
				answer.setValue("0");
			} else {
				if (node.get(fieldName).getElements().hasNext()) {
					String newValue = "";
					Iterator<JsonNode> subArrayNode = node.get(fieldName).getElements();
					while (subArrayNode.hasNext()) {
						JsonNode subNode = subArrayNode.next();
						newValue = newValue + subNode.get("id").asText() + ",";
					}
					if (!newValue.equalsIgnoreCase("")) {
						answer.setValue(newValue.substring(0, newValue.length()-1));
					} else {
						answer.setValue(null);
					}
				} else {
					answer.setValue(node.get(fieldName).asText());
				}
			}
		} else {
			boolean hasObj = true;
			int counter = 0;
			String newVal = "";
			while (hasObj) {
				JsonNode tNode = node.get(newId + "![counter==" + Integer.toString(counter) + "]");
				if (tNode == null) {
					hasObj = false;
				} else {
					if (tNode.asBoolean()) {
						newVal = newVal + tNode.asText() + ",";
					}
				}
				counter = counter + 1;
			}
			answer.setId(newId);
			if (newVal.equalsIgnoreCase("")) {
				answer.setValue(null);
			} else {
				answer.setValue(newVal.substring(0, newVal.length()-1));
			}
			answer = this.checkForDuplicateAnswers(answer, answersList);
		}
		if (answer != null && answer.getValue() != null && answer.getValue().equalsIgnoreCase("null")) {
			answer.setValue(null);
		}
		
		return answer;
	}
	
	private Answer checkForDuplicateAnswers(Answer answer, List<Answer> answersList) {
		if (answersList != null) {
			for (Answer a : answersList) {
				if (a.getId().equalsIgnoreCase(answer.getId())) {
					return null;
				}
			}
		}
		return answer;
	}
	
	public Survey getSurveyFromJsonHeaders(String data) throws Exception {
		ObjectMapper mapper = new ObjectMapper();
		JsonNode node = mapper.readTree(data).get("headers");
		Iterator<String> fieldNames = node.getFieldNames();
		Survey survey = new Survey();
		while(fieldNames.hasNext()) {
			String fieldName = fieldNames.next();
			if (fieldName.equalsIgnoreCase("country")) {
				Countries country = in.getCountry(node.get(fieldName).asText());
				if (country == null) {
					throw new Exception("Country not found {" + node.get(fieldName).asText() + "}!!");
				}
				survey.setCountry(country.getId());
			} else if (fieldName.equalsIgnoreCase("preparedBy")) {
				survey.setPreparedBy(node.get(fieldName).asText());
			} else if (fieldName.equalsIgnoreCase("date")) {
				DateFormat format = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
		    	Date date = format.parse(node.get(fieldName).asText());
				survey.setDate(date);
			}
		}
		return survey;
	}
	
	public List<Surveyanswers> getNewSurveyListOfAnswers(String data, int survey_id) throws JsonProcessingException, IOException {
		
		HashMap<String, String> collapsedObject = this.collapseCheckBoxes(data);
		
		List<Surveyanswers> listOfAnswers = new ArrayList<Surveyanswers>();
		for (String fieldName : collapsedObject.keySet()) {
			String value = collapsedObject.get(fieldName);
			Surveyanswers answer = new Surveyanswers();
			answer.setSurveyId(survey_id);
			if (value == null || value.equalsIgnoreCase("null") || value.equals("")) {
				answer.setValue(null);
			} else {
				answer.setValue(value);
			}
			if (!fieldName.startsWith("NEWROW[")) {
				
				Pattern p = Pattern.compile("\\[(.*?)\\]");
				Matcher m = p.matcher(fieldName);
				while (m.find()) {
					String val = m.group(1);
					if (val.startsWith("id")) {
						String[] a = val.split("==");
						answer.setFieldId(Integer.parseInt(a[1]));
					}
					else if (val.startsWith("table")) {
						String[] a = val.split("==");
						answer.setTableId(Integer.parseInt(a[1]));
					}
					else if (val.startsWith("row")) {
						String[] a = val.split("==");
						answer.setTableRowId(Integer.parseInt(a[1]));
					}
					else if (val.startsWith("fieldname")) {
						String[] a = val.split("==");
						if (a[1].equalsIgnoreCase("null")) {
							answer.setField(null);
						} else {
							answer.setField(a[1]);
						}
					}
					else if (val.startsWith("multisort")) {
						String[] a = val.split("==");
						int multisort = Integer.parseInt(a[1]);
						if (multisort == 1) {
							answer.setTableRowMultiSort(1);
						}
					}
				}
				answer.setDeleted(0);
				if (answer.getField() == null && answer.getValue() == null) {}
				else { listOfAnswers.add(answer); }
			} else {
				String[] split = fieldName.split("!");
				String newFieldName = "";
				for (int i = 1; i < split.length; i++) {
					newFieldName = newFieldName + split[i] + "!";
				}
				int delta = 0;
				Pattern p = Pattern.compile("\\[(.*?)\\]");
				Matcher m = p.matcher(split[0]);
				while (m.find()) {
					delta = Integer.parseInt(m.group(1));
				}
				m = p.matcher(newFieldName);
				while (m.find()) {
					String val = m.group(1);
					if (val.startsWith("id")) {
						String[] a = val.split("==");
						answer.setFieldId(Integer.parseInt(a[1]));
					} else if (val.startsWith("table")) {
						String[] a = val.split("==");
						answer.setTableId(Integer.parseInt(a[1]));
					} else if (val.startsWith("row")) {
						String[] a = val.split("==");
						answer.setTableRowId(Integer.parseInt(a[1]));
					} else if (val.startsWith("fieldname")) {
						String[] a = val.split("==");
						if (a[1].equalsIgnoreCase("null")) {
							answer.setField(null);
						} else {
							answer.setField(a[1]);
						}
					} else if (val.startsWith("multisort")) {
						String[] a = val.split("==");
						int multisort = Integer.parseInt(a[1]);
						if (multisort == 1) {
							answer.setTableRowMultiSort(1 + (delta + 1));
						}
					}
				}
				answer.setDeleted(0);
				if (answer.getField() == null && answer.getValue() == null) {}
				else { listOfAnswers.add(answer); }
			}
		}
		
		return listOfAnswers;
	}
	
	private HashMap<String, String> collapseCheckBoxes(String data) throws JsonProcessingException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		JsonNode node = mapper.readTree(data).get("answers");
		Iterator<String> fieldNames = node.getFieldNames();
		
		HashMap<String, String> result = new HashMap<String, String>();
		List<String> viewed = new ArrayList<String>();
		
		Pattern p = Pattern.compile("\\[(.*?)\\]");
		while(fieldNames.hasNext()) {
			String fieldName = fieldNames.next();
			String value = node.get(fieldName).asText();
			if (node.get(fieldName).isContainerNode()) {
				value = "";
				Iterator<JsonNode> innerFields = node.get(fieldName).getElements();
				while (innerFields.hasNext()) {
					JsonNode innerField = innerFields.next();
					value = value + innerField.get("id").asText() + ",";
				}
				if (!value.equals("")) {
					value = value.substring(0,value.length()-1);
				}
			}
			Matcher m = p.matcher(fieldName);
			boolean hasCounter = false;
			while (m.find()) {
				String val = m.group(1);
				if (val.startsWith("counter")) {
					hasCounter = true;
					if (!viewed.contains(fieldName)) {
						viewed.add(fieldName);
						String[] splitFieldName = fieldName.split("!");
						String originalFieldName = "";
						for (int i = 0; i < splitFieldName.length - 1; i++) {
							originalFieldName = originalFieldName + splitFieldName[i] + "!";
						}
						originalFieldName = originalFieldName.substring(0,originalFieldName.length()-1);
						if (result.containsKey(originalFieldName)) {
							if (!value.equals("0")) {
								if (result.get(originalFieldName) == null) {
									result.put(originalFieldName, value);
								} else {
									result.put(originalFieldName, result.get(originalFieldName) + "," + value);
								}
							}
						} else {
							if (!value.equals("0")) {
								result.put(originalFieldName, value);
							} else {
								result.put(originalFieldName, null);
							}
						}
					}
				}
			}
			if (!hasCounter) {
				result.put(fieldName, value);
			}
		}
		return result;
	}
	
	public String getStatusReport() throws IOException, COSVisitorException {
		File temp = File.createTempFile("cgrfa_report", ".pdf");
		ClassLoader classLoader = getClass().getClassLoader();
		
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Date date = new Date();
        String today = dateFormat.format(date);
        
        List<Survey> insertedSurvey = in.getAllSurvey();
        int uploaded = insertedSurvey.size();
        int overallApproved = 0;
        for (Survey survey : insertedSurvey) {
        	int rejected = in.getStatusCountBySurvey(survey.getId(), 0);
        	int underRevision = in.getStatusCountBySurvey(survey.getId(), 1);
        	int approved = in.getStatusCountBySurvey(survey.getId(), 2);
        	if (underRevision < 5 && rejected == 0 && approved > 40) {
        		overallApproved = overallApproved + 1;
        	}
        }
        
        List<Survey> insertedDelta = in.getSurveyInsertedByDelta(10);
        List<Survey> updatedDelta = in.getSurveyModifiedByDelta(10);
        
        PDDocument document = new PDDocument();
        PDPage page1 = new PDPage(PDPage.PAGE_SIZE_A4);
        PDRectangle rect = page1.getMediaBox();
        document.addPage(page1);

        // Create a new font object selecting one of the PDF base fonts
        PDFont fontPlain = PDType1Font.HELVETICA;
        PDFont fontBold = PDType1Font.HELVETICA_BOLD;

        int line = 1;

        PDPageContentStream cos = new PDPageContentStream(document, page1);
        	
        BufferedImage awtImage = ImageIO.read(new File(classLoader.getResource("images/fao-banner.png").getFile()));
        PDXObjectImage ximage = new PDPixelMap(document, awtImage);
        float scale = 0.7f; // alter this value to set the image size
        cos.drawXObject(ximage, 40, 750, ximage.getWidth()*scale, ximage.getHeight()*scale);
            
        cos.beginText();
        cos.setFont(fontPlain, 8);
        cos.moveTextPositionByAmount(410, rect.getHeight() - 50*(++line)-20);
        cos.drawString("Date of report: " + today);
        cos.endText();
        line++;
        cos.beginText();
        cos.setFont(fontPlain, 12);
        cos.moveTextPositionByAmount(70, rect.getHeight() - 50*(++line));
        cos.drawString("Country Reports Uploaded: " + Integer.toString(uploaded));
        cos.endText();
        cos.beginText();
        cos.setFont(fontPlain, 12);
        cos.moveTextPositionByAmount(70, rect.getHeight() - 50*(++line)+30);
        cos.drawString("Country Reports Accepted: " + Integer.toString(overallApproved));
        cos.endText();
            
        cos.setStrokingColor(0, 0, 0);  
        cos.drawLine(40, 610, 550, 610);  
            
        cos.beginText();
        cos.setFont(fontBold, 12);
        cos.moveTextPositionByAmount(70, rect.getHeight() - 50*(++line)+30);
        cos.drawString("Activity Overview");
        cos.endText();
            
        cos.beginText();
        cos.setFont(fontPlain, 10);
        cos.moveTextPositionByAmount(70, rect.getHeight() - 50*(++line)+50);
        cos.drawString("Country reports received in the past 10 days: " + Integer.toString(insertedDelta.size()));
        cos.endText();
            
        cos.beginText();
        cos.setFont(fontPlain, 10);
        cos.moveTextPositionByAmount(70, rect.getHeight() - 50*(++line)+85);
        cos.drawString("Country reports changed in the past 10 days: " + Integer.toString(updatedDelta.size()));
        cos.endText();

        cos.close();
		document.save(temp.getAbsolutePath());
		document.close();

        return temp.getAbsolutePath();
	}
	
	public PDFQuestionList parsePDF(String pdfFile) {
		
		PDFQuestionList PDFQuestionnaire = new PDFQuestionList();
		
		List<Questions> dbQuestions = in.getAllQuestions(); 
		try {
			XFA_Parser parser = new XFA_Parser(pdfFile);
			parser.parse();
			
			//Subform tree = parser.getTree();
			
			LinkedList<PDFQuestion> list = new LinkedList<PDFQuestion>();
			
			org.fao.fir.cgrfa.pdf.parser.objects.Field country = parser.getFieldByXPath("/Page3/txt_country");
			org.fao.fir.cgrfa.pdf.parser.objects.Field date = parser.getFieldByXPath("/Page3/txt_date");
			org.fao.fir.cgrfa.pdf.parser.objects.Field preparedBy = parser.getFieldByXPath("/Page3/txt_preparedBy");
			PDFQuestionnaire.setCountry(country.getValue());
			PDFQuestionnaire.setDate(date.getValue());
			PDFQuestionnaire.setPreparedBy(preparedBy.getValue());
			
			list.add(new PDFQuestion(parser.getFieldByXPath("/Page5/executiveSummary"), null, null, dbQuestions.get(0).getId()));
			list.add(new PDFQuestion(parser.getFieldByXPath("/Page5/introduction"), null, null, dbQuestions.get(1).getId()));
			
			//QUESTION 1
			list.add(new PDFQuestion(parser.getFieldByXPath("/Page5/q1_subform/q1_radioList"), null, null, dbQuestions.get(2).getId()));
			//QUESTION 2
			list.add(new PDFQuestion(parser.getFieldByXPath("/Page6/q2_subform/q2_radioList"), null, null, dbQuestions.get(3).getId()));
			
			//QUESTION 3
			List<org.fao.fir.cgrfa.pdf.parser.objects.Field> Question3 = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
			Question3.add(parser.getFieldByXPath("/Page6/q3_subform/q3_radioList"));
			Question3.add(parser.getFieldByXPath("/Page6/q3_txtinfo"));
			list.add(new PDFQuestion(null, Question3, null, dbQuestions.get(4).getId()));
			
			//QUESTION 4
			List<org.fao.fir.cgrfa.pdf.parser.objects.Field> Question4 = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
			Question4.add(parser.getFieldByXPath("/Page6/q4_subform/q4a_radioList"));
			Question4.add(parser.getFieldByXPath("/Page6/q4_subform/q4b_radioList"));
			Question4.add(parser.getFieldByXPath("/Page6/q4_subform/q4_txtinfo"));
			list.add(new PDFQuestion(null, Question4, null, dbQuestions.get(5).getId()));
			
			//QUESTION 5
			List<org.fao.fir.cgrfa.pdf.parser.objects.Field> Question5 = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
			Question5.add(parser.getFieldByXPath("/Page7/q5_sf/q5_radioList"));
			Question5.add(parser.getFieldByXPath("/Page7/q5_sf/q5_txtinfo"));
			list.add(new PDFQuestion(null, Question5, null, dbQuestions.get(6).getId()));
			
			//QUESTION 6
			List<org.fao.fir.cgrfa.pdf.parser.objects.Field> Question6 = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
			Question6.add(parser.getFieldByXPath("/Page7/q6_sf/q6_txtperc1"));
			Question6.add(parser.getFieldByXPath("/Page7/q6_sf/q6_txtperc2"));
			Question6.add(parser.getFieldByXPath("/Page7/q6_sf/q6_txtperc3"));
			Question6.add(parser.getFieldByXPath("/Page7/q6_sf/q6_txtinfo"));
			list.add(new PDFQuestion(null, Question6, null, dbQuestions.get(7).getId()));
			
			//QUESTION 7
			list.add(new PDFQuestion(parser.getFieldByXPath("/Page7/q7_sf/q7_radioList"), null, null, dbQuestions.get(8).getId()));
			
			//QUESTION 8
			LinkedList<PDFTableRow> Question8 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page8/q8Table/Item"); i++) {
				
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page8/q8Table/Item[" + Integer.toString(i) + "]/q8_01/SpeciesAutosuggestionSubform/ListBoxSubform/q8_species"));
				item.add(Worker.getFieldFromParser(parser, "/Page8/q8Table/Item[" + Integer.toString(i) + "]/q8TableAnswers/Row1/q8_chk1"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page8/q8Table/Item[" + Integer.toString(i) + "]/q8TableAnswers/Row1/q8_sf1"), "q8_sf1"));
				item.add(Worker.getFieldFromParser(parser, "/Page8/q8Table/Item[" + Integer.toString(i) + "]/q8TableAnswers/Row2/q8_chk2"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page8/q8Table/Item[" + Integer.toString(i) + "]/q8TableAnswers/Row2/q8_sf2"), "q8_sf2"));
				item.add(Worker.getFieldFromParser(parser, "/Page8/q8Table/Item[" + Integer.toString(i) + "]/q8TableAnswers/Row3/q8_chk3"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page8/q8Table/Item[" + Integer.toString(i) + "]/q8TableAnswers/Row3/q8_sf3"), "q8_sf3"));
				item.add(Worker.getFieldFromParser(parser, "/Page8/q8Table/Item[" + Integer.toString(i) + "]/q8TableAnswers/Row4/q8_chk4"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page8/q8Table/Item[" + Integer.toString(i) + "]/q8TableAnswers/Row4/q8_sf4"), "q8_sf4"));
				item.add(Worker.getFieldFromParser(parser, "/Page8/q8Table/Item[" + Integer.toString(i) + "]/q8TableAnswers/Row5/q8_chk5"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page8/q8Table/Item[" + Integer.toString(i) + "]/q8TableAnswers/Row5/q8_sf5"), "q8_sf5"));
				Question8.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question8, "q8Table"), dbQuestions.get(9).getId()));
			
			//QUESTION 9
			LinkedList<PDFTableRow> Question9 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page9/q9Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page9/q9Table/Item[" + Integer.toString(i) + "]/q9TableFarmedSpecies/Row1/q9_native_introduced/q9_radio_native_introduced"));
				item.add(Worker.getFieldFromParser(parser, "/Page9/q9Table/Item[" + Integer.toString(i) + "]/q9TableFarmedSpecies/Row2/SpeciesAutosuggestionSubform/ListBoxSubform/q9_species"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page9/q9Table/Item[" + Integer.toString(i) + "]/q9_chk2"), "q9_chk2"));
				item.add(Worker.getFieldFromParser(parser, "/Page9/q9Table/Item[" + Integer.toString(i) + "]/q9_chk3/q9_radio3"));
				item.add(Worker.getFieldFromParser(parser, "/Page9/q9Table/Item[" + Integer.toString(i) + "]/q9_chk4/q9_radio4"));
				item.add(Worker.getFieldFromParser(parser, "/Page9/q9Table/Item[" + Integer.toString(i) + "]/q9_chk5/q9_radio5"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page9/q9Table/Item[" + Integer.toString(i) + "]/q9_chk6"), "q9_chk6"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page9/q9Table/Item[" + Integer.toString(i) + "]/q9_chk7"), "q9_chk7"));
				item.add(Worker.getFieldFromParser(parser, "/Page9/q9Table/Item[" + Integer.toString(i) + "]/q9_txtComments"));
				Question9.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question9, "q9Table"), dbQuestions.get(10).getId()));
			
			//QUESTION 10
			LinkedList<PDFTableRow> Question10 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page11/q10Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page11/q10Table/Item[" + Integer.toString(i) + "]/q10_01/SpeciesAutosuggestionSubform/ListBoxSubform/q10_species"));
				item.add(Worker.getFieldFromParser(parser, "/Page11/q10Table/Item[" + Integer.toString(i) + "]/q10_02/q10_radio2"));
				item.add(Worker.getFieldFromParser(parser, "/Page11/q10Table/Item[" + Integer.toString(i) + "]/q10_comments"));
				Question10.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question10, "q10Table"), dbQuestions.get(11).getId()));
			
			//QUESTION 11
			LinkedList<PDFTableRow> Question11 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page12/q11Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page12/q11Table/Item[" + Integer.toString(i) + "]/q11_01/SpeciesAutosuggestionSubform/ListBoxSubform/q11_species"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page12/q11Table/Item[" + Integer.toString(i) + "]/q11_02"), "q11_02"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page12/q11Table/Item[" + Integer.toString(i) + "]/q11_03"), "q11_03"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page12/q11Table/Item[" + Integer.toString(i) + "]/q11_04"), "q11_04"));
				item.add(Worker.getFieldFromParser(parser, "/Page12/q11Table/Item[" + Integer.toString(i) + "]/q11_05"));
				item.add(Worker.getFieldFromParser(parser, "/Page12/q11Table/Item[" + Integer.toString(i) + "]/q11_comments"));
				Question11.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question11, "q11Table"), dbQuestions.get(12).getId()));
			
			//QUESTION 12
			LinkedList<PDFTableRow> Question12 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page13/q12Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page13/q12Table/Item[" + Integer.toString(i) + "]/q12_01/SpeciesAutosuggestionSubform/ListBoxSubform/q12_species"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page13/q12Table/Item[" + Integer.toString(i) + "]/q12_02"), "q12_02"));
				item.add(Worker.getFieldFromParser(parser, "/Page13/q12Table/Item[" + Integer.toString(i) + "]/q12_comments"));
				Question12.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question12, "q12Table"), dbQuestions.get(13).getId()));
			
			//QUESTION 13
			LinkedList<PDFTableRow> Question13 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page14/q13Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page14/q13Table/Item[" + Integer.toString(i) + "]/q13_01/SpeciesAutosuggestionSubform/ListBoxSubform/q13_species"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page14/q13Table/Item[" + Integer.toString(i) + "]/q13_02"), "q13_02"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page14/q13Table/Item[" + Integer.toString(i) + "]/q13_03"), "q13_03"));
				item.add(Worker.getFieldFromParser(parser, "/Page14/q13Table/Item[" + Integer.toString(i) + "]/q13_04"));
				item.add(Worker.getFieldFromParser(parser, "/Page14/q13Table/Item[" + Integer.toString(i) + "]/q13_comments"));
				Question13.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question13, "q13Table"), dbQuestions.get(14).getId()));
			
			//QUESTION 14
			LinkedList<PDFTableRow> Question14 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page15/q14Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page15/q14Table/Item[" + Integer.toString(i) + "]/q14_01/SpeciesAutosuggestionSubform/ListBoxSubform/q14_species"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page15/q14Table/Item[" + Integer.toString(i) + "]/q14_02"), "q14_02"));
				item.add(Worker.getFieldFromParser(parser, "/Page15/q14Table/Item[" + Integer.toString(i) + "]/q14_03/q14_radio3"));
				item.add(Worker.getFieldFromParser(parser, "/Page15/q14Table/Item[" + Integer.toString(i) + "]/q14_04/q14_radio4"));
				item.add(Worker.getFieldFromParser(parser, "/Page15/q14Table/Item[" + Integer.toString(i) + "]/q14_05/q14_radio5"));
				item.add(Worker.getFieldFromParser(parser, "/Page15/q14Table/Item[" + Integer.toString(i) + "]/q14_06/q14_radio6"));
				item.add(Worker.getFieldFromParser(parser, "/Page15/q14Table/Item[" + Integer.toString(i) + "]/q14_07/q14_radio7"));
				item.add(Worker.getFieldFromParser(parser, "/Page15/q14Table/Item[" + Integer.toString(i) + "]/q14_08/q14_radio8"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page15/q14Table/Item[" + Integer.toString(i) + "]/q14_09"), "q14_09"));
				item.add(Worker.getFieldFromParser(parser, "/Page15/q14Table/Item[" + Integer.toString(i) + "]/q14_09/q14_09_custom_sf/q14_09_custom"));
				item.add(Worker.getFieldFromParser(parser, "/Page15/q14Table/Item[" + Integer.toString(i) + "]/q14_10/q14_radio10"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page15/q14Table/Item[" + Integer.toString(i) + "]/q14_11"), "q14_11"));
				Question14.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question14, "q14Table"), dbQuestions.get(15).getId()));
			
			//QUESTION 15
			LinkedList<PDFTableRow> Question15 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= 6; i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page17/q15Table/Row" + Integer.toString(i) + "/q15_02/q15_02_radio"));
				item.add(Worker.getFieldFromParser(parser, "/Page17/q15Table/Row" + Integer.toString(i) + "/q15_comment"));
				Question15.add(new PDFTableRow(item, "Row" + Integer.toString(i)));
			}
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page17/q15Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page17/q15Table/Item[" + Integer.toString(i) + "]/tbl_q15_other/Row3/txt_q15_other"));
				item.add(Worker.getFieldFromParser(parser, "/Page17/q15Table/Item[" + Integer.toString(i) + "]/q15_02/q15_02_radio"));
				item.add(Worker.getFieldFromParser(parser, "/Page17/q15Table/Item[" + Integer.toString(i) + "]/q15_comment"));
				Question15.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question15, "q15Table"), dbQuestions.get(16).getId()));
			
			//QUESTION 16
			LinkedList<PDFTableRow> Question16 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= 6; i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page18/q16Table/Row" + Integer.toString(i) + "/q16_02/q16_02_radio"));
				item.add(Worker.getFieldFromParser(parser, "/Page18/q16Table/Row" + Integer.toString(i) + "/q16_comment"));
				Question16.add(new PDFTableRow(item, "Row" + Integer.toString(i)));
			}
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page18/q16Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page18/q16Table/Item[" + Integer.toString(i) + "]/tbl_q16_other/Row3/txt_q16_other"));
				item.add(Worker.getFieldFromParser(parser, "/Page18/q16Table/Item[" + Integer.toString(i) + "]/q16_02/q16_02_radio"));
				item.add(Worker.getFieldFromParser(parser, "/Page18/q16Table/Item[" + Integer.toString(i) + "]/q16_comment"));
				Question16.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question16, "q16Table"), dbQuestions.get(17).getId()));
			
			//QUESTION 17
			list.add(new PDFQuestion(parser.getFieldByXPath("/Page19/q17_txt/q17_txtInfo"), null, null, dbQuestions.get(18).getId()));
			
			//QUESTION 18
			LinkedList<PDFTableRow> Question18 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= 6; i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page20/q18Table/Row" + Integer.toString(i) + "/q18_sf1/q18_radio1"));
				item.add(Worker.getFieldFromParser(parser, "/Page20/q18Table/Row" + Integer.toString(i) + "/q18_comments"));
				Question18.add(new PDFTableRow(item, "Row" + Integer.toString(i)));
			}
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page20/q18Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page20/q18Table/Item[" + Integer.toString(i) + "]/Table13/Row3/q18_01_other"));
				item.add(Worker.getFieldFromParser(parser, "/Page20/q18Table/Item[" + Integer.toString(i) + "]/q18_sfOther/q18_radioOther"));
				item.add(Worker.getFieldFromParser(parser, "/Page20/q18Table/Item[" + Integer.toString(i) + "]/q18_commentsOther"));
				Question18.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question18, "q18Table"), dbQuestions.get(19).getId()));
			
			//QUESTION 19
			LinkedList<PDFTableRow> Question19 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= 7; i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page21/q19Table/Row" + Integer.toString(i) + "/q19_02/q19_02_radio"));
				item.add(Worker.getFieldFromParser(parser, "/Page21/q19Table/Row" + Integer.toString(i) + "/q19_comment"));
				Question19.add(new PDFTableRow(item, "Row" + Integer.toString(i)));
			}
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page21/q19Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page21/q19Table/Item[" + Integer.toString(i) + "]/tbl_q19_other/Row3/txt_q19_other"));
				item.add(Worker.getFieldFromParser(parser, "/Page21/q19Table/Item[" + Integer.toString(i) + "]/q19_02/q19_02_radio"));
				item.add(Worker.getFieldFromParser(parser, "/Page21/q19Table/Item[" + Integer.toString(i) + "]/q19_comment"));
				Question19.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question19, "q19Table"), dbQuestions.get(20).getId()));
			
			//QUESTION 20
			List<org.fao.fir.cgrfa.pdf.parser.objects.Field> Question20 = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
			Question20.add(parser.getFieldByXPath("/Page22/q20_sfHeader/q20_radio"));
			Question20.add(parser.getFieldByXPath("/Page22/q20_sfHeader/q20_additionalInformation"));
			list.add(new PDFQuestion(null, Question20, null, dbQuestions.get(21).getId()));
			
			//QUESTION 21
			List<org.fao.fir.cgrfa.pdf.parser.objects.Field> Question21 = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
			Question21.add(parser.getFieldByXPath("/Page24/q21_radio"));
			Question21.add(parser.getFieldByXPath("/Page24/q21_additionalInformation"));
			list.add(new PDFQuestion(null, Question21, null, dbQuestions.get(22).getId()));
			
			//QUESTION 22
			list.add(new PDFQuestion(parser.getFieldByXPath("/Page24/q22_examples"), null, null, dbQuestions.get(23).getId()));
			
			//QUESTION 23
			LinkedList<PDFTableRow> Question23 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= 5; i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page25/q23Table/Row" + Integer.toString(i) + "/q23_sf_0" + Integer.toString(i) + "/q23_rank"));
				Question23.add(new PDFTableRow(item, "Row" + Integer.toString(i)));
			}
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page25/q23Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page25/q23Table/Item[" + Integer.toString(i) + "]/Table15/Row2/q23_name_other"));
				item.add(Worker.getFieldFromParser(parser, "/Page25/q23Table/Item[" + Integer.toString(i) + "]/q23_sf_other/q23_rank_other"));
				Question23.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question23, "q23Table"), dbQuestions.get(24).getId()));
			
			//QUESTION 24
			List<org.fao.fir.cgrfa.pdf.parser.objects.Field> Question24 = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
			Question24.add(parser.getFieldByXPath("/Page26/q24_radio"));
			Question24.add(parser.getFieldByXPath("/Page26/q24_examples"));
			list.add(new PDFQuestion(null, Question24, null, dbQuestions.get(25).getId()));
			
			//QUESTION 25
			List<org.fao.fir.cgrfa.pdf.parser.objects.Field> Question25 = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
			Question25.add(parser.getFieldByXPath("/Page26/q25_radio"));
			Question25.add(parser.getFieldByXPath("/Page26/q25_examples"));
			list.add(new PDFQuestion(null, Question25, null, dbQuestions.get(26).getId()));
			
			//QUESTION 26
			List<org.fao.fir.cgrfa.pdf.parser.objects.Field> Question26 = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
			Question26.add(parser.getFieldByXPath("/Page27/q26_sf/q26_radio"));
			Question26.add(parser.getFieldByXPath("/Page27/q26_sf/q26_examples"));
			list.add(new PDFQuestion(null, Question26, null, dbQuestions.get(27).getId()));
			
			//QUESTION 27
			LinkedList<PDFTableRow> Question27 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page27/q27Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page27/q27Table/Item[" + Integer.toString(i) + "]/SpeciesAutosuggestionSubform/ListBoxSubform/q27_species"));
				item.add(Worker.getFieldFromParser(parser, "/Page27/q27Table/Item[" + Integer.toString(i) + "]/q27_sf/q27_radio02"));
				item.add(Worker.getFieldFromParser(parser, "/Page27/q27Table/Item[" + Integer.toString(i) + "]/q27_comments"));
				Question27.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question27, "q27Table"), dbQuestions.get(28).getId()));
			
			//QUESTION 28
			LinkedList<PDFTableRow> Question28 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page28/q28Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page28/q28Table/Item[" + Integer.toString(i) + "]/q28_txtSpecies"));
				item.add(Worker.getFieldFromParser(parser, "/Page28/q28Table/Item[" + Integer.toString(i) + "]/q28_sf/q28_radio02"));
				item.add(Worker.getFieldFromParser(parser, "/Page28/q28Table/Item[" + Integer.toString(i) + "]/q28_comments"));
				Question28.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question28, "q28Table"), dbQuestions.get(29).getId()));
			
			//QUESTION 29
			LinkedList<PDFTableRow> Question29 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page29/q29Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page29/q29Table/Item[" + Integer.toString(i) + "]/q29_txt_species"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page29/q29Table/Item[" + Integer.toString(i) + "]/q29_sf_02"), "q29_sf_02"));
				item.add(Worker.getFieldFromParser(parser, "/Page29/q29Table/Item[" + Integer.toString(i) + "]/q29_sf_03/q29_radio_03"));
				item.add(Worker.getFieldFromParser(parser, "/Page29/q29Table/Item[" + Integer.toString(i) + "]/q29_txt_comments"));
				Question29.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question29, "q29Table"), dbQuestions.get(30).getId()));
			
			//QUESTION 30
			LinkedList<PDFTableRow> Question30 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page30/q30Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page30/q30Table/Item[" + Integer.toString(i) + "]/q30_txt_species"));
				item.add(Worker.getFieldFromParser(parser, "/Page30/q30Table/Item[" + Integer.toString(i) + "]/q30_txt_users"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page30/q30Table/Item[" + Integer.toString(i) + "]/q30_sf_03"), "q30_sf_03"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page30/q30Table/Item[" + Integer.toString(i) + "]/q30_sf_04"), "q30_sf_04"));
				item.add(Worker.getFieldFromParser(parser, "/Page30/q30Table/Item[" + Integer.toString(i) + "]/q30_txt_comments"));
				Question30.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question30, "q30Table"), dbQuestions.get(31).getId()));
			
			//QUESTION 31
			LinkedList<PDFTableRow> Question31 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= 5; i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page31/q31Table/Row" + Integer.toString(i) + "/q31_sf_0" + Integer.toString(i) + "/q31_rank"));
				Question31.add(new PDFTableRow(item, "Row" + Integer.toString(i)));
			}
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page31/q31Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page31/q31Table/Item[" + Integer.toString(i) + "]/Table18/Row3/q31_txt_other"));
				item.add(Worker.getFieldFromParser(parser, "/Page31/q31Table/Item[" + Integer.toString(i) + "]/q31_sf_other/q31_rank"));
				Question31.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question31, "q31Table"), dbQuestions.get(32).getId()));
			
			//QUESTION 32
			LinkedList<PDFTableRow> Question32 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= 12; i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page33/q32Table/Row" + Integer.toString(i) + "/q32_sf_02"), "q32_sf_02"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page33/q32Table/Row" + Integer.toString(i) + "/q32_sf_03"), "q32_sf_03"));
				item.add(Worker.getFieldFromParser(parser, "/Page33/q32Table/Row" + Integer.toString(i) + "/q32_sf_02/q32_other"));
				item.add(Worker.getFieldFromParser(parser, "/Page33/q32Table/Row" + Integer.toString(i) + "/q32_txt_comments"));
				Question32.add(new PDFTableRow(item, "Row" + Integer.toString(i)));
			}
			List<org.fao.fir.cgrfa.pdf.parser.objects.Field> Question32More = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
			Question32More.add(parser.getFieldByXPath("/Page33/q32More/q32_more_a"));
			Question32More.add(parser.getFieldByXPath("/Page33/q32More/q32_more_b"));
			list.add(new PDFQuestion(null, Question32More, new PDFTable(Question32, "q32Table"), dbQuestions.get(33).getId()));
			
			//QUESTION 33
			LinkedList<PDFTableRow> Question33 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page34/q33Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page34/q33Table/Item[" + Integer.toString(i) + "]/q33_txt_legislation"));
				item.add(Worker.getFieldFromParser(parser, "/Page34/q33Table/Item[" + Integer.toString(i) + "]/q33_02/q33_date"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page34/q33Table/Item[" + Integer.toString(i) + "]/q33_03"), "q33_03"));
				item.add(Worker.getFieldFromParser(parser, "/Page34/q33Table/Item[" + Integer.toString(i) + "]/q33_comments"));
				Question33.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question33, "q33Table"), dbQuestions.get(34).getId()));
			
			//QUESTION 34
			list.add(new PDFQuestion(parser.getFieldByXPath("/Page35/q34_sfHeader/q34_txtinfo"), null, null, dbQuestions.get(35).getId()));
			
			//QUESTION 35
			LinkedList<PDFTableRow> Question35 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= 3; i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page35/q35Table/Row" + Integer.toString(i) + "/q35_txt_comments"));
				Question35.add(new PDFTableRow(item, "Row" + Integer.toString(i)));
			}
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page35/q35Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page35/q35Table/Item[" + Integer.toString(i) + "]/tblItem/Row3/q35_txt_genetic"));
				item.add(Worker.getFieldFromParser(parser, "/Page35/q35Table/Item[" + Integer.toString(i) + "]/q35_txt_comments"));
				Question35.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question35, "q35Table"), dbQuestions.get(36).getId()));
			
			//QUESTION 36
			LinkedList<PDFTableRow> Question36 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page36/q36Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page36/q36Table/Item[" + Integer.toString(i) + "]/q36_txt_action"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page36/q36Table/Item[" + Integer.toString(i) + "]/q36_sf"), "q36_sf"));
				item.add(Worker.getFieldFromParser(parser, "/Page36/q36Table/Item[" + Integer.toString(i) + "]/q36_txt_comments"));
				Question36.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question36, "q36Table"), dbQuestions.get(37).getId()));
			
			//QUESTION 37
			LinkedList<PDFTableRow> Question37 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= 8; i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page37/q37Table/Row" + Integer.toString(i) + "/q37_sf"), "q37_sf"));
				item.add(Worker.getFieldFromParser(parser, "/Page37/q37Table/Row" + Integer.toString(i) + "/q37_txt_comments"));
				Question37.add(new PDFTableRow(item, "Row" + Integer.toString(i)));
			}
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page37/q37Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page37/q37Table/Item[" + Integer.toString(i) + "]/tblItem/Row3/q37_txt_obstacles"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page37/q37Table/Item[" + Integer.toString(i) + "]/q37_sf"), "q37_sf"));
				item.add(Worker.getFieldFromParser(parser, "/Page37/q37Table/Item[" + Integer.toString(i) + "]/q37_txt_comments"));
				Question37.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question37, "q37Table"), dbQuestions.get(38).getId()));
			
			//QUESTION 38
			List<org.fao.fir.cgrfa.pdf.parser.objects.Field> Question38 = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
			Question38.add(parser.getFieldByXPath("/Page38/q39_sfHeader/q38_radio"));
			Question38.add(parser.getFieldByXPath("/Page38/q39_sfHeader/q38_txt_details"));
			list.add(new PDFQuestion(null, Question38, null, dbQuestions.get(39).getId()));
			
			//QUESTION 39
			LinkedList<PDFTableRow> Question39 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page39/q39Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page39/q39Table/Item[" + Integer.toString(i) + "]/q39_txt_institution"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page39/q39Table/Item[" + Integer.toString(i) + "]/q39_sf"), "q39_sf"));
				item.add(Worker.getFieldFromParser(parser, "/Page39/q39Table/Item[" + Integer.toString(i) + "]/q39_comment"));
				Question39.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question39, "q39Table"), dbQuestions.get(40).getId()));
			
			//QUESTION 40
			LinkedList<PDFTableRow> Question40 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= 8; i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page40/q40Table/Row" + Integer.toString(i) + "/q40_01/q40_rank"));
				Question40.add(new PDFTableRow(item, "Row" + Integer.toString(i)));
			}
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page40/q40Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page40/q40Table/Item[" + Integer.toString(i) + "]/q40_item_sf/Table25/Row2/q40_other"));
				item.add(Worker.getFieldFromParser(parser, "/Page40/q40Table/Item[" + Integer.toString(i) + "]/q40_01/q40_rank"));
				Question40.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(parser.getFieldByXPath("/Page40/q40_comments"), null, new PDFTable(Question40, "q40Table"), dbQuestions.get(41).getId()));
			
			//QUESTION 41
			LinkedList<PDFTableRow> Question41 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= 5; i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page41/q41Table/Row" + Integer.toString(i) + "/q41_txt_institution"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page41/q41Table/Row" + Integer.toString(i) + "/q41_sf_03"), "q41_sf_03"));
				item.add(Worker.getFieldFromParser(parser, "/Page41/q41Table/Row" + Integer.toString(i) + "/q41_txt_comments"));
				Question41.add(new PDFTableRow(item, "Row" + Integer.toString(i)));
			}
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page41/q41Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page41/q41Table/Item[" + Integer.toString(i) + "]/tblItem/Row3/q41_txt_thematic"));
				item.add(Worker.getFieldFromParser(parser, "/Page41/q41Table/Item[" + Integer.toString(i) + "]/q41_thematic_area"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page41/q41Table/Item[" + Integer.toString(i) + "]/q41_sf_03"), "q41_sf_03"));
				item.add(Worker.getFieldFromParser(parser, "/Page41/q41Table/Item[" + Integer.toString(i) + "]/q41_txt_comments"));
				Question41.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question41, "q41Table"), dbQuestions.get(42).getId()));
			
			//QUESTION 42
			LinkedList<PDFTableRow> Question42 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page42/q42Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page42/q42Table/Item[" + Integer.toString(i) + "]/q42_txt_mechanism"));
				item.add(Worker.getFieldFromParser(parser, "/Page42/q42Table/Item[" + Integer.toString(i) + "]/q42_txt_description"));
				Question42.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question42, "q42Table"), dbQuestions.get(43).getId()));
			
			//QUESTION 43
			LinkedList<PDFTableRow> Question43 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= 3; i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page43/q43Table/Row" + Integer.toString(i) + "/q43_01/q43_rank"));
				Question43.add(new PDFTableRow(item, "Row" + Integer.toString(i)));
			}
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page43/q43Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page43/q43Table/Item[" + Integer.toString(i) + "]/q43_item_sf/Table25/Row2/q43_other"));
				item.add(Worker.getFieldFromParser(parser, "/Page43/q43Table/Item[" + Integer.toString(i) + "]/q43_01/q43_rank"));
				Question43.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(parser.getFieldByXPath("/Page43/q43_comments"), null, new PDFTable(Question43, "q43Table"), dbQuestions.get(44).getId()));
			
			//QUESTION 44
			LinkedList<PDFTableRow> Question44 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page44/q44Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page44/q44Table/Item[" + Integer.toString(i) + "]/q44_txt_network"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page44/q44Table/Item[" + Integer.toString(i) + "]/q44_sf"), "q44_sf"));
				item.add(Worker.getFieldFromParser(parser, "/Page44/q44Table/Item[" + Integer.toString(i) + "]/q44_txt_comments"));
				Question44.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question44, "q44Table"), dbQuestions.get(45).getId()));
			
			//QUESTION 45
			LinkedList<PDFTableRow> Question45 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page45/q45Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page45/q45Table/Item[" + Integer.toString(i) + "]/q45_txt_information_system"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page45/q45Table/Item[" + Integer.toString(i) + "]/q45_sf_01"), "q45_sf_01"));
				item.add(Worker.buildCheckBoxList(parser.getSubformByXPath("/Page45/q45Table/Item[" + Integer.toString(i) + "]/q45_sf_02"), "q45_sf_02"));
				item.add(Worker.getFieldFromParser(parser, "/Page45/q45Table/Item[" + Integer.toString(i) + "]/q45_sf_02/q45_txt_other_stackholders"));
				Question45.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question45, "q45Table"), dbQuestions.get(46).getId()));
			
			//QUESTION 46
			List<org.fao.fir.cgrfa.pdf.parser.objects.Field> Question46 = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
			Question46.add(parser.getFieldByXPath("/Page46/q46_sf/q46_txt_answer_1"));
			Question46.add(parser.getFieldByXPath("/Page46/q46_sf/q46_txt_answer_2"));
			list.add(new PDFQuestion(null, Question46, null, dbQuestions.get(47).getId()));
			
			//QUESTION 47
			LinkedList<PDFTableRow> Question47 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page47/q47Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page47/q47Table/Item[" + Integer.toString(i) + "]/q47_txt_01"));
				item.add(Worker.getFieldFromParser(parser, "/Page47/q47Table/Item[" + Integer.toString(i) + "]/q47_txt_02"));
				item.add(Worker.getFieldFromParser(parser, "/Page47/q47Table/Item[" + Integer.toString(i) + "]/q47_sf_03/q47_radio_03"));
				item.add(Worker.getFieldFromParser(parser, "/Page47/q47Table/Item[" + Integer.toString(i) + "]/q47_sf_04/q47_radio_04"));
				item.add(Worker.getFieldFromParser(parser, "/Page47/q47Table/Item[" + Integer.toString(i) + "]/q47_txt_comments"));
				Question47.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question47, "q47Table"), dbQuestions.get(48).getId()));
			
			//QUESTION 48
			LinkedList<PDFTableRow> Question48 = new LinkedList<PDFTableRow>();
			for (int i = 1; i <= 8; i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page48/q48Table/Row" + Integer.toString(i) + "/q48_02/q48_rank"));
				item.add(Worker.getFieldFromParser(parser, "/Page48/q48Table/Row" + Integer.toString(i) + "/q48_sf_03/q48_radio03"));
				item.add(Worker.getFieldFromParser(parser, "/Page48/q48Table/Row" + Integer.toString(i) + "/q48_comments"));
				Question48.add(new PDFTableRow(item, "Row" + Integer.toString(i)));
			}
			for (int i = 1; i <= parser.getNumberOfItemsByXPath("/Page48/q48Table/Item"); i++) {
				List<org.fao.fir.cgrfa.pdf.parser.objects.Field> item = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
				item.add(Worker.getFieldFromParser(parser, "/Page48/q48Table/Item[" + Integer.toString(i) + "]/tblItem/Row3/q48_txt_other"));
				item.add(Worker.getFieldFromParser(parser, "/Page48/q48Table/Item[" + Integer.toString(i) + "]/q48_02/q48_rank"));
				item.add(Worker.getFieldFromParser(parser, "/Page48/q48Table/Item[" + Integer.toString(i) + "]/q48_sf_03/q48_radio03"));
				item.add(Worker.getFieldFromParser(parser, "/Page48/q48Table/Item[" + Integer.toString(i) + "]/q48_comments"));
				Question48.add(new PDFTableRow(item, "Item"));
			}
			list.add(new PDFQuestion(null, null, new PDFTable(Question48, "q48Table"), dbQuestions.get(49).getId()));

			//QUESTION 49
			list.add(new PDFQuestion(parser.getFieldByXPath("/Page49/q49_sf/q49_txt"), null, null, dbQuestions.get(50).getId()));
			
			//QUESTION 50
			List<org.fao.fir.cgrfa.pdf.parser.objects.Field> Question50 = new ArrayList<org.fao.fir.cgrfa.pdf.parser.objects.Field>();
			Question50.add(parser.getFieldByXPath("/Page49/q50_sf/q50_radio"));
			Question50.add(parser.getFieldByXPath("/Page49/q50_sf/q50_txt"));
			list.add(new PDFQuestion(null, Question50, null, dbQuestions.get(51).getId()));
			
			//QUESTION 51
			list.add(new PDFQuestion(parser.getFieldByXPath("/Page49/q51_sf/q51_txt"), null, null, dbQuestions.get(52).getId()));
			
			PDFQuestionnaire.setList(list);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			return null;
		}
		
		return PDFQuestionnaire;
		
	}
	
	
	private static org.fao.fir.cgrfa.pdf.parser.objects.Field buildCheckBoxList(Subform sf, String name) {
		if (sf == null) {
			org.fao.fir.cgrfa.pdf.parser.objects.Field r = new org.fao.fir.cgrfa.pdf.parser.objects.Field();
			r.setName(name);
			return r;
		}
		
		String chkVals = "";
		for (org.fao.fir.cgrfa.pdf.parser.objects.Field f : sf.getFields()) {
			if (f.getName().equals("CheckBox") && !f.getValue().equalsIgnoreCase("0")) {
				chkVals += f.getValue() + ",";
			} else if (f.getName().equals("CheckBox1") && !f.getValue().equalsIgnoreCase("0")) {
				chkVals += f.getValue() + ",";
			}
		}
		chkVals = chkVals.replaceAll("(,)*$", "");
		org.fao.fir.cgrfa.pdf.parser.objects.Field field = new org.fao.fir.cgrfa.pdf.parser.objects.Field();
		field.setName(name);
		field.setValue(chkVals);
		
		return field;
	}
	
	private static org.fao.fir.cgrfa.pdf.parser.objects.Field getFieldFromParser(XFA_Parser parser, String xpath) {
		org.fao.fir.cgrfa.pdf.parser.objects.Field field = parser.getFieldByXPath(xpath);
		if (field == null) {
			String[] xp = xpath.split("/");
			org.fao.fir.cgrfa.pdf.parser.objects.Field r = new org.fao.fir.cgrfa.pdf.parser.objects.Field();
			r.setName(xp[xp.length-1]);
			return r;
		} else {
			return field;
		}
	}
	
	private String getStringDate(Date date) {
		DateFormat df = new SimpleDateFormat("MM/dd/yyyy");
		String reportDate = df.format(date);
		return reportDate;
	}
	
	private String buildHtmlID(Surveyanswers answer) {
		Object id = answer.getId();
		Object row_id = answer.getTableRowId();
		Object multi_sort = answer.getTableRowMultiSort();
		Object table_id = answer.getTableId();

		String htmlId = "";
		if (id != null) {
			htmlId = htmlId + "[id==" + Integer.toString((int)id) + "]";
		}
		if (table_id != null) {
			if (!htmlId.equals("")) {
				htmlId = htmlId + "!";
			}
			htmlId = htmlId + "[tblid==" + Integer.toString((int)table_id) + "]";
		}
		if (row_id != null) {
			if (!htmlId.equals("")) {
				htmlId = htmlId + "!";
			}
			htmlId = htmlId + "[rowid==" + Integer.toString((int)row_id) + "]";
		}
		if (multi_sort != null) {
			if (!htmlId.equals("")) {
				htmlId = htmlId + "!";
			}
			htmlId = htmlId + "[multisort==" + Integer.toString((int)multi_sort) + "]";
		}
		return htmlId;
	}
	
	private String getAnswerMeta(Answer answer, String meta) {
		String[] splittedValues = answer.getId().split("!");
		for (int i = 0; i < splittedValues.length; i++) {
			if (splittedValues[i].startsWith("[" + meta)) {
				String[] splittedValue = splittedValues[i].split("==");
				if (splittedValue.length > 1) {
					return splittedValue[1].substring(0, splittedValue[1].length()-1).trim();
				}
			}
		}
		return null;
	}
}
