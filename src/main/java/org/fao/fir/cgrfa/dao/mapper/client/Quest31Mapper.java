package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Quest31;
import org.fao.fir.cgrfa.dao.mapper.model.Quest31Example;

public interface Quest31Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest31
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    long countByExample(Quest31Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest31
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int deleteByExample(Quest31Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest31
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insert(Quest31 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest31
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insertSelective(Quest31 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest31
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    List<Quest31> selectByExample(Quest31Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest31
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Quest31 record, @Param("example") Quest31Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest31
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExample(@Param("record") Quest31 record, @Param("example") Quest31Example example);
}