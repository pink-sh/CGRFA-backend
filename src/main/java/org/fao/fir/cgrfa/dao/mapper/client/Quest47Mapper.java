package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Quest47;
import org.fao.fir.cgrfa.dao.mapper.model.Quest47Example;

public interface Quest47Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest47
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    long countByExample(Quest47Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest47
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int deleteByExample(Quest47Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest47
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insert(Quest47 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest47
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insertSelective(Quest47 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest47
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    List<Quest47> selectByExample(Quest47Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest47
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Quest47 record, @Param("example") Quest47Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest47
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExample(@Param("record") Quest47 record, @Param("example") Quest47Example example);
}