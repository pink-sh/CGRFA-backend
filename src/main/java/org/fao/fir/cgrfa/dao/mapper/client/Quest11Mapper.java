package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Quest11;
import org.fao.fir.cgrfa.dao.mapper.model.Quest11Example;

public interface Quest11Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest11
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    long countByExample(Quest11Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest11
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int deleteByExample(Quest11Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest11
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insert(Quest11 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest11
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insertSelective(Quest11 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest11
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    List<Quest11> selectByExample(Quest11Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest11
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Quest11 record, @Param("example") Quest11Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest11
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExample(@Param("record") Quest11 record, @Param("example") Quest11Example example);
}