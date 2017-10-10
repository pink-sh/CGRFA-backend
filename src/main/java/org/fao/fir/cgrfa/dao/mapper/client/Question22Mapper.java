package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Question22;
import org.fao.fir.cgrfa.dao.mapper.model.Question22Example;

public interface Question22Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question22
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(Question22Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question22
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(Question22Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question22
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Question22 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question22
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Question22 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question22
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Question22> selectByExample(Question22Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question22
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Question22 record, @Param("example") Question22Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question22
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Question22 record, @Param("example") Question22Example example);
}