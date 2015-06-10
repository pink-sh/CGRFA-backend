package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Species;
import org.fao.fir.cgrfa.dao.mapper.model.SpeciesExample;

public interface SpeciesMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Species
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int countByExample(SpeciesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Species
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int deleteByExample(SpeciesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Species
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Species
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int insert(Species record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Species
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int insertSelective(Species record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Species
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    List<Species> selectByExample(SpeciesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Species
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    Species selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Species
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int updateByExampleSelective(@Param("record") Species record, @Param("example") SpeciesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Species
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int updateByExample(@Param("record") Species record, @Param("example") SpeciesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Species
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int updateByPrimaryKeySelective(Species record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Species
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int updateByPrimaryKey(Species record);
}