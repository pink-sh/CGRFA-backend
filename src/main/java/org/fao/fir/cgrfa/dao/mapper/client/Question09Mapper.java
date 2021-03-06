package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Question09;
import org.fao.fir.cgrfa.dao.mapper.model.Question09Example;

public interface Question09Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question09
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(Question09Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question09
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(Question09Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question09
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Question09 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question09
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Question09 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question09
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Question09> selectByExample(Question09Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question09
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Question09 record, @Param("example") Question09Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question09
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Question09 record, @Param("example") Question09Example example);
}