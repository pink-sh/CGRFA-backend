package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Questiontype;
import org.fao.fir.cgrfa.dao.mapper.model.QuestiontypeExample;

public interface QuestiontypeMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionType
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(QuestiontypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionType
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(QuestiontypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionType
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionType
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Questiontype record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionType
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Questiontype record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionType
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Questiontype> selectByExample(QuestiontypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionType
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    Questiontype selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionType
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Questiontype record, @Param("example") QuestiontypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionType
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Questiontype record, @Param("example") QuestiontypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionType
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByPrimaryKeySelective(Questiontype record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionType
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByPrimaryKey(Questiontype record);
}