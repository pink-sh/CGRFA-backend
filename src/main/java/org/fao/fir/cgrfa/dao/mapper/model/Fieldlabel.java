package org.fao.fir.cgrfa.dao.mapper.model;

public class Fieldlabel extends FieldlabelKey {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.FieldLabel.label
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    private String label;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.FieldLabel.ord
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    private Integer ord;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.FieldLabel.label
     *
     * @return the value of public.FieldLabel.label
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public String getLabel() {
        return label;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.FieldLabel.label
     *
     * @param label the value for public.FieldLabel.label
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setLabel(String label) {
        this.label = label == null ? null : label.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.FieldLabel.ord
     *
     * @return the value of public.FieldLabel.ord
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public Integer getOrd() {
        return ord;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.FieldLabel.ord
     *
     * @param ord the value for public.FieldLabel.ord
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setOrd(Integer ord) {
        this.ord = ord;
    }
}