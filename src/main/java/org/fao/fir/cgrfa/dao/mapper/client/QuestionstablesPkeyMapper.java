package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.QuestionstablesPkey;
import org.fao.fir.cgrfa.dao.mapper.model.QuestionstablesPkeyExample;

public interface QuestionstablesPkeyMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsTables_pkey
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    int countByExample(QuestionstablesPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsTables_pkey
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    int deleteByExample(QuestionstablesPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsTables_pkey
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    int insert(QuestionstablesPkey record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsTables_pkey
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    int insertSelective(QuestionstablesPkey record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsTables_pkey
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    List<QuestionstablesPkey> selectByExample(QuestionstablesPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsTables_pkey
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    int updateByExampleSelective(@Param("record") QuestionstablesPkey record, @Param("example") QuestionstablesPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsTables_pkey
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    int updateByExample(@Param("record") QuestionstablesPkey record, @Param("example") QuestionstablesPkeyExample example);
}