package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Question28;
import org.fao.fir.cgrfa.dao.mapper.model.Question28Example;

public interface Question28Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question28
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(Question28Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question28
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(Question28Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question28
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Question28 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question28
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Question28 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question28
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Question28> selectByExample(Question28Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question28
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Question28 record, @Param("example") Question28Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question28
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Question28 record, @Param("example") Question28Example example);
}