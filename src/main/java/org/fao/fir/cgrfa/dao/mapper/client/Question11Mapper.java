package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Question11;
import org.fao.fir.cgrfa.dao.mapper.model.Question11Example;

public interface Question11Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question11
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(Question11Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question11
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(Question11Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question11
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Question11 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question11
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Question11 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question11
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Question11> selectByExample(Question11Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question11
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Question11 record, @Param("example") Question11Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question11
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Question11 record, @Param("example") Question11Example example);
}