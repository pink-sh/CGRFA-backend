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
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(SpeciesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Species
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(SpeciesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Species
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Species
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Species record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Species
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Species record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Species
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Species> selectByExample(SpeciesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Species
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    Species selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Species
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Species record, @Param("example") SpeciesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Species
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Species record, @Param("example") SpeciesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Species
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByPrimaryKeySelective(Species record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Species
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByPrimaryKey(Species record);
}