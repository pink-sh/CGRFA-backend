package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Quest01;
import org.fao.fir.cgrfa.dao.mapper.model.Quest01Example;

public interface Quest01Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest01
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    long countByExample(Quest01Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest01
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int deleteByExample(Quest01Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest01
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insert(Quest01 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest01
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insertSelective(Quest01 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest01
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    List<Quest01> selectByExample(Quest01Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest01
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Quest01 record, @Param("example") Quest01Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest01
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExample(@Param("record") Quest01 record, @Param("example") Quest01Example example);
}