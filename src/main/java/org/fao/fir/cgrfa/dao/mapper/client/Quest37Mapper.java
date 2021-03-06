package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Quest37;
import org.fao.fir.cgrfa.dao.mapper.model.Quest37Example;

public interface Quest37Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest37
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    long countByExample(Quest37Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest37
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int deleteByExample(Quest37Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest37
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insert(Quest37 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest37
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insertSelective(Quest37 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest37
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    List<Quest37> selectByExample(Quest37Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest37
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Quest37 record, @Param("example") Quest37Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest37
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExample(@Param("record") Quest37 record, @Param("example") Quest37Example example);
}