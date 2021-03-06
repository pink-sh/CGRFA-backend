package org.fao.fir.cgrfa.dao.mapper.model;

import java.util.ArrayList;
import java.util.List;

public class Q11flatanswersExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table public.Q11FlatAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table public.Q11FlatAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table public.Q11FlatAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Q11FlatAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public Q11flatanswersExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Q11FlatAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Q11FlatAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Q11FlatAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Q11FlatAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Q11FlatAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Q11FlatAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Q11FlatAnswers
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
     * This method corresponds to the database table public.Q11FlatAnswers
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
     * This method corresponds to the database table public.Q11FlatAnswers
     *
     * @mbg.generated Tue Oct 10 14:03:47 CEST 2017
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Q11FlatAnswers
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
     * This class corresponds to the database table public.Q11FlatAnswers
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

        public Criteria andSpeciesnameIsNull() {
            addCriterion("speciesname is null");
            return (Criteria) this;
        }

        public Criteria andSpeciesnameIsNotNull() {
            addCriterion("speciesname is not null");
            return (Criteria) this;
        }

        public Criteria andSpeciesnameEqualTo(String value) {
            addCriterion("speciesname =", value, "speciesname");
            return (Criteria) this;
        }

        public Criteria andSpeciesnameNotEqualTo(String value) {
            addCriterion("speciesname <>", value, "speciesname");
            return (Criteria) this;
        }

        public Criteria andSpeciesnameGreaterThan(String value) {
            addCriterion("speciesname >", value, "speciesname");
            return (Criteria) this;
        }

        public Criteria andSpeciesnameGreaterThanOrEqualTo(String value) {
            addCriterion("speciesname >=", value, "speciesname");
            return (Criteria) this;
        }

        public Criteria andSpeciesnameLessThan(String value) {
            addCriterion("speciesname <", value, "speciesname");
            return (Criteria) this;
        }

        public Criteria andSpeciesnameLessThanOrEqualTo(String value) {
            addCriterion("speciesname <=", value, "speciesname");
            return (Criteria) this;
        }

        public Criteria andSpeciesnameLike(String value) {
            addCriterion("speciesname like", value, "speciesname");
            return (Criteria) this;
        }

        public Criteria andSpeciesnameNotLike(String value) {
            addCriterion("speciesname not like", value, "speciesname");
            return (Criteria) this;
        }

        public Criteria andSpeciesnameIn(List<String> values) {
            addCriterion("speciesname in", values, "speciesname");
            return (Criteria) this;
        }

        public Criteria andSpeciesnameNotIn(List<String> values) {
            addCriterion("speciesname not in", values, "speciesname");
            return (Criteria) this;
        }

        public Criteria andSpeciesnameBetween(String value1, String value2) {
            addCriterion("speciesname between", value1, value2, "speciesname");
            return (Criteria) this;
        }

        public Criteria andSpeciesnameNotBetween(String value1, String value2) {
            addCriterion("speciesname not between", value1, value2, "speciesname");
            return (Criteria) this;
        }

        public Criteria andImportexportIsNull() {
            addCriterion("importexport is null");
            return (Criteria) this;
        }

        public Criteria andImportexportIsNotNull() {
            addCriterion("importexport is not null");
            return (Criteria) this;
        }

        public Criteria andImportexportEqualTo(String value) {
            addCriterion("importexport =", value, "importexport");
            return (Criteria) this;
        }

        public Criteria andImportexportNotEqualTo(String value) {
            addCriterion("importexport <>", value, "importexport");
            return (Criteria) this;
        }

        public Criteria andImportexportGreaterThan(String value) {
            addCriterion("importexport >", value, "importexport");
            return (Criteria) this;
        }

        public Criteria andImportexportGreaterThanOrEqualTo(String value) {
            addCriterion("importexport >=", value, "importexport");
            return (Criteria) this;
        }

        public Criteria andImportexportLessThan(String value) {
            addCriterion("importexport <", value, "importexport");
            return (Criteria) this;
        }

        public Criteria andImportexportLessThanOrEqualTo(String value) {
            addCriterion("importexport <=", value, "importexport");
            return (Criteria) this;
        }

        public Criteria andImportexportLike(String value) {
            addCriterion("importexport like", value, "importexport");
            return (Criteria) this;
        }

        public Criteria andImportexportNotLike(String value) {
            addCriterion("importexport not like", value, "importexport");
            return (Criteria) this;
        }

        public Criteria andImportexportIn(List<String> values) {
            addCriterion("importexport in", values, "importexport");
            return (Criteria) this;
        }

        public Criteria andImportexportNotIn(List<String> values) {
            addCriterion("importexport not in", values, "importexport");
            return (Criteria) this;
        }

        public Criteria andImportexportBetween(String value1, String value2) {
            addCriterion("importexport between", value1, value2, "importexport");
            return (Criteria) this;
        }

        public Criteria andImportexportNotBetween(String value1, String value2) {
            addCriterion("importexport not between", value1, value2, "importexport");
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

        public Criteria andThreealphacodeIsNull() {
            addCriterion("threealphacode is null");
            return (Criteria) this;
        }

        public Criteria andThreealphacodeIsNotNull() {
            addCriterion("threealphacode is not null");
            return (Criteria) this;
        }

        public Criteria andThreealphacodeEqualTo(String value) {
            addCriterion("threealphacode =", value, "threealphacode");
            return (Criteria) this;
        }

        public Criteria andThreealphacodeNotEqualTo(String value) {
            addCriterion("threealphacode <>", value, "threealphacode");
            return (Criteria) this;
        }

        public Criteria andThreealphacodeGreaterThan(String value) {
            addCriterion("threealphacode >", value, "threealphacode");
            return (Criteria) this;
        }

        public Criteria andThreealphacodeGreaterThanOrEqualTo(String value) {
            addCriterion("threealphacode >=", value, "threealphacode");
            return (Criteria) this;
        }

        public Criteria andThreealphacodeLessThan(String value) {
            addCriterion("threealphacode <", value, "threealphacode");
            return (Criteria) this;
        }

        public Criteria andThreealphacodeLessThanOrEqualTo(String value) {
            addCriterion("threealphacode <=", value, "threealphacode");
            return (Criteria) this;
        }

        public Criteria andThreealphacodeLike(String value) {
            addCriterion("threealphacode like", value, "threealphacode");
            return (Criteria) this;
        }

        public Criteria andThreealphacodeNotLike(String value) {
            addCriterion("threealphacode not like", value, "threealphacode");
            return (Criteria) this;
        }

        public Criteria andThreealphacodeIn(List<String> values) {
            addCriterion("threealphacode in", values, "threealphacode");
            return (Criteria) this;
        }

        public Criteria andThreealphacodeNotIn(List<String> values) {
            addCriterion("threealphacode not in", values, "threealphacode");
            return (Criteria) this;
        }

        public Criteria andThreealphacodeBetween(String value1, String value2) {
            addCriterion("threealphacode between", value1, value2, "threealphacode");
            return (Criteria) this;
        }

        public Criteria andThreealphacodeNotBetween(String value1, String value2) {
            addCriterion("threealphacode not between", value1, value2, "threealphacode");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table public.Q11FlatAnswers
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
     * This class corresponds to the database table public.Q11FlatAnswers
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