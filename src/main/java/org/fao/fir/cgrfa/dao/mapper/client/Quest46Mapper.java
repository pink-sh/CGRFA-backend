package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Quest46;
import org.fao.fir.cgrfa.dao.mapper.model.Quest46Example;

public interface Quest46Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest46
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    long countByExample(Quest46Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest46
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int deleteByExample(Quest46Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest46
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insert(Quest46 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest46
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insertSelective(Quest46 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest46
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    List<Quest46> selectByExample(Quest46Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest46
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Quest46 record, @Param("example") Quest46Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest46
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExample(@Param("record") Quest46 record, @Param("example") Quest46Example example);
}