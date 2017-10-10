package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Quest23;
import org.fao.fir.cgrfa.dao.mapper.model.Quest23Example;

public interface Quest23Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest23
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    long countByExample(Quest23Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest23
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int deleteByExample(Quest23Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest23
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insert(Quest23 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest23
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insertSelective(Quest23 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest23
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    List<Quest23> selectByExample(Quest23Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest23
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Quest23 record, @Param("example") Quest23Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest23
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExample(@Param("record") Quest23 record, @Param("example") Quest23Example example);
}