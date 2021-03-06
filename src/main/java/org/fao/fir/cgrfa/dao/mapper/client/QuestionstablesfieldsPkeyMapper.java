package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.QuestionstablesfieldsPkey;
import org.fao.fir.cgrfa.dao.mapper.model.QuestionstablesfieldsPkeyExample;

public interface QuestionstablesfieldsPkeyMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsTablesFields_pkey
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int countByExample(QuestionstablesfieldsPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsTablesFields_pkey
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int deleteByExample(QuestionstablesfieldsPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsTablesFields_pkey
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int insert(QuestionstablesfieldsPkey record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsTablesFields_pkey
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int insertSelective(QuestionstablesfieldsPkey record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsTablesFields_pkey
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    List<QuestionstablesfieldsPkey> selectByExample(QuestionstablesfieldsPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsTablesFields_pkey
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int updateByExampleSelective(@Param("record") QuestionstablesfieldsPkey record, @Param("example") QuestionstablesfieldsPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsTablesFields_pkey
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int updateByExample(@Param("record") QuestionstablesfieldsPkey record, @Param("example") QuestionstablesfieldsPkeyExample example);
}