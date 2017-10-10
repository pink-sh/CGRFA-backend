package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Questionsfields;
import org.fao.fir.cgrfa.dao.mapper.model.QuestionsfieldsExample;

public interface QuestionsfieldsMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsFields
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(QuestionsfieldsExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsFields
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(QuestionsfieldsExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsFields
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsFields
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Questionsfields record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsFields
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Questionsfields record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsFields
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Questionsfields> selectByExample(QuestionsfieldsExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsFields
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    Questionsfields selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsFields
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Questionsfields record, @Param("example") QuestionsfieldsExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsFields
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Questionsfields record, @Param("example") QuestionsfieldsExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsFields
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByPrimaryKeySelective(Questionsfields record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsFields
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByPrimaryKey(Questionsfields record);
}