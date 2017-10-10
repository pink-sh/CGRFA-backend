package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Quest34;
import org.fao.fir.cgrfa.dao.mapper.model.Quest34Example;

public interface Quest34Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest34
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    long countByExample(Quest34Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest34
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int deleteByExample(Quest34Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest34
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insert(Quest34 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest34
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insertSelective(Quest34 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest34
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    List<Quest34> selectByExample(Quest34Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest34
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Quest34 record, @Param("example") Quest34Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest34
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExample(@Param("record") Quest34 record, @Param("example") Quest34Example example);
}