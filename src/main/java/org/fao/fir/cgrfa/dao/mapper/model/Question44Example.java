package org.fao.fir.cgrfa.dao.mapper.model;

import java.util.ArrayList;
import java.util.List;

public class Question44Example {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table public.Question44
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table public.Question44
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table public.Question44
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question44
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public Question44Example() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question44
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question44
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question44
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question44
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question44
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question44
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question44
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
     * This method corresponds to the database table public.Question44
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
     * This method corresponds to the database table public.Question44
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Question44
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
     * This class corresponds to the database table public.Question44
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

        public Criteria andInformationSystemIsNull() {
            addCriterion("information_system is null");
            return (Criteria) this;
        }

        public Criteria andInformationSystemIsNotNull() {
            addCriterion("information_system is not null");
            return (Criteria) this;
        }

        public Criteria andInformationSystemEqualTo(String value) {
            addCriterion("information_system =", value, "informationSystem");
            return (Criteria) this;
        }

        public Criteria andInformationSystemNotEqualTo(String value) {
            addCriterion("information_system <>", value, "informationSystem");
            return (Criteria) this;
        }

        public Criteria andInformationSystemGreaterThan(String value) {
            addCriterion("information_system >", value, "informationSystem");
            return (Criteria) this;
        }

        public Criteria andInformationSystemGreaterThanOrEqualTo(String value) {
            addCriterion("information_system >=", value, "informationSystem");
            return (Criteria) this;
        }

        public Criteria andInformationSystemLessThan(String value) {
            addCriterion("information_system <", value, "informationSystem");
            return (Criteria) this;
        }

        public Criteria andInformationSystemLessThanOrEqualTo(String value) {
            addCriterion("information_system <=", value, "informationSystem");
            return (Criteria) this;
        }

        public Criteria andInformationSystemLike(String value) {
            addCriterion("information_system like", value, "informationSystem");
            return (Criteria) this;
        }

        public Criteria andInformationSystemNotLike(String value) {
            addCriterion("information_system not like", value, "informationSystem");
            return (Criteria) this;
        }

        public Criteria andInformationSystemIn(List<String> values) {
            addCriterion("information_system in", values, "informationSystem");
            return (Criteria) this;
        }

        public Criteria andInformationSystemNotIn(List<String> values) {
            addCriterion("information_system not in", values, "informationSystem");
            return (Criteria) this;
        }

        public Criteria andInformationSystemBetween(String value1, String value2) {
            addCriterion("information_system between", value1, value2, "informationSystem");
            return (Criteria) this;
        }

        public Criteria andInformationSystemNotBetween(String value1, String value2) {
            addCriterion("information_system not between", value1, value2, "informationSystem");
            return (Criteria) this;
        }

        public Criteria andTypeOfInformationStoredIsNull() {
            addCriterion("type_of_information_stored is null");
            return (Criteria) this;
        }

        public Criteria andTypeOfInformationStoredIsNotNull() {
            addCriterion("type_of_information_stored is not null");
            return (Criteria) this;
        }

        public Criteria andTypeOfInformationStoredEqualTo(String value) {
            addCriterion("type_of_information_stored =", value, "typeOfInformationStored");
            return (Criteria) this;
        }

        public Criteria andTypeOfInformationStoredNotEqualTo(String value) {
            addCriterion("type_of_information_stored <>", value, "typeOfInformationStored");
            return (Criteria) this;
        }

        public Criteria andTypeOfInformationStoredGreaterThan(String value) {
            addCriterion("type_of_information_stored >", value, "typeOfInformationStored");
            return (Criteria) this;
        }

        public Criteria andTypeOfInformationStoredGreaterThanOrEqualTo(String value) {
            addCriterion("type_of_information_stored >=", value, "typeOfInformationStored");
            return (Criteria) this;
        }

        public Criteria andTypeOfInformationStoredLessThan(String value) {
            addCriterion("type_of_information_stored <", value, "typeOfInformationStored");
            return (Criteria) this;
        }

        public Criteria andTypeOfInformationStoredLessThanOrEqualTo(String value) {
            addCriterion("type_of_information_stored <=", value, "typeOfInformationStored");
            return (Criteria) this;
        }

        public Criteria andTypeOfInformationStoredLike(String value) {
            addCriterion("type_of_information_stored like", value, "typeOfInformationStored");
            return (Criteria) this;
        }

        public Criteria andTypeOfInformationStoredNotLike(String value) {
            addCriterion("type_of_information_stored not like", value, "typeOfInformationStored");
            return (Criteria) this;
        }

        public Criteria andTypeOfInformationStoredIn(List<String> values) {
            addCriterion("type_of_information_stored in", values, "typeOfInformationStored");
            return (Criteria) this;
        }

        public Criteria andTypeOfInformationStoredNotIn(List<String> values) {
            addCriterion("type_of_information_stored not in", values, "typeOfInformationStored");
            return (Criteria) this;
        }

        public Criteria andTypeOfInformationStoredBetween(String value1, String value2) {
            addCriterion("type_of_information_stored between", value1, value2, "typeOfInformationStored");
            return (Criteria) this;
        }

        public Criteria andTypeOfInformationStoredNotBetween(String value1, String value2) {
            addCriterion("type_of_information_stored not between", value1, value2, "typeOfInformationStored");
            return (Criteria) this;
        }

        public Criteria andMainStakeholdersIsNull() {
            addCriterion("main_stakeholders is null");
            return (Criteria) this;
        }

        public Criteria andMainStakeholdersIsNotNull() {
            addCriterion("main_stakeholders is not null");
            return (Criteria) this;
        }

        public Criteria andMainStakeholdersEqualTo(String value) {
            addCriterion("main_stakeholders =", value, "mainStakeholders");
            return (Criteria) this;
        }

        public Criteria andMainStakeholdersNotEqualTo(String value) {
            addCriterion("main_stakeholders <>", value, "mainStakeholders");
            return (Criteria) this;
        }

        public Criteria andMainStakeholdersGreaterThan(String value) {
            addCriterion("main_stakeholders >", value, "mainStakeholders");
            return (Criteria) this;
        }

        public Criteria andMainStakeholdersGreaterThanOrEqualTo(String value) {
            addCriterion("main_stakeholders >=", value, "mainStakeholders");
            return (Criteria) this;
        }

        public Criteria andMainStakeholdersLessThan(String value) {
            addCriterion("main_stakeholders <", value, "mainStakeholders");
            return (Criteria) this;
        }

        public Criteria andMainStakeholdersLessThanOrEqualTo(String value) {
            addCriterion("main_stakeholders <=", value, "mainStakeholders");
            return (Criteria) this;
        }

        public Criteria andMainStakeholdersLike(String value) {
            addCriterion("main_stakeholders like", value, "mainStakeholders");
            return (Criteria) this;
        }

        public Criteria andMainStakeholdersNotLike(String value) {
            addCriterion("main_stakeholders not like", value, "mainStakeholders");
            return (Criteria) this;
        }

        public Criteria andMainStakeholdersIn(List<String> values) {
            addCriterion("main_stakeholders in", values, "mainStakeholders");
            return (Criteria) this;
        }

        public Criteria andMainStakeholdersNotIn(List<String> values) {
            addCriterion("main_stakeholders not in", values, "mainStakeholders");
            return (Criteria) this;
        }

        public Criteria andMainStakeholdersBetween(String value1, String value2) {
            addCriterion("main_stakeholders between", value1, value2, "mainStakeholders");
            return (Criteria) this;
        }

        public Criteria andMainStakeholdersNotBetween(String value1, String value2) {
            addCriterion("main_stakeholders not between", value1, value2, "mainStakeholders");
            return (Criteria) this;
        }

        public Criteria andOtherStakeholderIsNull() {
            addCriterion("other_stakeholder is null");
            return (Criteria) this;
        }

        public Criteria andOtherStakeholderIsNotNull() {
            addCriterion("other_stakeholder is not null");
            return (Criteria) this;
        }

        public Criteria andOtherStakeholderEqualTo(String value) {
            addCriterion("other_stakeholder =", value, "otherStakeholder");
            return (Criteria) this;
        }

        public Criteria andOtherStakeholderNotEqualTo(String value) {
            addCriterion("other_stakeholder <>", value, "otherStakeholder");
            return (Criteria) this;
        }

        public Criteria andOtherStakeholderGreaterThan(String value) {
            addCriterion("other_stakeholder >", value, "otherStakeholder");
            return (Criteria) this;
        }

        public Criteria andOtherStakeholderGreaterThanOrEqualTo(String value) {
            addCriterion("other_stakeholder >=", value, "otherStakeholder");
            return (Criteria) this;
        }

        public Criteria andOtherStakeholderLessThan(String value) {
            addCriterion("other_stakeholder <", value, "otherStakeholder");
            return (Criteria) this;
        }

        public Criteria andOtherStakeholderLessThanOrEqualTo(String value) {
            addCriterion("other_stakeholder <=", value, "otherStakeholder");
            return (Criteria) this;
        }

        public Criteria andOtherStakeholderLike(String value) {
            addCriterion("other_stakeholder like", value, "otherStakeholder");
            return (Criteria) this;
        }

        public Criteria andOtherStakeholderNotLike(String value) {
            addCriterion("other_stakeholder not like", value, "otherStakeholder");
            return (Criteria) this;
        }

        public Criteria andOtherStakeholderIn(List<String> values) {
            addCriterion("other_stakeholder in", values, "otherStakeholder");
            return (Criteria) this;
        }

        public Criteria andOtherStakeholderNotIn(List<String> values) {
            addCriterion("other_stakeholder not in", values, "otherStakeholder");
            return (Criteria) this;
        }

        public Criteria andOtherStakeholderBetween(String value1, String value2) {
            addCriterion("other_stakeholder between", value1, value2, "otherStakeholder");
            return (Criteria) this;
        }

        public Criteria andOtherStakeholderNotBetween(String value1, String value2) {
            addCriterion("other_stakeholder not between", value1, value2, "otherStakeholder");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table public.Question44
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
     * This class corresponds to the database table public.Question44
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