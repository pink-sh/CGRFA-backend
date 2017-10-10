package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Question13;
import org.fao.fir.cgrfa.dao.mapper.model.Question13Example;

public interface Question13Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question13
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(Question13Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question13
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(Question13Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question13
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Question13 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question13
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Question13 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question13
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Question13> selectByExample(Question13Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question13
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Question13 record, @Param("example") Question13Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question13
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Question13 record, @Param("example") Question13Example example);
}