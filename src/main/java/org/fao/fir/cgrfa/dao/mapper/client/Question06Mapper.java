package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Question06;
import org.fao.fir.cgrfa.dao.mapper.model.Question06Example;

public interface Question06Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question06
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(Question06Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question06
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(Question06Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question06
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Question06 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question06
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Question06 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question06
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Question06> selectByExample(Question06Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question06
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Question06 record, @Param("example") Question06Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question06
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Question06 record, @Param("example") Question06Example example);
}