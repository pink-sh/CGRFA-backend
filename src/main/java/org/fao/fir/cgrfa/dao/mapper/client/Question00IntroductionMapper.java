package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Question00Introduction;
import org.fao.fir.cgrfa.dao.mapper.model.Question00IntroductionExample;

public interface Question00IntroductionMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question00_Introduction
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(Question00IntroductionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question00_Introduction
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(Question00IntroductionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question00_Introduction
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Question00Introduction record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question00_Introduction
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Question00Introduction record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question00_Introduction
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Question00Introduction> selectByExample(Question00IntroductionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question00_Introduction
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Question00Introduction record, @Param("example") Question00IntroductionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question00_Introduction
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Question00Introduction record, @Param("example") Question00IntroductionExample example);
}