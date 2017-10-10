package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Q42others;
import org.fao.fir.cgrfa.dao.mapper.model.Q42othersExample;

public interface Q42othersMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Q42Others
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(Q42othersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Q42Others
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(Q42othersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Q42Others
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Q42others record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Q42Others
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Q42others record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Q42Others
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Q42others> selectByExample(Q42othersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Q42Others
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Q42others record, @Param("example") Q42othersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Q42Others
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Q42others record, @Param("example") Q42othersExample example);
}