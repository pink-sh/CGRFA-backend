package org.fao.fir.cgrfa.dao.mapper.model;

public class Questionstables {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.QuestionsTables.ID
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.QuestionsTables.name
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    private String name;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.QuestionsTables.columns
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    private Integer columns;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.QuestionsTables.rows
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    private Integer rows;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.QuestionsTables.ID
     *
     * @return the value of public.QuestionsTables.ID
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.QuestionsTables.ID
     *
     * @param id the value for public.QuestionsTables.ID
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.QuestionsTables.name
     *
     * @return the value of public.QuestionsTables.name
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.QuestionsTables.name
     *
     * @param name the value for public.QuestionsTables.name
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.QuestionsTables.columns
     *
     * @return the value of public.QuestionsTables.columns
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public Integer getColumns() {
        return columns;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.QuestionsTables.columns
     *
     * @param columns the value for public.QuestionsTables.columns
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public void setColumns(Integer columns) {
        this.columns = columns;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.QuestionsTables.rows
     *
     * @return the value of public.QuestionsTables.rows
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public Integer getRows() {
        return rows;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.QuestionsTables.rows
     *
     * @param rows the value for public.QuestionsTables.rows
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public void setRows(Integer rows) {
        this.rows = rows;
    }
}