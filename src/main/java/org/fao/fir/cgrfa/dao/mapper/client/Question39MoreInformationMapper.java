package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Question39MoreInformation;
import org.fao.fir.cgrfa.dao.mapper.model.Question39MoreInformationExample;

public interface Question39MoreInformationMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question39_more_information
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(Question39MoreInformationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question39_more_information
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(Question39MoreInformationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question39_more_information
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Question39MoreInformation record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question39_more_information
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Question39MoreInformation record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question39_more_information
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Question39MoreInformation> selectByExample(Question39MoreInformationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question39_more_information
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Question39MoreInformation record, @Param("example") Question39MoreInformationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question39_more_information
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Question39MoreInformation record, @Param("example") Question39MoreInformationExample example);
}