package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.SurveystatusPkey;
import org.fao.fir.cgrfa.dao.mapper.model.SurveystatusPkeyExample;

public interface SurveystatusPkeyMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus_pkey
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int countByExample(SurveystatusPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus_pkey
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int deleteByExample(SurveystatusPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus_pkey
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int insert(SurveystatusPkey record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus_pkey
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int insertSelective(SurveystatusPkey record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus_pkey
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    List<SurveystatusPkey> selectByExample(SurveystatusPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus_pkey
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int updateByExampleSelective(@Param("record") SurveystatusPkey record, @Param("example") SurveystatusPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus_pkey
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int updateByExample(@Param("record") SurveystatusPkey record, @Param("example") SurveystatusPkeyExample example);
}