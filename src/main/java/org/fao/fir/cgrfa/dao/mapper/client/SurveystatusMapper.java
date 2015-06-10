package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Surveystatus;
import org.fao.fir.cgrfa.dao.mapper.model.SurveystatusExample;

public interface SurveystatusMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int countByExample(SurveystatusExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int deleteByExample(SurveystatusExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int insert(Surveystatus record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int insertSelective(Surveystatus record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    List<Surveystatus> selectByExample(SurveystatusExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    Surveystatus selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int updateByExampleSelective(@Param("record") Surveystatus record, @Param("example") SurveystatusExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int updateByExample(@Param("record") Surveystatus record, @Param("example") SurveystatusExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int updateByPrimaryKeySelective(Surveystatus record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int updateByPrimaryKey(Surveystatus record);
}