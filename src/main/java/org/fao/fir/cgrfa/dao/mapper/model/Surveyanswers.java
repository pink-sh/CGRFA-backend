package org.fao.fir.cgrfa.dao.mapper.model;

public class Surveyanswers {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.SurveyAnswers.ID
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.SurveyAnswers.survey_id
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    private Integer surveyId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.SurveyAnswers.field_id
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    private Integer fieldId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.SurveyAnswers.table_id
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    private Integer tableId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.SurveyAnswers.field
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    private String field;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.SurveyAnswers.value
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    private String value;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.SurveyAnswers.table_row_id
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    private Integer tableRowId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.SurveyAnswers.table_row_multi_sort
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    private Integer tableRowMultiSort;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.SurveyAnswers.deleted
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    private Integer deleted;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.SurveyAnswers.ID
     *
     * @return the value of public.SurveyAnswers.ID
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.SurveyAnswers.ID
     *
     * @param id the value for public.SurveyAnswers.ID
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.SurveyAnswers.survey_id
     *
     * @return the value of public.SurveyAnswers.survey_id
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    public Integer getSurveyId() {
        return surveyId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.SurveyAnswers.survey_id
     *
     * @param surveyId the value for public.SurveyAnswers.survey_id
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    public void setSurveyId(Integer surveyId) {
        this.surveyId = surveyId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.SurveyAnswers.field_id
     *
     * @return the value of public.SurveyAnswers.field_id
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    public Integer getFieldId() {
        return fieldId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.SurveyAnswers.field_id
     *
     * @param fieldId the value for public.SurveyAnswers.field_id
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    public void setFieldId(Integer fieldId) {
        this.fieldId = fieldId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.SurveyAnswers.table_id
     *
     * @return the value of public.SurveyAnswers.table_id
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    public Integer getTableId() {
        return tableId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.SurveyAnswers.table_id
     *
     * @param tableId the value for public.SurveyAnswers.table_id
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    public void setTableId(Integer tableId) {
        this.tableId = tableId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.SurveyAnswers.field
     *
     * @return the value of public.SurveyAnswers.field
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    public String getField() {
        return field;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.SurveyAnswers.field
     *
     * @param field the value for public.SurveyAnswers.field
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    public void setField(String field) {
        this.field = field == null ? null : field.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.SurveyAnswers.value
     *
     * @return the value of public.SurveyAnswers.value
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    public String getValue() {
        return value;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.SurveyAnswers.value
     *
     * @param value the value for public.SurveyAnswers.value
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    public void setValue(String value) {
        this.value = value == null ? null : value.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.SurveyAnswers.table_row_id
     *
     * @return the value of public.SurveyAnswers.table_row_id
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    public Integer getTableRowId() {
        return tableRowId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.SurveyAnswers.table_row_id
     *
     * @param tableRowId the value for public.SurveyAnswers.table_row_id
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    public void setTableRowId(Integer tableRowId) {
        this.tableRowId = tableRowId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.SurveyAnswers.table_row_multi_sort
     *
     * @return the value of public.SurveyAnswers.table_row_multi_sort
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    public Integer getTableRowMultiSort() {
        return tableRowMultiSort;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.SurveyAnswers.table_row_multi_sort
     *
     * @param tableRowMultiSort the value for public.SurveyAnswers.table_row_multi_sort
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    public void setTableRowMultiSort(Integer tableRowMultiSort) {
        this.tableRowMultiSort = tableRowMultiSort;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.SurveyAnswers.deleted
     *
     * @return the value of public.SurveyAnswers.deleted
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    public Integer getDeleted() {
        return deleted;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.SurveyAnswers.deleted
     *
     * @param deleted the value for public.SurveyAnswers.deleted
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }
}