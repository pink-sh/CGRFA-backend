package org.fao.fir.cgrfa.test;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.codehaus.jackson.map.ObjectMapper;
import org.fao.fir.cgrfa.objects.ControlledEntry;
import org.fao.fir.cgrfa.objects.Question;
import org.fao.fir.cgrfa.objects.Questionnaire;
import org.fao.fir.cgrfa.sql.Worker;


public class Test {

	@SuppressWarnings("deprecation")
	public static void main(String[] args) {
		
		Worker w = new Worker();
		List<Question> l1 = w.buildQuestionList();
		HashMap<Integer, List<ControlledEntry>> cl = w.getControlledLists();
		
		Questionnaire questionnaire = new Questionnaire();
		questionnaire.setControlledLists(cl);
		questionnaire.setQuestions(l1);
		
		ObjectMapper mapper = new ObjectMapper();
		try {
			mapper.defaultPrettyPrintingWriter().writeValue(new File("/tmp/out.json"), questionnaire);
			mapper.writeValueAsString(questionnaire);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		System.out.println("Done");
		
		
		/*PersistanceInterface in = new PersistanceImplementation();
		
		Questions map = in.testMe(1);
		
		System.out.println (map.getNameE());*/
		

	}

}
