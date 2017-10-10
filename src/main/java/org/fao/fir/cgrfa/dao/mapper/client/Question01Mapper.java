package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Question01;
import org.fao.fir.cgrfa.dao.mapper.model.Question01Example;

public interface Question01Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question01
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(Question01Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question01
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(Question01Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question01
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Question01 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question01
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Question01 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question01
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Question01> selectByExample(Question01Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question01
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Question01 record, @Param("example") Question01Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question01
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Question01 record, @Param("example") Question01Example example);
}