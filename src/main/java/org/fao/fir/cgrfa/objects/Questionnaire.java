package org.fao.fir.cgrfa.objects;

import java.util.HashMap;
import java.util.List;

import lombok.Data;

@Data
public class Questionnaire {
	
	private QuestionnaireHeaders headers;
	private List<Question> questions;
	private HashMap<Integer, List<ControlledEntry>> controlledLists;
	private List<QuestionType> questionType;
	private List<String> InsertedCountriesIDs;
	public QuestionnaireHeaders getHeaders() {
		return headers;
	}
	public void setHeaders(QuestionnaireHeaders headers) {
		this.headers = headers;
	}
	public List<Question> getQuestions() {
		return questions;
	}
	public void setQuestions(List<Question> questions) {
		this.questions = questions;
	}
	public HashMap<Integer, List<ControlledEntry>> getControlledLists() {
		return controlledLists;
	}
	public void setControlledLists(HashMap<Integer, List<ControlledEntry>> controlledLists) {
		this.controlledLists = controlledLists;
	}
	public List<QuestionType> getQuestionType() {
		return questionType;
	}
	public void setQuestionType(List<QuestionType> questionType) {
		this.questionType = questionType;
	}
	public List<String> getInsertedCountriesIDs() {
		return InsertedCountriesIDs;
	}
	public void setInsertedCountriesIDs(List<String> insertedCountriesIDs) {
		InsertedCountriesIDs = insertedCountriesIDs;
	}
}
