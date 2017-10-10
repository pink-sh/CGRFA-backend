package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Question26;
import org.fao.fir.cgrfa.dao.mapper.model.Question26Example;

public interface Question26Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question26
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(Question26Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question26
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(Question26Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question26
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Question26 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question26
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Question26 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question26
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Question26> selectByExample(Question26Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question26
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Question26 record, @Param("example") Question26Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question26
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Question26 record, @Param("example") Question26Example example);
}