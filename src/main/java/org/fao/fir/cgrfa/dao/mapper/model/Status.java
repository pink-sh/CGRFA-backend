package org.fao.fir.cgrfa.dao.mapper.model;

public class Status {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.Status.ID
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.Status.status
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    private String status;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.Status.ID
     *
     * @return the value of public.Status.ID
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.Status.ID
     *
     * @param id the value for public.Status.ID
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.Status.status
     *
     * @return the value of public.Status.status
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    public String getStatus() {
        return status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.Status.status
     *
     * @param status the value for public.Status.status
     *
     * @mbggenerated Mon May 11 14:33:35 CEST 2015
     */
    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }
}