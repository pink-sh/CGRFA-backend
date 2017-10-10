package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Question43;
import org.fao.fir.cgrfa.dao.mapper.model.Question43Example;

public interface Question43Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question43
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(Question43Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question43
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(Question43Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question43
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Question43 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question43
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Question43 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question43
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Question43> selectByExample(Question43Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question43
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Question43 record, @Param("example") Question43Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question43
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Question43 record, @Param("example") Question43Example example);
}