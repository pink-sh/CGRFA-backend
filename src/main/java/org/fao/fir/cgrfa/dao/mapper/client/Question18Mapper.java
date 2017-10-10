package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Question18;
import org.fao.fir.cgrfa.dao.mapper.model.Question18Example;

public interface Question18Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question18
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(Question18Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question18
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(Question18Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question18
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Question18 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question18
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Question18 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question18
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Question18> selectByExample(Question18Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question18
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Question18 record, @Param("example") Question18Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question18
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Question18 record, @Param("example") Question18Example example);
}