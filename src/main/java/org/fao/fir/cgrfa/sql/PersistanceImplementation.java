package org.fao.fir.cgrfa.sql;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
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


public class PersistanceImplementation implements PersistanceInterface{

	@Override
	public Questions testMe(int id) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.testMe(id);
		} finally {
			sqlSession.close();
		}
	}

	@Override
	public List<Questions> getAllQuestions() {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getAllQuestions();
		} finally {
			sqlSession.close();
		}
	}

	@Override
	public List<Questionsfields> getQuestionFieldsById(int id) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getQuestionFieldsById(id);
		} finally {
			sqlSession.close();
		}
	}

	@Override
	public List<Questiontype> getQuestionTypes() {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getQuestionTypes();
		} finally {
			sqlSession.close();
		}
	}
	
	@Override
	public Questionstables getTableByName(String name) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getTableByName(name);
		} finally {
			sqlSession.close();
		}
	}

	@Override
	public List<Questionstablescolumns> getTableColumnsById(int id) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getTableColumnsById(id);
		} finally {
			sqlSession.close();
		}
	}

	@Override
	public List<Questionstablescolumns> getTableColumnsByName(String name) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getTableColumnsByName(name);
		} finally {
			sqlSession.close();
		}
	}

	@Override
	public List<Questionstablesrows> getTableRowsById(int id) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getTableRowsById(id);
		} finally {
			sqlSession.close();
		}
	}

	@Override
	public List<Questionstablesrows> getTableRowsByName(String name) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getTableRowsByName(name);
		} finally {
			sqlSession.close();
		}
	}
	
	@Override
	public Questionstablesrows getTableRowByNameTableName(String table_name,
			String row_name) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getTableRowByNameTableName(table_name, row_name);
		} finally {
			sqlSession.close();
		}
	}

	@Override
	public List<Questionstablesfields> getCellFieldsByCoordinates(
			int table_id, int column_id, int row_id) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getCellFieldsByCoordinates(table_id, column_id, row_id);
		} finally {
			sqlSession.close();
		}
	}
	
	@Override
	public Questionstablesfields getCellFieldByTableRowAndName(int table_id,
			int row_id, String name) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getCellFieldByTableRowAndName(table_id, row_id, name);
		} finally {
			sqlSession.close();
		}
	}

	@Override
	public List<Integer> getDistinctControlledListIds() {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getDistinctControlledListIds();
		} finally {
			sqlSession.close();
		}
	}

	@Override
	public List<Controlledlists> getControlledList(int id) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getControlledList(id);
		} finally {
			sqlSession.close();
		}
	}

	@Override
	public List<ControlledEntry> getExternalControlledList(String table,
			String value, String key) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getExternalControlledList(table, value, key);
		} finally {
			sqlSession.close();
		}
	}

	@Override
	public Countries getCountryById(int ID) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getCountryById(ID);
		} finally {
			sqlSession.close();
		}
	}
	
	@Override
	public Questionsfields getFormFieldByNameAndQuestion(int id, String name) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getFormFieldByNameAndQuestion(id, name);
		} finally {
			sqlSession.close();
		}
	}
	
	@Override
	public Countries getCountry(String ID) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getCountry(ID);
		} finally {
			sqlSession.close();
		}
	}

	@Override
	public Questions getQuestions() {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getQuestions();
		} finally {
			sqlSession.close();
		}
	}
	
	@Override
	public List<Surveyanswers> getAnswersNextRowsByField(int survey_id,
			int table_id, int field_id, int row_id, int delta) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getAnswersNextRowsByField(survey_id, table_id, field_id, row_id, delta);
		} finally {
			sqlSession.close();
		}
	}
	
	@Override
	public Surveyanswers getSurveyAnswerById(int ID) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getSurveyAnswerById(ID);
		} finally {
			sqlSession.close();
		}
	}
	
	@Override
	public Surveyanswers getSurveyFieldAnswerTop(int survey_id, int field_id) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getSurveyFieldAnswerTop(survey_id, field_id);
		} finally {
			sqlSession.close();
		}
	}
	
	@Override
	public Surveyanswers getSurveyFieldAnswerRow(int survey_id, int field_id, int table_id, int row_id) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getSurveyFieldAnswerRow(survey_id, field_id, table_id, row_id);
		} finally {
			sqlSession.close();
		}
	}
	
	@Override
	public Surveyanswers getSurveyFieldAnswerMultiRow(int survey_id, int field_id, int table_id, int row_id,int counter) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getSurveyFieldAnswerMultiRow(survey_id, field_id, table_id, row_id, counter);
		} finally {
			sqlSession.close();
		}
	}
	
	@Override
	public List<Surveyanswers> getSurveyAnswersBySurveyId(int survey_id) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getSurveyAnswersBySurveyId(survey_id);
		} finally {
			sqlSession.close();
		}
	}

	
	@Override
	public int getNumberOfInsertedMultiRows(int table_id, int row_id, int survey_id) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getNumberOfInsertedMultiRows(table_id, row_id, survey_id);
		} finally {
			sqlSession.close();
		}
	}
	
	@Override
	public List<Survey> getAllSurvey() {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getAllSurvey();
		} finally {
			sqlSession.close();
		}
	}
	
	@Override
	public Survey getSurveyHeadersById(int ID) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getSurveyHeadersById(ID);
		} finally {
			sqlSession.close();
		}
	}
	
	@Override
	public Survey getSurveyHeadersByCountry(int country) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getSurveyHeadersByCountry(country);
		} finally {
			sqlSession.close();
		}
	}
	

	@Override
	public List<Survey> getSurveyInsertedByDelta(int days) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getSurveyInsertedByDelta(days);
		} finally {
			sqlSession.close();
		}
	}

	@Override
	public List<Survey> getSurveyModifiedByDelta(int days) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getSurveyModifiedByDelta(days);
		} finally {
			sqlSession.close();
		}
	}
	
	@Override
	public Surveystatus getQuestionStatus(int survey_id, int question_id) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getQuestionStatus(survey_id, question_id);
		} finally {
			sqlSession.close();
		}
	}
	
	@Override
	public int getStatusCountBySurvey(int survey_id, int status) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getStatusCountBySurvey(survey_id, status);
		} finally {
			sqlSession.close();
		}
	}
	
	@Override
	public List<HashMap<String, String>> getSelectedValues(int survey_id, int field_id) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getSelectedValues(survey_id, field_id);
		} finally {
			sqlSession.close();
		}
	}
	
	@Override
	public List<HashMap<String, String>> getAnwerQuestion(int id) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getAnwerQuestion(id);
		} finally {
			sqlSession.close();
		}
	}
	
	@Override
	public Questionstablesfields getTableQuestionByAnswerId(int answer_id) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getTableQuestionByAnswerId(answer_id);
		} finally {
			sqlSession.close();
		}
	}
	
	@Override
	public int getMaxRowForTable(int survey_id, int id, int table_id, int row_id) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.getMaxRowForTable(survey_id, id, table_id, row_id);
		} finally {
			sqlSession.close();
		}
	}


	
	
	
	//Persistance!!!
	
	@Override
	public Survey insertSurvey(Survey survey) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			return mapper.insertSurvey(survey);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			sqlSession.commit();
			sqlSession.close();
		}
		return survey;
	}

	@Override
	public void insertSurveyAnswer(Surveyanswers answers) throws Exception {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			mapper.insertSurveyAnswer(answers);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
			throw new Exception();
		} finally {
			sqlSession.commit();
			sqlSession.close();
		}
	}

	@Override
	public void insertSurveyStatus(Surveystatus status) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			mapper.insertSurveyStatus(status);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			sqlSession.commit();
			sqlSession.close();
		}
	}

	@Override
	public void insertSurveyDefaultStatus(Surveystatus status) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			mapper.insertSurveyDefaultStatus(status);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			sqlSession.commit();
			sqlSession.close();
		}
	}

	@Override
	public void updateQuestionStatus(Surveystatus status) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			mapper.updateQuestionStatus(status);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			sqlSession.commit();
			sqlSession.close();
		}
	}

	@Override
	public void updateSurveyAnswerByPrimaryKeySelective(Surveyanswers answer) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			mapper.updateSurveyAnswerByPrimaryKeySelective(answer);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			sqlSession.commit();
			sqlSession.close();
		}
	}
	
	@Override
	public void updateSurveyByPrimaryKeySelective(Survey survey) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			mapper.updateSurveyByPrimaryKeySelective(survey);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			sqlSession.commit();
			sqlSession.close();
		}
	}

	@Override
	public void deleteSurvey(int id) {
		SqlSession sqlSession = MyBatisSqlSessionFactory.getSqlSessionFactory().openSession();
		try {
			PersistanceInterface mapper = sqlSession.getMapper(PersistanceInterface.class);
			mapper.deleteSurvey(id);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			sqlSession.commit();
			sqlSession.close();
		}
	}
}
