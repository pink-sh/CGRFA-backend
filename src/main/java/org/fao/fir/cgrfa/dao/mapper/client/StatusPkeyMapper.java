package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.StatusPkey;
import org.fao.fir.cgrfa.dao.mapper.model.StatusPkeyExample;

public interface StatusPkeyMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Status_pkey
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    int countByExample(StatusPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Status_pkey
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    int deleteByExample(StatusPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Status_pkey
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    int insert(StatusPkey record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Status_pkey
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    int insertSelective(StatusPkey record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Status_pkey
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    List<StatusPkey> selectByExample(StatusPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Status_pkey
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    int updateByExampleSelective(@Param("record") StatusPkey record, @Param("example") StatusPkeyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Status_pkey
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    int updateByExample(@Param("record") StatusPkey record, @Param("example") StatusPkeyExample example);
}