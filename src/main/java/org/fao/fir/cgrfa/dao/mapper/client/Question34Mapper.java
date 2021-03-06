package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Question34;
import org.fao.fir.cgrfa.dao.mapper.model.Question34Example;

public interface Question34Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question34
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(Question34Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question34
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(Question34Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question34
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Question34 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question34
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Question34 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question34
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Question34> selectByExample(Question34Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question34
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Question34 record, @Param("example") Question34Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question34
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Question34 record, @Param("example") Question34Example example);
}