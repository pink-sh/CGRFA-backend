package org.fao.fir.cgrfa.dao.mapper.model;

public class Questiontype {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.QuestionType.ID
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.QuestionType.type
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    private String type;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.QuestionType.ID
     *
     * @return the value of public.QuestionType.ID
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.QuestionType.ID
     *
     * @param id the value for public.QuestionType.ID
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.QuestionType.type
     *
     * @return the value of public.QuestionType.type
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public String getType() {
        return type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.QuestionType.type
     *
     * @param type the value for public.QuestionType.type
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }
}