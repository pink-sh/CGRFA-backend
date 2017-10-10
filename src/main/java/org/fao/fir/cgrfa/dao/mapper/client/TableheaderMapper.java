package org.fao.fir.cgrfa.dao.mapper.client;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.fao.fir.cgrfa.dao.mapper.model.Tableheader;
import org.fao.fir.cgrfa.dao.mapper.model.TableheaderExample;

public interface TableheaderMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.TableHeader
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    long countByExample(TableheaderExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.TableHeader
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByExample(TableheaderExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.TableHeader
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int deleteByPrimaryKey(String name);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.TableHeader
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insert(Tableheader record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.TableHeader
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int insertSelective(Tableheader record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.TableHeader
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    List<Tableheader> selectByExample(TableheaderExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.TableHeader
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    Tableheader selectByPrimaryKey(String name);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.TableHeader
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExampleSelective(@Param("record") Tableheader record, @Param("example") TableheaderExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.TableHeader
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByExample(@Param("record") Tableheader record, @Param("example") TableheaderExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.TableHeader
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByPrimaryKeySelective(Tableheader record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.TableHeader
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    int updateByPrimaryKey(Tableheader record);
}