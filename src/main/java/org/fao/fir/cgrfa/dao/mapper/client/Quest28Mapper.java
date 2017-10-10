package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Quest28;
import org.fao.fir.cgrfa.dao.mapper.model.Quest28Example;

public interface Quest28Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest28
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    long countByExample(Quest28Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest28
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int deleteByExample(Quest28Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest28
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insert(Quest28 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest28
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insertSelective(Quest28 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest28
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    List<Quest28> selectByExample(Quest28Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest28
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Quest28 record, @Param("example") Quest28Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest28
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExample(@Param("record") Quest28 record, @Param("example") Quest28Example example);
}