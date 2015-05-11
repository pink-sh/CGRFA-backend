package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.ControlledlistsPkey;
import org.fao.fir.cgrfa.dao.mapper.model.ControlledlistsPkeyExample;

public interface ControlledlistsPkeyMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.ControlledLists_pkey
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    int countByExample(ControlledlistsPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.ControlledLists_pkey
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    int deleteByExample(ControlledlistsPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.ControlledLists_pkey
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    int insert(ControlledlistsPkey record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.ControlledLists_pkey
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    int insertSelective(ControlledlistsPkey record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.ControlledLists_pkey
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    List<ControlledlistsPkey> selectByExample(ControlledlistsPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.ControlledLists_pkey
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    int updateByExampleSelective(@Param("record") ControlledlistsPkey record, @Param("example") ControlledlistsPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.ControlledLists_pkey
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    int updateByExample(@Param("record") ControlledlistsPkey record, @Param("example") ControlledlistsPkeyExample example);
}