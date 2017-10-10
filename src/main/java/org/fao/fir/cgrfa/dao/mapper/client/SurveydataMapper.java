package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Surveydata;
import org.fao.fir.cgrfa.dao.mapper.model.SurveydataExample;
import org.fao.fir.cgrfa.dao.mapper.model.SurveydataKey;

public interface SurveydataMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyData
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(SurveydataExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyData
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(SurveydataExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyData
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByPrimaryKey(SurveydataKey key);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyData
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Surveydata record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyData
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Surveydata record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyData
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Surveydata> selectByExample(SurveydataExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyData
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    Surveydata selectByPrimaryKey(SurveydataKey key);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyData
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Surveydata record, @Param("example") SurveydataExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyData
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Surveydata record, @Param("example") SurveydataExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyData
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByPrimaryKeySelective(Surveydata record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyData
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByPrimaryKey(Surveydata record);
}