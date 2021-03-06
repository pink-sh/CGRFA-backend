package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Question20;
import org.fao.fir.cgrfa.dao.mapper.model.Question20Example;

public interface Question20Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question20
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(Question20Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question20
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(Question20Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question20
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Question20 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question20
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Question20 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question20
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Question20> selectByExample(Question20Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question20
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Question20 record, @Param("example") Question20Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question20
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Question20 record, @Param("example") Question20Example example);
}