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
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int countByExample(QuestiontypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionType
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int deleteByExample(QuestiontypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionType
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionType
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int insert(Questiontype record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionType
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int insertSelective(Questiontype record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionType
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    List<Questiontype> selectByExample(QuestiontypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionType
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    Questiontype selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionType
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int updateByExampleSelective(@Param("record") Questiontype record, @Param("example") QuestiontypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionType
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int updateByExample(@Param("record") Questiontype record, @Param("example") QuestiontypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionType
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int updateByPrimaryKeySelective(Questiontype record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionType
     *
     * @mbggenerated Tue Jun 09 17:34:37 CEST 2015
     */
    int updateByPrimaryKey(Questiontype record);
}