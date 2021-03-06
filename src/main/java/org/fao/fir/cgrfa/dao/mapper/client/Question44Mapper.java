package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Question44;
import org.fao.fir.cgrfa.dao.mapper.model.Question44Example;

public interface Question44Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question44
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(Question44Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question44
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(Question44Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question44
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Question44 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question44
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Question44 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question44
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Question44> selectByExample(Question44Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question44
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Question44 record, @Param("example") Question44Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question44
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Question44 record, @Param("example") Question44Example example);
}