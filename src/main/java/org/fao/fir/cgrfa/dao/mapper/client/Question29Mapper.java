package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Question29;
import org.fao.fir.cgrfa.dao.mapper.model.Question29Example;

public interface Question29Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question29
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(Question29Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question29
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(Question29Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question29
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Question29 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question29
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Question29 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question29
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Question29> selectByExample(Question29Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question29
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Question29 record, @Param("example") Question29Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question29
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Question29 record, @Param("example") Question29Example example);
}