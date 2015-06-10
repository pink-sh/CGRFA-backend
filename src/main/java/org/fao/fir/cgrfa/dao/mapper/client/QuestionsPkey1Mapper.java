package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.QuestionsPkey1;
import org.fao.fir.cgrfa.dao.mapper.model.QuestionsPkey1Example;

public interface QuestionsPkey1Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Questions_pkey1
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int countByExample(QuestionsPkey1Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Questions_pkey1
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int deleteByExample(QuestionsPkey1Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Questions_pkey1
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int insert(QuestionsPkey1 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Questions_pkey1
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int insertSelective(QuestionsPkey1 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Questions_pkey1
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    List<QuestionsPkey1> selectByExample(QuestionsPkey1Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Questions_pkey1
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int updateByExampleSelective(@Param("record") QuestionsPkey1 record, @Param("example") QuestionsPkey1Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Questions_pkey1
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int updateByExample(@Param("record") QuestionsPkey1 record, @Param("example") QuestionsPkey1Example example);
}