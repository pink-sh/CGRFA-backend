package org.fao.fir.cgrfa.dao.mapper.model;

public class Region {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.Region.Code
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    private Integer code;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.Region.English
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    private String english;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.Region.French
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    private String french;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.Region.Spanish
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    private String spanish;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.Region.Code
     *
     * @return the value of public.Region.Code
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public Integer getCode() {
        return code;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.Region.Code
     *
     * @param code the value for public.Region.Code
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setCode(Integer code) {
        this.code = code;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.Region.English
     *
     * @return the value of public.Region.English
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public String getEnglish() {
        return english;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.Region.English
     *
     * @param english the value for public.Region.English
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setEnglish(String english) {
        this.english = english == null ? null : english.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.Region.French
     *
     * @return the value of public.Region.French
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public String getFrench() {
        return french;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.Region.French
     *
     * @param french the value for public.Region.French
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setFrench(String french) {
        this.french = french == null ? null : french.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.Region.Spanish
     *
     * @return the value of public.Region.Spanish
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public String getSpanish() {
        return spanish;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.Region.Spanish
     *
     * @param spanish the value for public.Region.Spanish
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setSpanish(String spanish) {
        this.spanish = spanish == null ? null : spanish.trim();
    }
}