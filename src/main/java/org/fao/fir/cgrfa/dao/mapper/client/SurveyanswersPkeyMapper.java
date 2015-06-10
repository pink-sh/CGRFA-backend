package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.SurveyanswersPkey;
import org.fao.fir.cgrfa.dao.mapper.model.SurveyanswersPkeyExample;

public interface SurveyanswersPkeyMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyAnswers_pkey
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int countByExample(SurveyanswersPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyAnswers_pkey
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int deleteByExample(SurveyanswersPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyAnswers_pkey
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int insert(SurveyanswersPkey record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyAnswers_pkey
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int insertSelective(SurveyanswersPkey record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyAnswers_pkey
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    List<SurveyanswersPkey> selectByExample(SurveyanswersPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyAnswers_pkey
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int updateByExampleSelective(@Param("record") SurveyanswersPkey record, @Param("example") SurveyanswersPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyAnswers_pkey
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int updateByExample(@Param("record") SurveyanswersPkey record, @Param("example") SurveyanswersPkeyExample example);
}