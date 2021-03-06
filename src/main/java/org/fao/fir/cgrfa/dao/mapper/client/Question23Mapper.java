package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Question23;
import org.fao.fir.cgrfa.dao.mapper.model.Question23Example;

public interface Question23Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question23
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(Question23Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question23
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(Question23Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question23
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Question23 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question23
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Question23 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question23
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Question23> selectByExample(Question23Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question23
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Question23 record, @Param("example") Question23Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question23
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Question23 record, @Param("example") Question23Example example);
}