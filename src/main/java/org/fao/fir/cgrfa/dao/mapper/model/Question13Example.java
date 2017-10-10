package org.fao.fir.cgrfa.dao.mapper.model;

import java.util.ArrayList;
import java.util.List;

public class Question13Example {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table public.Question13
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table public.Question13
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table public.Question13
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question13
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public Question13Example() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question13
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question13
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question13
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question13
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question13
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question13
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question13
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question13
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question13
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question13
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table public.Question13
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andRownumberIsNull() {
            addCriterion("rownumber is null");
            return (Criteria) this;
        }

        public Criteria andRownumberIsNotNull() {
            addCriterion("rownumber is not null");
            return (Criteria) this;
        }

        public Criteria andRownumberEqualTo(Integer value) {
            addCriterion("rownumber =", value, "rownumber");
            return (Criteria) this;
        }

        public Criteria andRownumberNotEqualTo(Integer value) {
            addCriterion("rownumber <>", value, "rownumber");
            return (Criteria) this;
        }

        public Criteria andRownumberGreaterThan(Integer value) {
            addCriterion("rownumber >", value, "rownumber");
            return (Criteria) this;
        }

        public Criteria andRownumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("rownumber >=", value, "rownumber");
            return (Criteria) this;
        }

        public Criteria andRownumberLessThan(Integer value) {
            addCriterion("rownumber <", value, "rownumber");
            return (Criteria) this;
        }

        public Criteria andRownumberLessThanOrEqualTo(Integer value) {
            addCriterion("rownumber <=", value, "rownumber");
            return (Criteria) this;
        }

        public Criteria andRownumberIn(List<Integer> values) {
            addCriterion("rownumber in", values, "rownumber");
            return (Criteria) this;
        }

        public Criteria andRownumberNotIn(List<Integer> values) {
            addCriterion("rownumber not in", values, "rownumber");
            return (Criteria) this;
        }

        public Criteria andRownumberBetween(Integer value1, Integer value2) {
            addCriterion("rownumber between", value1, value2, "rownumber");
            return (Criteria) this;
        }

        public Criteria andRownumberNotBetween(Integer value1, Integer value2) {
            addCriterion("rownumber not between", value1, value2, "rownumber");
            return (Criteria) this;
        }

        public Criteria andCountryIsNull() {
            addCriterion("country is null");
            return (Criteria) this;
        }

        public Criteria andCountryIsNotNull() {
            addCriterion("country is not null");
            return (Criteria) this;
        }

        public Criteria andCountryEqualTo(String value) {
            addCriterion("country =", value, "country");
            return (Criteria) this;
        }

        public Criteria andCountryNotEqualTo(String value) {
            addCriterion("country <>", value, "country");
            return (Criteria) this;
        }

        public Criteria andCountryGreaterThan(String value) {
            addCriterion("country >", value, "country");
            return (Criteria) this;
        }

        public Criteria andCountryGreaterThanOrEqualTo(String value) {
            addCriterion("country >=", value, "country");
            return (Criteria) this;
        }

        public Criteria andCountryLessThan(String value) {
            addCriterion("country <", value, "country");
            return (Criteria) this;
        }

        public Criteria andCountryLessThanOrEqualTo(String value) {
            addCriterion("country <=", value, "country");
            return (Criteria) this;
        }

        public Criteria andCountryLike(String value) {
            addCriterion("country like", value, "country");
            return (Criteria) this;
        }

        public Criteria andCountryNotLike(String value) {
            addCriterion("country not like", value, "country");
            return (Criteria) this;
        }

        public Criteria andCountryIn(List<String> values) {
            addCriterion("country in", values, "country");
            return (Criteria) this;
        }

        public Criteria andCountryNotIn(List<String> values) {
            addCriterion("country not in", values, "country");
            return (Criteria) this;
        }

        public Criteria andCountryBetween(String value1, String value2) {
            addCriterion("country between", value1, value2, "country");
            return (Criteria) this;
        }

        public Criteria andCountryNotBetween(String value1, String value2) {
            addCriterion("country not between", value1, value2, "country");
            return (Criteria) this;
        }

        public Criteria andRegionIsNull() {
            addCriterion("region is null");
            return (Criteria) this;
        }

        public Criteria andRegionIsNotNull() {
            addCriterion("region is not null");
            return (Criteria) this;
        }

        public Criteria andRegionEqualTo(String value) {
            addCriterion("region =", value, "region");
            return (Criteria) this;
        }

        public Criteria andRegionNotEqualTo(String value) {
            addCriterion("region <>", value, "region");
            return (Criteria) this;
        }

        public Criteria andRegionGreaterThan(String value) {
            addCriterion("region >", value, "region");
            return (Criteria) this;
        }

        public Criteria andRegionGreaterThanOrEqualTo(String value) {
            addCriterion("region >=", value, "region");
            return (Criteria) this;
        }

        public Criteria andRegionLessThan(String value) {
            addCriterion("region <", value, "region");
            return (Criteria) this;
        }

        public Criteria andRegionLessThanOrEqualTo(String value) {
            addCriterion("region <=", value, "region");
            return (Criteria) this;
        }

        public Criteria andRegionLike(String value) {
            addCriterion("region like", value, "region");
            return (Criteria) this;
        }

        public Criteria andRegionNotLike(String value) {
            addCriterion("region not like", value, "region");
            return (Criteria) this;
        }

        public Criteria andRegionIn(List<String> values) {
            addCriterion("region in", values, "region");
            return (Criteria) this;
        }

        public Criteria andRegionNotIn(List<String> values) {
            addCriterion("region not in", values, "region");
            return (Criteria) this;
        }

        public Criteria andRegionBetween(String value1, String value2) {
            addCriterion("region between", value1, value2, "region");
            return (Criteria) this;
        }

        public Criteria andRegionNotBetween(String value1, String value2) {
            addCriterion("region not between", value1, value2, "region");
            return (Criteria) this;
        }

        public Criteria andGeographicRegionIsNull() {
            addCriterion("geographic_region is null");
            return (Criteria) this;
        }

        public Criteria andGeographicRegionIsNotNull() {
            addCriterion("geographic_region is not null");
            return (Criteria) this;
        }

        public Criteria andGeographicRegionEqualTo(String value) {
            addCriterion("geographic_region =", value, "geographicRegion");
            return (Criteria) this;
        }

        public Criteria andGeographicRegionNotEqualTo(String value) {
            addCriterion("geographic_region <>", value, "geographicRegion");
            return (Criteria) this;
        }

        public Criteria andGeographicRegionGreaterThan(String value) {
            addCriterion("geographic_region >", value, "geographicRegion");
            return (Criteria) this;
        }

        public Criteria andGeographicRegionGreaterThanOrEqualTo(String value) {
            addCriterion("geographic_region >=", value, "geographicRegion");
            return (Criteria) this;
        }

        public Criteria andGeographicRegionLessThan(String value) {
            addCriterion("geographic_region <", value, "geographicRegion");
            return (Criteria) this;
        }

        public Criteria andGeographicRegionLessThanOrEqualTo(String value) {
            addCriterion("geographic_region <=", value, "geographicRegion");
            return (Criteria) this;
        }

        public Criteria andGeographicRegionLike(String value) {
            addCriterion("geographic_region like", value, "geographicRegion");
            return (Criteria) this;
        }

        public Criteria andGeographicRegionNotLike(String value) {
            addCriterion("geographic_region not like", value, "geographicRegion");
            return (Criteria) this;
        }

        public Criteria andGeographicRegionIn(List<String> values) {
            addCriterion("geographic_region in", values, "geographicRegion");
            return (Criteria) this;
        }

        public Criteria andGeographicRegionNotIn(List<String> values) {
            addCriterion("geographic_region not in", values, "geographicRegion");
            return (Criteria) this;
        }

        public Criteria andGeographicRegionBetween(String value1, String value2) {
            addCriterion("geographic_region between", value1, value2, "geographicRegion");
            return (Criteria) this;
        }

        public Criteria andGeographicRegionNotBetween(String value1, String value2) {
            addCriterion("geographic_region not between", value1, value2, "geographicRegion");
            return (Criteria) this;
        }

        public Criteria andEconomicRegionIsNull() {
            addCriterion("economic_region is null");
            return (Criteria) this;
        }

        public Criteria andEconomicRegionIsNotNull() {
            addCriterion("economic_region is not null");
            return (Criteria) this;
        }

        public Criteria andEconomicRegionEqualTo(String value) {
            addCriterion("economic_region =", value, "economicRegion");
            return (Criteria) this;
        }

        public Criteria andEconomicRegionNotEqualTo(String value) {
            addCriterion("economic_region <>", value, "economicRegion");
            return (Criteria) this;
        }

        public Criteria andEconomicRegionGreaterThan(String value) {
            addCriterion("economic_region >", value, "economicRegion");
            return (Criteria) this;
        }

        public Criteria andEconomicRegionGreaterThanOrEqualTo(String value) {
            addCriterion("economic_region >=", value, "economicRegion");
            return (Criteria) this;
        }

        public Criteria andEconomicRegionLessThan(String value) {
            addCriterion("economic_region <", value, "economicRegion");
            return (Criteria) this;
        }

        public Criteria andEconomicRegionLessThanOrEqualTo(String value) {
            addCriterion("economic_region <=", value, "economicRegion");
            return (Criteria) this;
        }

        public Criteria andEconomicRegionLike(String value) {
            addCriterion("economic_region like", value, "economicRegion");
            return (Criteria) this;
        }

        public Criteria andEconomicRegionNotLike(String value) {
            addCriterion("economic_region not like", value, "economicRegion");
            return (Criteria) this;
        }

        public Criteria andEconomicRegionIn(List<String> values) {
            addCriterion("economic_region in", values, "economicRegion");
            return (Criteria) this;
        }

        public Criteria andEconomicRegionNotIn(List<String> values) {
            addCriterion("economic_region not in", values, "economicRegion");
            return (Criteria) this;
        }

        public Criteria andEconomicRegionBetween(String value1, String value2) {
            addCriterion("economic_region between", value1, value2, "economicRegion");
            return (Criteria) this;
        }

        public Criteria andEconomicRegionNotBetween(String value1, String value2) {
            addCriterion("economic_region not between", value1, value2, "economicRegion");
            return (Criteria) this;
        }

        public Criteria andSpeciesCodeIsNull() {
            addCriterion("species_code is null");
            return (Criteria) this;
        }

        public Criteria andSpeciesCodeIsNotNull() {
            addCriterion("species_code is not null");
            return (Criteria) this;
        }

        public Criteria andSpeciesCodeEqualTo(String value) {
            addCriterion("species_code =", value, "speciesCode");
            return (Criteria) this;
        }

        public Criteria andSpeciesCodeNotEqualTo(String value) {
            addCriterion("species_code <>", value, "speciesCode");
            return (Criteria) this;
        }

        public Criteria andSpeciesCodeGreaterThan(String value) {
            addCriterion("species_code >", value, "speciesCode");
            return (Criteria) this;
        }

        public Criteria andSpeciesCodeGreaterThanOrEqualTo(String value) {
            addCriterion("species_code >=", value, "speciesCode");
            return (Criteria) this;
        }

        public Criteria andSpeciesCodeLessThan(String value) {
            addCriterion("species_code <", value, "speciesCode");
            return (Criteria) this;
        }

        public Criteria andSpeciesCodeLessThanOrEqualTo(String value) {
            addCriterion("species_code <=", value, "speciesCode");
            return (Criteria) this;
        }

        public Criteria andSpeciesCodeLike(String value) {
            addCriterion("species_code like", value, "speciesCode");
            return (Criteria) this;
        }

        public Criteria andSpeciesCodeNotLike(String value) {
            addCriterion("species_code not like", value, "speciesCode");
            return (Criteria) this;
        }

        public Criteria andSpeciesCodeIn(List<String> values) {
            addCriterion("species_code in", values, "speciesCode");
            return (Criteria) this;
        }

        public Criteria andSpeciesCodeNotIn(List<String> values) {
            addCriterion("species_code not in", values, "speciesCode");
            return (Criteria) this;
        }

        public Criteria andSpeciesCodeBetween(String value1, String value2) {
            addCriterion("species_code between", value1, value2, "speciesCode");
            return (Criteria) this;
        }

        public Criteria andSpeciesCodeNotBetween(String value1, String value2) {
            addCriterion("species_code not between", value1, value2, "speciesCode");
            return (Criteria) this;
        }

        public Criteria andSpeciesIsNull() {
            addCriterion("species is null");
            return (Criteria) this;
        }

        public Criteria andSpeciesIsNotNull() {
            addCriterion("species is not null");
            return (Criteria) this;
        }

        public Criteria andSpeciesEqualTo(String value) {
            addCriterion("species =", value, "species");
            return (Criteria) this;
        }

        public Criteria andSpeciesNotEqualTo(String value) {
            addCriterion("species <>", value, "species");
            return (Criteria) this;
        }

        public Criteria andSpeciesGreaterThan(String value) {
            addCriterion("species >", value, "species");
            return (Criteria) this;
        }

        public Criteria andSpeciesGreaterThanOrEqualTo(String value) {
            addCriterion("species >=", value, "species");
            return (Criteria) this;
        }

        public Criteria andSpeciesLessThan(String value) {
            addCriterion("species <", value, "species");
            return (Criteria) this;
        }

        public Criteria andSpeciesLessThanOrEqualTo(String value) {
            addCriterion("species <=", value, "species");
            return (Criteria) this;
        }

        public Criteria andSpeciesLike(String value) {
            addCriterion("species like", value, "species");
            return (Criteria) this;
        }

        public Criteria andSpeciesNotLike(String value) {
            addCriterion("species not like", value, "species");
            return (Criteria) this;
        }

        public Criteria andSpeciesIn(List<String> values) {
            addCriterion("species in", values, "species");
            return (Criteria) this;
        }

        public Criteria andSpeciesNotIn(List<String> values) {
            addCriterion("species not in", values, "species");
            return (Criteria) this;
        }

        public Criteria andSpeciesBetween(String value1, String value2) {
            addCriterion("species between", value1, value2, "species");
            return (Criteria) this;
        }

        public Criteria andSpeciesNotBetween(String value1, String value2) {
            addCriterion("species not between", value1, value2, "species");
            return (Criteria) this;
        }

        public Criteria andScientificNameIsNull() {
            addCriterion("scientific_name is null");
            return (Criteria) this;
        }

        public Criteria andScientificNameIsNotNull() {
            addCriterion("scientific_name is not null");
            return (Criteria) this;
        }

        public Criteria andScientificNameEqualTo(String value) {
            addCriterion("scientific_name =", value, "scientificName");
            return (Criteria) this;
        }

        public Criteria andScientificNameNotEqualTo(String value) {
            addCriterion("scientific_name <>", value, "scientificName");
            return (Criteria) this;
        }

        public Criteria andScientificNameGreaterThan(String value) {
            addCriterion("scientific_name >", value, "scientificName");
            return (Criteria) this;
        }

        public Criteria andScientificNameGreaterThanOrEqualTo(String value) {
            addCriterion("scientific_name >=", value, "scientificName");
            return (Criteria) this;
        }

        public Criteria andScientificNameLessThan(String value) {
            addCriterion("scientific_name <", value, "scientificName");
            return (Criteria) this;
        }

        public Criteria andScientificNameLessThanOrEqualTo(String value) {
            addCriterion("scientific_name <=", value, "scientificName");
            return (Criteria) this;
        }

        public Criteria andScientificNameLike(String value) {
            addCriterion("scientific_name like", value, "scientificName");
            return (Criteria) this;
        }

        public Criteria andScientificNameNotLike(String value) {
            addCriterion("scientific_name not like", value, "scientificName");
            return (Criteria) this;
        }

        public Criteria andScientificNameIn(List<String> values) {
            addCriterion("scientific_name in", values, "scientificName");
            return (Criteria) this;
        }

        public Criteria andScientificNameNotIn(List<String> values) {
            addCriterion("scientific_name not in", values, "scientificName");
            return (Criteria) this;
        }

        public Criteria andScientificNameBetween(String value1, String value2) {
            addCriterion("scientific_name between", value1, value2, "scientificName");
            return (Criteria) this;
        }

        public Criteria andScientificNameNotBetween(String value1, String value2) {
            addCriterion("scientific_name not between", value1, value2, "scientificName");
            return (Criteria) this;
        }

        public Criteria andDetailsOfTransferOrExchangeIsNull() {
            addCriterion("details_of_transfer_or_exchange is null");
            return (Criteria) this;
        }

        public Criteria andDetailsOfTransferOrExchangeIsNotNull() {
            addCriterion("details_of_transfer_or_exchange is not null");
            return (Criteria) this;
        }

        public Criteria andDetailsOfTransferOrExchangeEqualTo(String value) {
            addCriterion("details_of_transfer_or_exchange =", value, "detailsOfTransferOrExchange");
            return (Criteria) this;
        }

        public Criteria andDetailsOfTransferOrExchangeNotEqualTo(String value) {
            addCriterion("details_of_transfer_or_exchange <>", value, "detailsOfTransferOrExchange");
            return (Criteria) this;
        }

        public Criteria andDetailsOfTransferOrExchangeGreaterThan(String value) {
            addCriterion("details_of_transfer_or_exchange >", value, "detailsOfTransferOrExchange");
            return (Criteria) this;
        }

        public Criteria andDetailsOfTransferOrExchangeGreaterThanOrEqualTo(String value) {
            addCriterion("details_of_transfer_or_exchange >=", value, "detailsOfTransferOrExchange");
            return (Criteria) this;
        }

        public Criteria andDetailsOfTransferOrExchangeLessThan(String value) {
            addCriterion("details_of_transfer_or_exchange <", value, "detailsOfTransferOrExchange");
            return (Criteria) this;
        }

        public Criteria andDetailsOfTransferOrExchangeLessThanOrEqualTo(String value) {
            addCriterion("details_of_transfer_or_exchange <=", value, "detailsOfTransferOrExchange");
            return (Criteria) this;
        }

        public Criteria andDetailsOfTransferOrExchangeLike(String value) {
            addCriterion("details_of_transfer_or_exchange like", value, "detailsOfTransferOrExchange");
            return (Criteria) this;
        }

        public Criteria andDetailsOfTransferOrExchangeNotLike(String value) {
            addCriterion("details_of_transfer_or_exchange not like", value, "detailsOfTransferOrExchange");
            return (Criteria) this;
        }

        public Criteria andDetailsOfTransferOrExchangeIn(List<String> values) {
            addCriterion("details_of_transfer_or_exchange in", values, "detailsOfTransferOrExchange");
            return (Criteria) this;
        }

        public Criteria andDetailsOfTransferOrExchangeNotIn(List<String> values) {
            addCriterion("details_of_transfer_or_exchange not in", values, "detailsOfTransferOrExchange");
            return (Criteria) this;
        }

        public Criteria andDetailsOfTransferOrExchangeBetween(String value1, String value2) {
            addCriterion("details_of_transfer_or_exchange between", value1, value2, "detailsOfTransferOrExchange");
            return (Criteria) this;
        }

        public Criteria andDetailsOfTransferOrExchangeNotBetween(String value1, String value2) {
            addCriterion("details_of_transfer_or_exchange not between", value1, value2, "detailsOfTransferOrExchange");
            return (Criteria) this;
        }

        public Criteria andTypeOfGeneticMaterialExchangedIsNull() {
            addCriterion("type_of_genetic_material_exchanged is null");
            return (Criteria) this;
        }

        public Criteria andTypeOfGeneticMaterialExchangedIsNotNull() {
            addCriterion("type_of_genetic_material_exchanged is not null");
            return (Criteria) this;
        }

        public Criteria andTypeOfGeneticMaterialExchangedEqualTo(String value) {
            addCriterion("type_of_genetic_material_exchanged =", value, "typeOfGeneticMaterialExchanged");
            return (Criteria) this;
        }

        public Criteria andTypeOfGeneticMaterialExchangedNotEqualTo(String value) {
            addCriterion("type_of_genetic_material_exchanged <>", value, "typeOfGeneticMaterialExchanged");
            return (Criteria) this;
        }

        public Criteria andTypeOfGeneticMaterialExchangedGreaterThan(String value) {
            addCriterion("type_of_genetic_material_exchanged >", value, "typeOfGeneticMaterialExchanged");
            return (Criteria) this;
        }

        public Criteria andTypeOfGeneticMaterialExchangedGreaterThanOrEqualTo(String value) {
            addCriterion("type_of_genetic_material_exchanged >=", value, "typeOfGeneticMaterialExchanged");
            return (Criteria) this;
        }

        public Criteria andTypeOfGeneticMaterialExchangedLessThan(String value) {
            addCriterion("type_of_genetic_material_exchanged <", value, "typeOfGeneticMaterialExchanged");
            return (Criteria) this;
        }

        public Criteria andTypeOfGeneticMaterialExchangedLessThanOrEqualTo(String value) {
            addCriterion("type_of_genetic_material_exchanged <=", value, "typeOfGeneticMaterialExchanged");
            return (Criteria) this;
        }

        public Criteria andTypeOfGeneticMaterialExchangedLike(String value) {
            addCriterion("type_of_genetic_material_exchanged like", value, "typeOfGeneticMaterialExchanged");
            return (Criteria) this;
        }

        public Criteria andTypeOfGeneticMaterialExchangedNotLike(String value) {
            addCriterion("type_of_genetic_material_exchanged not like", value, "typeOfGeneticMaterialExchanged");
            return (Criteria) this;
        }

        public Criteria andTypeOfGeneticMaterialExchangedIn(List<String> values) {
            addCriterion("type_of_genetic_material_exchanged in", values, "typeOfGeneticMaterialExchanged");
            return (Criteria) this;
        }

        public Criteria andTypeOfGeneticMaterialExchangedNotIn(List<String> values) {
            addCriterion("type_of_genetic_material_exchanged not in", values, "typeOfGeneticMaterialExchanged");
            return (Criteria) this;
        }

        public Criteria andTypeOfGeneticMaterialExchangedBetween(String value1, String value2) {
            addCriterion("type_of_genetic_material_exchanged between", value1, value2, "typeOfGeneticMaterialExchanged");
            return (Criteria) this;
        }

        public Criteria andTypeOfGeneticMaterialExchangedNotBetween(String value1, String value2) {
            addCriterion("type_of_genetic_material_exchanged not between", value1, value2, "typeOfGeneticMaterialExchanged");
            return (Criteria) this;
        }

        public Criteria andCountryExchangeIsNull() {
            addCriterion("country_exchange is null");
            return (Criteria) this;
        }

        public Criteria andCountryExchangeIsNotNull() {
            addCriterion("country_exchange is not null");
            return (Criteria) this;
        }

        public Criteria andCountryExchangeEqualTo(String value) {
            addCriterion("country_exchange =", value, "countryExchange");
            return (Criteria) this;
        }

        public Criteria andCountryExchangeNotEqualTo(String value) {
            addCriterion("country_exchange <>", value, "countryExchange");
            return (Criteria) this;
        }

        public Criteria andCountryExchangeGreaterThan(String value) {
            addCriterion("country_exchange >", value, "countryExchange");
            return (Criteria) this;
        }

        public Criteria andCountryExchangeGreaterThanOrEqualTo(String value) {
            addCriterion("country_exchange >=", value, "countryExchange");
            return (Criteria) this;
        }

        public Criteria andCountryExchangeLessThan(String value) {
            addCriterion("country_exchange <", value, "countryExchange");
            return (Criteria) this;
        }

        public Criteria andCountryExchangeLessThanOrEqualTo(String value) {
            addCriterion("country_exchange <=", value, "countryExchange");
            return (Criteria) this;
        }

        public Criteria andCountryExchangeLike(String value) {
            addCriterion("country_exchange like", value, "countryExchange");
            return (Criteria) this;
        }

        public Criteria andCountryExchangeNotLike(String value) {
            addCriterion("country_exchange not like", value, "countryExchange");
            return (Criteria) this;
        }

        public Criteria andCountryExchangeIn(List<String> values) {
            addCriterion("country_exchange in", values, "countryExchange");
            return (Criteria) this;
        }

        public Criteria andCountryExchangeNotIn(List<String> values) {
            addCriterion("country_exchange not in", values, "countryExchange");
            return (Criteria) this;
        }

        public Criteria andCountryExchangeBetween(String value1, String value2) {
            addCriterion("country_exchange between", value1, value2, "countryExchange");
            return (Criteria) this;
        }

        public Criteria andCountryExchangeNotBetween(String value1, String value2) {
            addCriterion("country_exchange not between", value1, value2, "countryExchange");
            return (Criteria) this;
        }

        public Criteria andCommentsIsNull() {
            addCriterion("comments is null");
            return (Criteria) this;
        }

        public Criteria andCommentsIsNotNull() {
            addCriterion("comments is not null");
            return (Criteria) this;
        }

        public Criteria andCommentsEqualTo(String value) {
            addCriterion("comments =", value, "comments");
            return (Criteria) this;
        }

        public Criteria andCommentsNotEqualTo(String value) {
            addCriterion("comments <>", value, "comments");
            return (Criteria) this;
        }

        public Criteria andCommentsGreaterThan(String value) {
            addCriterion("comments >", value, "comments");
            return (Criteria) this;
        }

        public Criteria andCommentsGreaterThanOrEqualTo(String value) {
            addCriterion("comments >=", value, "comments");
            return (Criteria) this;
        }

        public Criteria andCommentsLessThan(String value) {
            addCriterion("comments <", value, "comments");
            return (Criteria) this;
        }

        public Criteria andCommentsLessThanOrEqualTo(String value) {
            addCriterion("comments <=", value, "comments");
            return (Criteria) this;
        }

        public Criteria andCommentsLike(String value) {
            addCriterion("comments like", value, "comments");
            return (Criteria) this;
        }

        public Criteria andCommentsNotLike(String value) {
            addCriterion("comments not like", value, "comments");
            return (Criteria) this;
        }

        public Criteria andCommentsIn(List<String> values) {
            addCriterion("comments in", values, "comments");
            return (Criteria) this;
        }

        public Criteria andCommentsNotIn(List<String> values) {
            addCriterion("comments not in", values, "comments");
            return (Criteria) this;
        }

        public Criteria andCommentsBetween(String value1, String value2) {
            addCriterion("comments between", value1, value2, "comments");
            return (Criteria) this;
        }

        public Criteria andCommentsNotBetween(String value1, String value2) {
            addCriterion("comments not between", value1, value2, "comments");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table public.Question13
     *
     * @mbg.generated do_not_delete_during_merge Tue Oct 10 14:03:47 CEST 2017
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table public.Question13
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}