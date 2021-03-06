package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Quest35;
import org.fao.fir.cgrfa.dao.mapper.model.Quest35Example;

public interface Quest35Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest35
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    long countByExample(Quest35Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest35
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int deleteByExample(Quest35Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest35
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insert(Quest35 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest35
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insertSelective(Quest35 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest35
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    List<Quest35> selectByExample(Quest35Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest35
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Quest35 record, @Param("example") Quest35Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest35
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExample(@Param("record") Quest35 record, @Param("example") Quest35Example example);
}