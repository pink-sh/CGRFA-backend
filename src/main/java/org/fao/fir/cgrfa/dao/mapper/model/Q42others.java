package org.fao.fir.cgrfa.dao.mapper.model;

public class Q42others {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.Q42Others.text
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    private String text;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.Q42Others.rank
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    private String rank;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.Q42Others.country
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    private String country;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.Q42Others.text
     *
     * @return the value of public.Q42Others.text
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public String getText() {
        return text;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.Q42Others.text
     *
     * @param text the value for public.Q42Others.text
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setText(String text) {
        this.text = text == null ? null : text.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.Q42Others.rank
     *
     * @return the value of public.Q42Others.rank
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public String getRank() {
        return rank;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.Q42Others.rank
     *
     * @param rank the value for public.Q42Others.rank
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setRank(String rank) {
        this.rank = rank == null ? null : rank.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.Q42Others.country
     *
     * @return the value of public.Q42Others.country
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public String getCountry() {
        return country;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.Q42Others.country
     *
     * @param country the value for public.Q42Others.country
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setCountry(String country) {
        this.country = country == null ? null : country.trim();
    }
}