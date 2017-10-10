package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Q117;
import org.fao.fir.cgrfa.dao.mapper.model.Q117Example;

public interface Q117Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Q117
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(Q117Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Q117
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(Q117Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Q117
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Q117 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Q117
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Q117 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Q117
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Q117> selectByExample(Q117Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Q117
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Q117 record, @Param("example") Q117Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Q117
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Q117 record, @Param("example") Q117Example example);
}