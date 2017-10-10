package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Quest02;
import org.fao.fir.cgrfa.dao.mapper.model.Quest02Example;

public interface Quest02Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest02
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    long countByExample(Quest02Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest02
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int deleteByExample(Quest02Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest02
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insert(Quest02 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest02
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insertSelective(Quest02 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest02
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    List<Quest02> selectByExample(Quest02Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest02
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Quest02 record, @Param("example") Quest02Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest02
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExample(@Param("record") Quest02 record, @Param("example") Quest02Example example);
}