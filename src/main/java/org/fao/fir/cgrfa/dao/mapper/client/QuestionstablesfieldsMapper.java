package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Questionstablesfields;
import org.fao.fir.cgrfa.dao.mapper.model.QuestionstablesfieldsExample;

public interface QuestionstablesfieldsMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsTablesFields
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int countByExample(QuestionstablesfieldsExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsTablesFields
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int deleteByExample(QuestionstablesfieldsExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsTablesFields
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsTablesFields
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int insert(Questionstablesfields record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsTablesFields
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int insertSelective(Questionstablesfields record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsTablesFields
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    List<Questionstablesfields> selectByExample(QuestionstablesfieldsExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsTablesFields
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    Questionstablesfields selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsTablesFields
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int updateByExampleSelective(@Param("record") Questionstablesfields record, @Param("example") QuestionstablesfieldsExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsTablesFields
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int updateByExample(@Param("record") Questionstablesfields record, @Param("example") QuestionstablesfieldsExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsTablesFields
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int updateByPrimaryKeySelective(Questionstablesfields record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsTablesFields
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int updateByPrimaryKey(Questionstablesfields record);
}