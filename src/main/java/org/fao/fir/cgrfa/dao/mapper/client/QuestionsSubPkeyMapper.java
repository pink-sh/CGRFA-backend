package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.QuestionsSubPkey;
import org.fao.fir.cgrfa.dao.mapper.model.QuestionsSubPkeyExample;

public interface QuestionsSubPkeyMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Questions_sub_pkey
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    int countByExample(QuestionsSubPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Questions_sub_pkey
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    int deleteByExample(QuestionsSubPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Questions_sub_pkey
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    int insert(QuestionsSubPkey record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Questions_sub_pkey
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    int insertSelective(QuestionsSubPkey record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Questions_sub_pkey
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    List<QuestionsSubPkey> selectByExample(QuestionsSubPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Questions_sub_pkey
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    int updateByExampleSelective(@Param("record") QuestionsSubPkey record, @Param("example") QuestionsSubPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Questions_sub_pkey
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    int updateByExample(@Param("record") QuestionsSubPkey record, @Param("example") QuestionsSubPkeyExample example);
}