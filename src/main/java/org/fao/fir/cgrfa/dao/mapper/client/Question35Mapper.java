package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Question35;
import org.fao.fir.cgrfa.dao.mapper.model.Question35Example;

public interface Question35Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question35
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(Question35Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question35
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(Question35Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question35
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Question35 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question35
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Question35 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question35
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Question35> selectByExample(Question35Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question35
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Question35 record, @Param("example") Question35Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question35
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Question35 record, @Param("example") Question35Example example);
}