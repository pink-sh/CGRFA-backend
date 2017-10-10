package org.fao.fir.cgrfa.dao.mapper.model;

public class Surveyfieldanswers {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.SurveyFieldAnswers.ID
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.SurveyFieldAnswers.survey_id
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    private Integer surveyId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.SurveyFieldAnswers.field_id
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    private Integer fieldId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.SurveyFieldAnswers.table_id
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    private Integer tableId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.SurveyFieldAnswers.field
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    private String field;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.SurveyFieldAnswers.value
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    private String value;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.SurveyFieldAnswers.list
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    private Object list;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.SurveyFieldAnswers.table_row_id
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    private Integer tableRowId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.SurveyFieldAnswers.table_row_multi_sort
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    private Integer tableRowMultiSort;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.SurveyFieldAnswers.deleted
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    private Integer deleted;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.SurveyFieldAnswers.value_opt
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    private String valueOpt;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.SurveyFieldAnswers.species
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    private String species;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.SurveyFieldAnswers.ID
     *
     * @return the value of public.SurveyFieldAnswers.ID
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.SurveyFieldAnswers.ID
     *
     * @param id the value for public.SurveyFieldAnswers.ID
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.SurveyFieldAnswers.survey_id
     *
     * @return the value of public.SurveyFieldAnswers.survey_id
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public Integer getSurveyId() {
        return surveyId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.SurveyFieldAnswers.survey_id
     *
     * @param surveyId the value for public.SurveyFieldAnswers.survey_id
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setSurveyId(Integer surveyId) {
        this.surveyId = surveyId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.SurveyFieldAnswers.field_id
     *
     * @return the value of public.SurveyFieldAnswers.field_id
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public Integer getFieldId() {
        return fieldId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.SurveyFieldAnswers.field_id
     *
     * @param fieldId the value for public.SurveyFieldAnswers.field_id
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setFieldId(Integer fieldId) {
        this.fieldId = fieldId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.SurveyFieldAnswers.table_id
     *
     * @return the value of public.SurveyFieldAnswers.table_id
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public Integer getTableId() {
        return tableId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.SurveyFieldAnswers.table_id
     *
     * @param tableId the value for public.SurveyFieldAnswers.table_id
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setTableId(Integer tableId) {
        this.tableId = tableId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.SurveyFieldAnswers.field
     *
     * @return the value of public.SurveyFieldAnswers.field
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public String getField() {
        return field;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.SurveyFieldAnswers.field
     *
     * @param field the value for public.SurveyFieldAnswers.field
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setField(String field) {
        this.field = field == null ? null : field.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.SurveyFieldAnswers.value
     *
     * @return the value of public.SurveyFieldAnswers.value
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public String getValue() {
        return value;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.SurveyFieldAnswers.value
     *
     * @param value the value for public.SurveyFieldAnswers.value
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setValue(String value) {
        this.value = value == null ? null : value.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.SurveyFieldAnswers.list
     *
     * @return the value of public.SurveyFieldAnswers.list
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public Object getList() {
        return list;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.SurveyFieldAnswers.list
     *
     * @param list the value for public.SurveyFieldAnswers.list
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setList(Object list) {
        this.list = list;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.SurveyFieldAnswers.table_row_id
     *
     * @return the value of public.SurveyFieldAnswers.table_row_id
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public Integer getTableRowId() {
        return tableRowId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.SurveyFieldAnswers.table_row_id
     *
     * @param tableRowId the value for public.SurveyFieldAnswers.table_row_id
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setTableRowId(Integer tableRowId) {
        this.tableRowId = tableRowId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.SurveyFieldAnswers.table_row_multi_sort
     *
     * @return the value of public.SurveyFieldAnswers.table_row_multi_sort
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public Integer getTableRowMultiSort() {
        return tableRowMultiSort;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.SurveyFieldAnswers.table_row_multi_sort
     *
     * @param tableRowMultiSort the value for public.SurveyFieldAnswers.table_row_multi_sort
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setTableRowMultiSort(Integer tableRowMultiSort) {
        this.tableRowMultiSort = tableRowMultiSort;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.SurveyFieldAnswers.deleted
     *
     * @return the value of public.SurveyFieldAnswers.deleted
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public Integer getDeleted() {
        return deleted;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.SurveyFieldAnswers.deleted
     *
     * @param deleted the value for public.SurveyFieldAnswers.deleted
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.SurveyFieldAnswers.value_opt
     *
     * @return the value of public.SurveyFieldAnswers.value_opt
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public String getValueOpt() {
        return valueOpt;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.SurveyFieldAnswers.value_opt
     *
     * @param valueOpt the value for public.SurveyFieldAnswers.value_opt
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setValueOpt(String valueOpt) {
        this.valueOpt = valueOpt == null ? null : valueOpt.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.SurveyFieldAnswers.species
     *
     * @return the value of public.SurveyFieldAnswers.species
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public String getSpecies() {
        return species;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.SurveyFieldAnswers.species
     *
     * @param species the value for public.SurveyFieldAnswers.species
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setSpecies(String species) {
        this.species = species == null ? null : species.trim();
    }
}