package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Quest12;
import org.fao.fir.cgrfa.dao.mapper.model.Quest12Example;

public interface Quest12Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest12
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    long countByExample(Quest12Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest12
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int deleteByExample(Quest12Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest12
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insert(Quest12 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest12
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insertSelective(Quest12 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest12
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    List<Quest12> selectByExample(Quest12Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest12
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Quest12 record, @Param("example") Quest12Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest12
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExample(@Param("record") Quest12 record, @Param("example") Quest12Example example);
}