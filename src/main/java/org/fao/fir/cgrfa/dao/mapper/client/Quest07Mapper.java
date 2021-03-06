package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Quest07;
import org.fao.fir.cgrfa.dao.mapper.model.Quest07Example;

public interface Quest07Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest07
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    long countByExample(Quest07Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest07
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int deleteByExample(Quest07Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest07
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insert(Quest07 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest07
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insertSelective(Quest07 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest07
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    List<Quest07> selectByExample(Quest07Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest07
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Quest07 record, @Param("example") Quest07Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest07
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExample(@Param("record") Quest07 record, @Param("example") Quest07Example example);
}