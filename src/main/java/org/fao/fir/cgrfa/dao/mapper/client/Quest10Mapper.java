package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Quest10;
import org.fao.fir.cgrfa.dao.mapper.model.Quest10Example;

public interface Quest10Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest10
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    long countByExample(Quest10Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest10
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int deleteByExample(Quest10Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest10
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insert(Quest10 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest10
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insertSelective(Quest10 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest10
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    List<Quest10> selectByExample(Quest10Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest10
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Quest10 record, @Param("example") Quest10Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest10
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExample(@Param("record") Quest10 record, @Param("example") Quest10Example example);
}