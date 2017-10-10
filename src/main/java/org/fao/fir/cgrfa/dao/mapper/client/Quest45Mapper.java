package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Quest45;
import org.fao.fir.cgrfa.dao.mapper.model.Quest45Example;

public interface Quest45Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest45
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    long countByExample(Quest45Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest45
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int deleteByExample(Quest45Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest45
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insert(Quest45 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest45
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int insertSelective(Quest45 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest45
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    List<Quest45> selectByExample(Quest45Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest45
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Quest45 record, @Param("example") Quest45Example example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest45
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    int updateByExample(@Param("record") Quest45 record, @Param("example") Quest45Example example);
}