package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Flatspeciesanswers;
import org.fao.fir.cgrfa.dao.mapper.model.FlatspeciesanswersExample;

public interface FlatspeciesanswersMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.FlatSpeciesAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(FlatspeciesanswersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.FlatSpeciesAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(FlatspeciesanswersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.FlatSpeciesAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Flatspeciesanswers record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.FlatSpeciesAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Flatspeciesanswers record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.FlatSpeciesAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Flatspeciesanswers> selectByExample(FlatspeciesanswersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.FlatSpeciesAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Flatspeciesanswers record, @Param("example") FlatspeciesanswersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.FlatSpeciesAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Flatspeciesanswers record, @Param("example") FlatspeciesanswersExample example);
}