package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Question00ExecutiveSummary;
import org.fao.fir.cgrfa.dao.mapper.model.Question00ExecutiveSummaryExample;

public interface Question00ExecutiveSummaryMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question00_Executive_Summary
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(Question00ExecutiveSummaryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question00_Executive_Summary
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(Question00ExecutiveSummaryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question00_Executive_Summary
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Question00ExecutiveSummary record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question00_Executive_Summary
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Question00ExecutiveSummary record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question00_Executive_Summary
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Question00ExecutiveSummary> selectByExample(Question00ExecutiveSummaryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question00_Executive_Summary
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Question00ExecutiveSummary record, @Param("example") Question00ExecutiveSummaryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question00_Executive_Summary
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Question00ExecutiveSummary record, @Param("example") Question00ExecutiveSummaryExample example);
}