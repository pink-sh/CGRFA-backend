package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Surveyanswers;
import org.fao.fir.cgrfa.dao.mapper.model.SurveyanswersExample;

public interface SurveyanswersMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(SurveyanswersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(SurveyanswersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Surveyanswers record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Surveyanswers record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Surveyanswers> selectByExample(SurveyanswersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    Surveyanswers selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Surveyanswers record, @Param("example") SurveyanswersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Surveyanswers record, @Param("example") SurveyanswersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByPrimaryKeySelective(Surveyanswers record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByPrimaryKey(Surveyanswers record);
}