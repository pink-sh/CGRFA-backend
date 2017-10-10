package org.fao.fir.cgrfa.dao.mapper.model;

import java.util.ArrayList;
import java.util.List;

public class Quest25Example {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table public.Quest25
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table public.Quest25
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table public.Quest25
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest25
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    public Quest25Example() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest25
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest25
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest25
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest25
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest25
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest25
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest25
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest25
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
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
     * This method corresponds to the database table public.Quest25
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Quest25
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table public.Quest25
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
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

        public Criteria andClasstypeIsNull() {
            addCriterion("classtype is null");
            return (Criteria) this;
        }

        public Criteria andClasstypeIsNotNull() {
            addCriterion("classtype is not null");
            return (Criteria) this;
        }

        public Criteria andClasstypeEqualTo(String value) {
            addCriterion("classtype =", value, "classtype");
            return (Criteria) this;
        }

        public Criteria andClasstypeNotEqualTo(String value) {
            addCriterion("classtype <>", value, "classtype");
            return (Criteria) this;
        }

        public Criteria andClasstypeGreaterThan(String value) {
            addCriterion("classtype >", value, "classtype");
            return (Criteria) this;
        }

        public Criteria andClasstypeGreaterThanOrEqualTo(String value) {
            addCriterion("classtype >=", value, "classtype");
            return (Criteria) this;
        }

        public Criteria andClasstypeLessThan(String value) {
            addCriterion("classtype <", value, "classtype");
            return (Criteria) this;
        }

        public Criteria andClasstypeLessThanOrEqualTo(String value) {
            addCriterion("classtype <=", value, "classtype");
            return (Criteria) this;
        }

        public Criteria andClasstypeLike(String value) {
            addCriterion("classtype like", value, "classtype");
            return (Criteria) this;
        }

        public Criteria andClasstypeNotLike(String value) {
            addCriterion("classtype not like", value, "classtype");
            return (Criteria) this;
        }

        public Criteria andClasstypeIn(List<String> values) {
            addCriterion("classtype in", values, "classtype");
            return (Criteria) this;
        }

        public Criteria andClasstypeNotIn(List<String> values) {
            addCriterion("classtype not in", values, "classtype");
            return (Criteria) this;
        }

        public Criteria andClasstypeBetween(String value1, String value2) {
            addCriterion("classtype between", value1, value2, "classtype");
            return (Criteria) this;
        }

        public Criteria andClasstypeNotBetween(String value1, String value2) {
            addCriterion("classtype not between", value1, value2, "classtype");
            return (Criteria) this;
        }

        public Criteria andContinentIsNull() {
            addCriterion("continent is null");
            return (Criteria) this;
        }

        public Criteria andContinentIsNotNull() {
            addCriterion("continent is not null");
            return (Criteria) this;
        }

        public Criteria andContinentEqualTo(String value) {
            addCriterion("continent =", value, "continent");
            return (Criteria) this;
        }

        public Criteria andContinentNotEqualTo(String value) {
            addCriterion("continent <>", value, "continent");
            return (Criteria) this;
        }

        public Criteria andContinentGreaterThan(String value) {
            addCriterion("continent >", value, "continent");
            return (Criteria) this;
        }

        public Criteria andContinentGreaterThanOrEqualTo(String value) {
            addCriterion("continent >=", value, "continent");
            return (Criteria) this;
        }

        public Criteria andContinentLessThan(String value) {
            addCriterion("continent <", value, "continent");
            return (Criteria) this;
        }

        public Criteria andContinentLessThanOrEqualTo(String value) {
            addCriterion("continent <=", value, "continent");
            return (Criteria) this;
        }

        public Criteria andContinentLike(String value) {
            addCriterion("continent like", value, "continent");
            return (Criteria) this;
        }

        public Criteria andContinentNotLike(String value) {
            addCriterion("continent not like", value, "continent");
            return (Criteria) this;
        }

        public Criteria andContinentIn(List<String> values) {
            addCriterion("continent in", values, "continent");
            return (Criteria) this;
        }

        public Criteria andContinentNotIn(List<String> values) {
            addCriterion("continent not in", values, "continent");
            return (Criteria) this;
        }

        public Criteria andContinentBetween(String value1, String value2) {
            addCriterion("continent between", value1, value2, "continent");
            return (Criteria) this;
        }

        public Criteria andContinentNotBetween(String value1, String value2) {
            addCriterion("continent not between", value1, value2, "continent");
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

        public Criteria andSurveyidIsNull() {
            addCriterion("surveyid is null");
            return (Criteria) this;
        }

        public Criteria andSurveyidIsNotNull() {
            addCriterion("surveyid is not null");
            return (Criteria) this;
        }

        public Criteria andSurveyidEqualTo(Integer value) {
            addCriterion("surveyid =", value, "surveyid");
            return (Criteria) this;
        }

        public Criteria andSurveyidNotEqualTo(Integer value) {
            addCriterion("surveyid <>", value, "surveyid");
            return (Criteria) this;
        }

        public Criteria andSurveyidGreaterThan(Integer value) {
            addCriterion("surveyid >", value, "surveyid");
            return (Criteria) this;
        }

        public Criteria andSurveyidGreaterThanOrEqualTo(Integer value) {
            addCriterion("surveyid >=", value, "surveyid");
            return (Criteria) this;
        }

        public Criteria andSurveyidLessThan(Integer value) {
            addCriterion("surveyid <", value, "surveyid");
            return (Criteria) this;
        }

        public Criteria andSurveyidLessThanOrEqualTo(Integer value) {
            addCriterion("surveyid <=", value, "surveyid");
            return (Criteria) this;
        }

        public Criteria andSurveyidIn(List<Integer> values) {
            addCriterion("surveyid in", values, "surveyid");
            return (Criteria) this;
        }

        public Criteria andSurveyidNotIn(List<Integer> values) {
            addCriterion("surveyid not in", values, "surveyid");
            return (Criteria) this;
        }

        public Criteria andSurveyidBetween(Integer value1, Integer value2) {
            addCriterion("surveyid between", value1, value2, "surveyid");
            return (Criteria) this;
        }

        public Criteria andSurveyidNotBetween(Integer value1, Integer value2) {
            addCriterion("surveyid not between", value1, value2, "surveyid");
            return (Criteria) this;
        }

        public Criteria andSurveysortIsNull() {
            addCriterion("surveysort is null");
            return (Criteria) this;
        }

        public Criteria andSurveysortIsNotNull() {
            addCriterion("surveysort is not null");
            return (Criteria) this;
        }

        public Criteria andSurveysortEqualTo(Integer value) {
            addCriterion("surveysort =", value, "surveysort");
            return (Criteria) this;
        }

        public Criteria andSurveysortNotEqualTo(Integer value) {
            addCriterion("surveysort <>", value, "surveysort");
            return (Criteria) this;
        }

        public Criteria andSurveysortGreaterThan(Integer value) {
            addCriterion("surveysort >", value, "surveysort");
            return (Criteria) this;
        }

        public Criteria andSurveysortGreaterThanOrEqualTo(Integer value) {
            addCriterion("surveysort >=", value, "surveysort");
            return (Criteria) this;
        }

        public Criteria andSurveysortLessThan(Integer value) {
            addCriterion("surveysort <", value, "surveysort");
            return (Criteria) this;
        }

        public Criteria andSurveysortLessThanOrEqualTo(Integer value) {
            addCriterion("surveysort <=", value, "surveysort");
            return (Criteria) this;
        }

        public Criteria andSurveysortIn(List<Integer> values) {
            addCriterion("surveysort in", values, "surveysort");
            return (Criteria) this;
        }

        public Criteria andSurveysortNotIn(List<Integer> values) {
            addCriterion("surveysort not in", values, "surveysort");
            return (Criteria) this;
        }

        public Criteria andSurveysortBetween(Integer value1, Integer value2) {
            addCriterion("surveysort between", value1, value2, "surveysort");
            return (Criteria) this;
        }

        public Criteria andSurveysortNotBetween(Integer value1, Integer value2) {
            addCriterion("surveysort not between", value1, value2, "surveysort");
            return (Criteria) this;
        }

        public Criteria andSurveyrowIsNull() {
            addCriterion("surveyrow is null");
            return (Criteria) this;
        }

        public Criteria andSurveyrowIsNotNull() {
            addCriterion("surveyrow is not null");
            return (Criteria) this;
        }

        public Criteria andSurveyrowEqualTo(Integer value) {
            addCriterion("surveyrow =", value, "surveyrow");
            return (Criteria) this;
        }

        public Criteria andSurveyrowNotEqualTo(Integer value) {
            addCriterion("surveyrow <>", value, "surveyrow");
            return (Criteria) this;
        }

        public Criteria andSurveyrowGreaterThan(Integer value) {
            addCriterion("surveyrow >", value, "surveyrow");
            return (Criteria) this;
        }

        public Criteria andSurveyrowGreaterThanOrEqualTo(Integer value) {
            addCriterion("surveyrow >=", value, "surveyrow");
            return (Criteria) this;
        }

        public Criteria andSurveyrowLessThan(Integer value) {
            addCriterion("surveyrow <", value, "surveyrow");
            return (Criteria) this;
        }

        public Criteria andSurveyrowLessThanOrEqualTo(Integer value) {
            addCriterion("surveyrow <=", value, "surveyrow");
            return (Criteria) this;
        }

        public Criteria andSurveyrowIn(List<Integer> values) {
            addCriterion("surveyrow in", values, "surveyrow");
            return (Criteria) this;
        }

        public Criteria andSurveyrowNotIn(List<Integer> values) {
            addCriterion("surveyrow not in", values, "surveyrow");
            return (Criteria) this;
        }

        public Criteria andSurveyrowBetween(Integer value1, Integer value2) {
            addCriterion("surveyrow between", value1, value2, "surveyrow");
            return (Criteria) this;
        }

        public Criteria andSurveyrowNotBetween(Integer value1, Integer value2) {
            addCriterion("surveyrow not between", value1, value2, "surveyrow");
            return (Criteria) this;
        }

        public Criteria andCol1valueIsNull() {
            addCriterion("col1value is null");
            return (Criteria) this;
        }

        public Criteria andCol1valueIsNotNull() {
            addCriterion("col1value is not null");
            return (Criteria) this;
        }

        public Criteria andCol1valueEqualTo(String value) {
            addCriterion("col1value =", value, "col1value");
            return (Criteria) this;
        }

        public Criteria andCol1valueNotEqualTo(String value) {
            addCriterion("col1value <>", value, "col1value");
            return (Criteria) this;
        }

        public Criteria andCol1valueGreaterThan(String value) {
            addCriterion("col1value >", value, "col1value");
            return (Criteria) this;
        }

        public Criteria andCol1valueGreaterThanOrEqualTo(String value) {
            addCriterion("col1value >=", value, "col1value");
            return (Criteria) this;
        }

        public Criteria andCol1valueLessThan(String value) {
            addCriterion("col1value <", value, "col1value");
            return (Criteria) this;
        }

        public Criteria andCol1valueLessThanOrEqualTo(String value) {
            addCriterion("col1value <=", value, "col1value");
            return (Criteria) this;
        }

        public Criteria andCol1valueLike(String value) {
            addCriterion("col1value like", value, "col1value");
            return (Criteria) this;
        }

        public Criteria andCol1valueNotLike(String value) {
            addCriterion("col1value not like", value, "col1value");
            return (Criteria) this;
        }

        public Criteria andCol1valueIn(List<String> values) {
            addCriterion("col1value in", values, "col1value");
            return (Criteria) this;
        }

        public Criteria andCol1valueNotIn(List<String> values) {
            addCriterion("col1value not in", values, "col1value");
            return (Criteria) this;
        }

        public Criteria andCol1valueBetween(String value1, String value2) {
            addCriterion("col1value between", value1, value2, "col1value");
            return (Criteria) this;
        }

        public Criteria andCol1valueNotBetween(String value1, String value2) {
            addCriterion("col1value not between", value1, value2, "col1value");
            return (Criteria) this;
        }

        public Criteria andCol1radioIsNull() {
            addCriterion("col1radio is null");
            return (Criteria) this;
        }

        public Criteria andCol1radioIsNotNull() {
            addCriterion("col1radio is not null");
            return (Criteria) this;
        }

        public Criteria andCol1radioEqualTo(String value) {
            addCriterion("col1radio =", value, "col1radio");
            return (Criteria) this;
        }

        public Criteria andCol1radioNotEqualTo(String value) {
            addCriterion("col1radio <>", value, "col1radio");
            return (Criteria) this;
        }

        public Criteria andCol1radioGreaterThan(String value) {
            addCriterion("col1radio >", value, "col1radio");
            return (Criteria) this;
        }

        public Criteria andCol1radioGreaterThanOrEqualTo(String value) {
            addCriterion("col1radio >=", value, "col1radio");
            return (Criteria) this;
        }

        public Criteria andCol1radioLessThan(String value) {
            addCriterion("col1radio <", value, "col1radio");
            return (Criteria) this;
        }

        public Criteria andCol1radioLessThanOrEqualTo(String value) {
            addCriterion("col1radio <=", value, "col1radio");
            return (Criteria) this;
        }

        public Criteria andCol1radioLike(String value) {
            addCriterion("col1radio like", value, "col1radio");
            return (Criteria) this;
        }

        public Criteria andCol1radioNotLike(String value) {
            addCriterion("col1radio not like", value, "col1radio");
            return (Criteria) this;
        }

        public Criteria andCol1radioIn(List<String> values) {
            addCriterion("col1radio in", values, "col1radio");
            return (Criteria) this;
        }

        public Criteria andCol1radioNotIn(List<String> values) {
            addCriterion("col1radio not in", values, "col1radio");
            return (Criteria) this;
        }

        public Criteria andCol1radioBetween(String value1, String value2) {
            addCriterion("col1radio between", value1, value2, "col1radio");
            return (Criteria) this;
        }

        public Criteria andCol1radioNotBetween(String value1, String value2) {
            addCriterion("col1radio not between", value1, value2, "col1radio");
            return (Criteria) this;
        }

        public Criteria andCol2valueIsNull() {
            addCriterion("col2value is null");
            return (Criteria) this;
        }

        public Criteria andCol2valueIsNotNull() {
            addCriterion("col2value is not null");
            return (Criteria) this;
        }

        public Criteria andCol2valueEqualTo(String value) {
            addCriterion("col2value =", value, "col2value");
            return (Criteria) this;
        }

        public Criteria andCol2valueNotEqualTo(String value) {
            addCriterion("col2value <>", value, "col2value");
            return (Criteria) this;
        }

        public Criteria andCol2valueGreaterThan(String value) {
            addCriterion("col2value >", value, "col2value");
            return (Criteria) this;
        }

        public Criteria andCol2valueGreaterThanOrEqualTo(String value) {
            addCriterion("col2value >=", value, "col2value");
            return (Criteria) this;
        }

        public Criteria andCol2valueLessThan(String value) {
            addCriterion("col2value <", value, "col2value");
            return (Criteria) this;
        }

        public Criteria andCol2valueLessThanOrEqualTo(String value) {
            addCriterion("col2value <=", value, "col2value");
            return (Criteria) this;
        }

        public Criteria andCol2valueLike(String value) {
            addCriterion("col2value like", value, "col2value");
            return (Criteria) this;
        }

        public Criteria andCol2valueNotLike(String value) {
            addCriterion("col2value not like", value, "col2value");
            return (Criteria) this;
        }

        public Criteria andCol2valueIn(List<String> values) {
            addCriterion("col2value in", values, "col2value");
            return (Criteria) this;
        }

        public Criteria andCol2valueNotIn(List<String> values) {
            addCriterion("col2value not in", values, "col2value");
            return (Criteria) this;
        }

        public Criteria andCol2valueBetween(String value1, String value2) {
            addCriterion("col2value between", value1, value2, "col2value");
            return (Criteria) this;
        }

        public Criteria andCol2valueNotBetween(String value1, String value2) {
            addCriterion("col2value not between", value1, value2, "col2value");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table public.Quest25
     *
     * @mbg.generated do_not_delete_during_merge Fri Oct 06 16:00:54 CEST 2017
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table public.Quest25
     *
     * @mbg.generated Fri Oct 06 16:00:54 CEST 2017
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