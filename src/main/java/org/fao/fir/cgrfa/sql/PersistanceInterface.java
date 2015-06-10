package org.fao.fir.cgrfa.sql;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Controlledlists;
import org.fao.fir.cgrfa.dao.mapper.model.Countries;
import org.fao.fir.cgrfa.dao.mapper.model.Questions;
import org.fao.fir.cgrfa.dao.mapper.model.Questionsfields;
import org.fao.fir.cgrfa.dao.mapper.model.Questionstables;
import org.fao.fir.cgrfa.dao.mapper.model.Questionstablescolumns;
import org.fao.fir.cgrfa.dao.mapper.model.Questionstablesfields;
import org.fao.fir.cgrfa.dao.mapper.model.Questionstablesrows;
import org.fao.fir.cgrfa.dao.mapper.model.Questiontype;
import org.fao.fir.cgrfa.dao.mapper.model.Species;
import org.fao.fir.cgrfa.dao.mapper.model.Survey;
import org.fao.fir.cgrfa.dao.mapper.model.Surveyanswers;
import org.fao.fir.cgrfa.dao.mapper.model.Surveystatus;
import org.fao.fir.cgrfa.objects.ControlledEntry;

public interface PersistanceInterface {
	
	Questions testMe (@Param("id") int id);
	
	Species getSpeciesByName (@Param("name") String name);
	
	List<Questions> getAllQuestions();
	
	
	List<Questionsfields> getQuestionFieldsById (@Param("id") int id);
	
	List<Questiontype> getQuestionTypes ();
	
	Questionstables getTableByName (@Param("name") String name);
	
	List<Questionstablescolumns> getTableColumnsById (@Param("id") int id);
	
	List<Questionstablescolumns> getTableColumnsByName (@Param("name") String name);
	
	List<Questionstablesrows> getTableRowsById (@Param("id") int id);
	
	List<Questionstablesrows> getTableRowsByName (@Param("name") String name);
	
	Questionstablesrows getTableRowByNameTableName (@Param("table_name") String table_name, @Param("row_name") String row_name);
	
	List<Questionstablesfields> getCellFieldsByCoordinates (@Param("table_id") int table_id, @Param("column_id") int column_id, @Param("row_id") int row_id);
	
	Questionstablesfields getCellFieldByTableRowAndName (@Param("table_id") int table_id, @Param("row_id") int row_id, @Param("name") String name);
	
	List<Integer> getDistinctControlledListIds ();
	
	List<Controlledlists> getControlledList (@Param("id") int id);
	
	List<ControlledEntry> getExternalControlledList (@Param("table") String table, @Param("value") String value, @Param("key") String key);
	
	Questionsfields getFormFieldByNameAndQuestion (@Param("ID") int id, @Param("name") String name);
	
	Countries getCountry (@Param("ID") String ID);
	Countries getCountryById (@Param("ID") int ID);
	
	Questions getQuestions();
	
	List<Surveyanswers> getAnswersNextRowsByField(@Param("survey_id") int survey_id, 
			  									  @Param("table_id") int table_id,
			  									  @Param("field_id") int field_id,
			  									  @Param("row_id") int row_id,
			  									  @Param("delta") int delta);
		
	Surveyanswers getSurveyAnswerById (@Param("ID") int ID);
	
	Surveyanswers getSurveyFieldAnswerTop(@Param("survey_id") int survey_id, 
										  @Param("field_id") int field_id);
	
	Surveyanswers getSurveyFieldAnswerRow (@Param("survey_id") int survey_id, 
										   @Param("field_id") int field_id,
										   @Param("table_id") int table_id,
										   @Param("row_id") int row_id);
	
	Surveyanswers getSurveyFieldAnswerMultiRow (@Param("survey_id") int survey_id, 
											 @Param("field_id") int field_id,
											 @Param("table_id") int table_id,
											 @Param("row_id") int row_id,
											 @Param("counter") int counter);
	
	List<Surveyanswers> getSurveyAnswersBySurveyId(@Param("survey_id") int survey_id);
	
	List<Survey> getAllSurvey();
	
	Survey getSurveyHeadersById (@Param("ID") int ID);
	
	Survey getSurveyHeadersByCountry (@Param("country") int country);
	
	List<Survey> getSurveyInsertedByDelta (@Param("days") int days);
	
	List<Survey> getSurveyModifiedByDelta (@Param("days") int days);
	
	Surveystatus getQuestionStatus (@Param("survey_id") int survey_id, @Param("question_id") int question_id);
	
	int getStatusCountBySurvey (@Param("survey_id") int survey_id, @Param("status") int status);
		
	int getNumberOfInsertedMultiRows(@Param("table_id") int table_id, @Param("row_id") int row_id, @Param("survey_id") int survey_id);
	
	List<HashMap<String, String>> getSelectedValues(@Param("survey_id") int survey_id, @Param("field_id") int field_id);
	List<HashMap<String, String>> getAnwerQuestion(@Param("ID") int id);
	
	Survey insertSurvey (Survey survey);
	
	Questionstablesfields getTableQuestionByAnswerId(@Param("answer_id") int answer_id);
	
	int getMaxRowForTable (@Param("survey_id") int survey_id,
						   @Param("id") int id,
						   @Param("table_id") int table_id,
						   @Param("row_id") int row_id);
	
	void insertSurveyAnswer (Surveyanswers answers) throws Exception;
	
	void insertSurveyStatus (Surveystatus status);
	void insertSurveyDefaultStatus (Surveystatus status);
	
	void deleteSurvey(@Param("id") int id);
	
	void updateQuestionStatus(Surveystatus status);
	
	void updateSurveyAnswerByPrimaryKeySelective(Surveyanswers answer);
	
	void updateSurveyByPrimaryKeySelective(Survey survey);

}
