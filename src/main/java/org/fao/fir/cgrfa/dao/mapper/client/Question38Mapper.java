package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Question38;
import org.fao.fir.cgrfa.dao.mapper.model.Question38Example;

public interface Question38Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question38
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(Question38Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question38
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(Question38Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question38
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Question38 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question38
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Question38 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question38
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Question38> selectByExample(Question38Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question38
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Question38 record, @Param("example") Question38Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question38
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Question38 record, @Param("example") Question38Example example);
}