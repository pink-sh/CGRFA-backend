package org.fao.fir.cgrfa.dao.mapper.model;

import java.util.ArrayList;
import java.util.List;

public class SurveystatusIdSeqExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table public.SurveyStatus_ID_seq
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table public.SurveyStatus_ID_seq
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table public.SurveyStatus_ID_seq
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus_ID_seq
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public SurveystatusIdSeqExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus_ID_seq
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus_ID_seq
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus_ID_seq
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus_ID_seq
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus_ID_seq
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus_ID_seq
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus_ID_seq
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus_ID_seq
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
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
     * This method corresponds to the database table public.SurveyStatus_ID_seq
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.SurveyStatus_ID_seq
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table public.SurveyStatus_ID_seq
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
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

        public Criteria andSequenceNameIsNull() {
            addCriterion("sequence_name is null");
            return (Criteria) this;
        }

        public Criteria andSequenceNameIsNotNull() {
            addCriterion("sequence_name is not null");
            return (Criteria) this;
        }

        public Criteria andSequenceNameEqualTo(String value) {
            addCriterion("sequence_name =", value, "sequenceName");
            return (Criteria) this;
        }

        public Criteria andSequenceNameNotEqualTo(String value) {
            addCriterion("sequence_name <>", value, "sequenceName");
            return (Criteria) this;
        }

        public Criteria andSequenceNameGreaterThan(String value) {
            addCriterion("sequence_name >", value, "sequenceName");
            return (Criteria) this;
        }

        public Criteria andSequenceNameGreaterThanOrEqualTo(String value) {
            addCriterion("sequence_name >=", value, "sequenceName");
            return (Criteria) this;
        }

        public Criteria andSequenceNameLessThan(String value) {
            addCriterion("sequence_name <", value, "sequenceName");
            return (Criteria) this;
        }

        public Criteria andSequenceNameLessThanOrEqualTo(String value) {
            addCriterion("sequence_name <=", value, "sequenceName");
            return (Criteria) this;
        }

        public Criteria andSequenceNameLike(String value) {
            addCriterion("sequence_name like", value, "sequenceName");
            return (Criteria) this;
        }

        public Criteria andSequenceNameNotLike(String value) {
            addCriterion("sequence_name not like", value, "sequenceName");
            return (Criteria) this;
        }

        public Criteria andSequenceNameIn(List<String> values) {
            addCriterion("sequence_name in", values, "sequenceName");
            return (Criteria) this;
        }

        public Criteria andSequenceNameNotIn(List<String> values) {
            addCriterion("sequence_name not in", values, "sequenceName");
            return (Criteria) this;
        }

        public Criteria andSequenceNameBetween(String value1, String value2) {
            addCriterion("sequence_name between", value1, value2, "sequenceName");
            return (Criteria) this;
        }

        public Criteria andSequenceNameNotBetween(String value1, String value2) {
            addCriterion("sequence_name not between", value1, value2, "sequenceName");
            return (Criteria) this;
        }

        public Criteria andLastValueIsNull() {
            addCriterion("last_value is null");
            return (Criteria) this;
        }

        public Criteria andLastValueIsNotNull() {
            addCriterion("last_value is not null");
            return (Criteria) this;
        }

        public Criteria andLastValueEqualTo(Long value) {
            addCriterion("last_value =", value, "lastValue");
            return (Criteria) this;
        }

        public Criteria andLastValueNotEqualTo(Long value) {
            addCriterion("last_value <>", value, "lastValue");
            return (Criteria) this;
        }

        public Criteria andLastValueGreaterThan(Long value) {
            addCriterion("last_value >", value, "lastValue");
            return (Criteria) this;
        }

        public Criteria andLastValueGreaterThanOrEqualTo(Long value) {
            addCriterion("last_value >=", value, "lastValue");
            return (Criteria) this;
        }

        public Criteria andLastValueLessThan(Long value) {
            addCriterion("last_value <", value, "lastValue");
            return (Criteria) this;
        }

        public Criteria andLastValueLessThanOrEqualTo(Long value) {
            addCriterion("last_value <=", value, "lastValue");
            return (Criteria) this;
        }

        public Criteria andLastValueIn(List<Long> values) {
            addCriterion("last_value in", values, "lastValue");
            return (Criteria) this;
        }

        public Criteria andLastValueNotIn(List<Long> values) {
            addCriterion("last_value not in", values, "lastValue");
            return (Criteria) this;
        }

        public Criteria andLastValueBetween(Long value1, Long value2) {
            addCriterion("last_value between", value1, value2, "lastValue");
            return (Criteria) this;
        }

        public Criteria andLastValueNotBetween(Long value1, Long value2) {
            addCriterion("last_value not between", value1, value2, "lastValue");
            return (Criteria) this;
        }

        public Criteria andStartValueIsNull() {
            addCriterion("start_value is null");
            return (Criteria) this;
        }

        public Criteria andStartValueIsNotNull() {
            addCriterion("start_value is not null");
            return (Criteria) this;
        }

        public Criteria andStartValueEqualTo(Long value) {
            addCriterion("start_value =", value, "startValue");
            return (Criteria) this;
        }

        public Criteria andStartValueNotEqualTo(Long value) {
            addCriterion("start_value <>", value, "startValue");
            return (Criteria) this;
        }

        public Criteria andStartValueGreaterThan(Long value) {
            addCriterion("start_value >", value, "startValue");
            return (Criteria) this;
        }

        public Criteria andStartValueGreaterThanOrEqualTo(Long value) {
            addCriterion("start_value >=", value, "startValue");
            return (Criteria) this;
        }

        public Criteria andStartValueLessThan(Long value) {
            addCriterion("start_value <", value, "startValue");
            return (Criteria) this;
        }

        public Criteria andStartValueLessThanOrEqualTo(Long value) {
            addCriterion("start_value <=", value, "startValue");
            return (Criteria) this;
        }

        public Criteria andStartValueIn(List<Long> values) {
            addCriterion("start_value in", values, "startValue");
            return (Criteria) this;
        }

        public Criteria andStartValueNotIn(List<Long> values) {
            addCriterion("start_value not in", values, "startValue");
            return (Criteria) this;
        }

        public Criteria andStartValueBetween(Long value1, Long value2) {
            addCriterion("start_value between", value1, value2, "startValue");
            return (Criteria) this;
        }

        public Criteria andStartValueNotBetween(Long value1, Long value2) {
            addCriterion("start_value not between", value1, value2, "startValue");
            return (Criteria) this;
        }

        public Criteria andIncrementByIsNull() {
            addCriterion("increment_by is null");
            return (Criteria) this;
        }

        public Criteria andIncrementByIsNotNull() {
            addCriterion("increment_by is not null");
            return (Criteria) this;
        }

        public Criteria andIncrementByEqualTo(Long value) {
            addCriterion("increment_by =", value, "incrementBy");
            return (Criteria) this;
        }

        public Criteria andIncrementByNotEqualTo(Long value) {
            addCriterion("increment_by <>", value, "incrementBy");
            return (Criteria) this;
        }

        public Criteria andIncrementByGreaterThan(Long value) {
            addCriterion("increment_by >", value, "incrementBy");
            return (Criteria) this;
        }

        public Criteria andIncrementByGreaterThanOrEqualTo(Long value) {
            addCriterion("increment_by >=", value, "incrementBy");
            return (Criteria) this;
        }

        public Criteria andIncrementByLessThan(Long value) {
            addCriterion("increment_by <", value, "incrementBy");
            return (Criteria) this;
        }

        public Criteria andIncrementByLessThanOrEqualTo(Long value) {
            addCriterion("increment_by <=", value, "incrementBy");
            return (Criteria) this;
        }

        public Criteria andIncrementByIn(List<Long> values) {
            addCriterion("increment_by in", values, "incrementBy");
            return (Criteria) this;
        }

        public Criteria andIncrementByNotIn(List<Long> values) {
            addCriterion("increment_by not in", values, "incrementBy");
            return (Criteria) this;
        }

        public Criteria andIncrementByBetween(Long value1, Long value2) {
            addCriterion("increment_by between", value1, value2, "incrementBy");
            return (Criteria) this;
        }

        public Criteria andIncrementByNotBetween(Long value1, Long value2) {
            addCriterion("increment_by not between", value1, value2, "incrementBy");
            return (Criteria) this;
        }

        public Criteria andMaxValueIsNull() {
            addCriterion("max_value is null");
            return (Criteria) this;
        }

        public Criteria andMaxValueIsNotNull() {
            addCriterion("max_value is not null");
            return (Criteria) this;
        }

        public Criteria andMaxValueEqualTo(Long value) {
            addCriterion("max_value =", value, "maxValue");
            return (Criteria) this;
        }

        public Criteria andMaxValueNotEqualTo(Long value) {
            addCriterion("max_value <>", value, "maxValue");
            return (Criteria) this;
        }

        public Criteria andMaxValueGreaterThan(Long value) {
            addCriterion("max_value >", value, "maxValue");
            return (Criteria) this;
        }

        public Criteria andMaxValueGreaterThanOrEqualTo(Long value) {
            addCriterion("max_value >=", value, "maxValue");
            return (Criteria) this;
        }

        public Criteria andMaxValueLessThan(Long value) {
            addCriterion("max_value <", value, "maxValue");
            return (Criteria) this;
        }

        public Criteria andMaxValueLessThanOrEqualTo(Long value) {
            addCriterion("max_value <=", value, "maxValue");
            return (Criteria) this;
        }

        public Criteria andMaxValueIn(List<Long> values) {
            addCriterion("max_value in", values, "maxValue");
            return (Criteria) this;
        }

        public Criteria andMaxValueNotIn(List<Long> values) {
            addCriterion("max_value not in", values, "maxValue");
            return (Criteria) this;
        }

        public Criteria andMaxValueBetween(Long value1, Long value2) {
            addCriterion("max_value between", value1, value2, "maxValue");
            return (Criteria) this;
        }

        public Criteria andMaxValueNotBetween(Long value1, Long value2) {
            addCriterion("max_value not between", value1, value2, "maxValue");
            return (Criteria) this;
        }

        public Criteria andMinValueIsNull() {
            addCriterion("min_value is null");
            return (Criteria) this;
        }

        public Criteria andMinValueIsNotNull() {
            addCriterion("min_value is not null");
            return (Criteria) this;
        }

        public Criteria andMinValueEqualTo(Long value) {
            addCriterion("min_value =", value, "minValue");
            return (Criteria) this;
        }

        public Criteria andMinValueNotEqualTo(Long value) {
            addCriterion("min_value <>", value, "minValue");
            return (Criteria) this;
        }

        public Criteria andMinValueGreaterThan(Long value) {
            addCriterion("min_value >", value, "minValue");
            return (Criteria) this;
        }

        public Criteria andMinValueGreaterThanOrEqualTo(Long value) {
            addCriterion("min_value >=", value, "minValue");
            return (Criteria) this;
        }

        public Criteria andMinValueLessThan(Long value) {
            addCriterion("min_value <", value, "minValue");
            return (Criteria) this;
        }

        public Criteria andMinValueLessThanOrEqualTo(Long value) {
            addCriterion("min_value <=", value, "minValue");
            return (Criteria) this;
        }

        public Criteria andMinValueIn(List<Long> values) {
            addCriterion("min_value in", values, "minValue");
            return (Criteria) this;
        }

        public Criteria andMinValueNotIn(List<Long> values) {
            addCriterion("min_value not in", values, "minValue");
            return (Criteria) this;
        }

        public Criteria andMinValueBetween(Long value1, Long value2) {
            addCriterion("min_value between", value1, value2, "minValue");
            return (Criteria) this;
        }

        public Criteria andMinValueNotBetween(Long value1, Long value2) {
            addCriterion("min_value not between", value1, value2, "minValue");
            return (Criteria) this;
        }

        public Criteria andCacheValueIsNull() {
            addCriterion("cache_value is null");
            return (Criteria) this;
        }

        public Criteria andCacheValueIsNotNull() {
            addCriterion("cache_value is not null");
            return (Criteria) this;
        }

        public Criteria andCacheValueEqualTo(Long value) {
            addCriterion("cache_value =", value, "cacheValue");
            return (Criteria) this;
        }

        public Criteria andCacheValueNotEqualTo(Long value) {
            addCriterion("cache_value <>", value, "cacheValue");
            return (Criteria) this;
        }

        public Criteria andCacheValueGreaterThan(Long value) {
            addCriterion("cache_value >", value, "cacheValue");
            return (Criteria) this;
        }

        public Criteria andCacheValueGreaterThanOrEqualTo(Long value) {
            addCriterion("cache_value >=", value, "cacheValue");
            return (Criteria) this;
        }

        public Criteria andCacheValueLessThan(Long value) {
            addCriterion("cache_value <", value, "cacheValue");
            return (Criteria) this;
        }

        public Criteria andCacheValueLessThanOrEqualTo(Long value) {
            addCriterion("cache_value <=", value, "cacheValue");
            return (Criteria) this;
        }

        public Criteria andCacheValueIn(List<Long> values) {
            addCriterion("cache_value in", values, "cacheValue");
            return (Criteria) this;
        }

        public Criteria andCacheValueNotIn(List<Long> values) {
            addCriterion("cache_value not in", values, "cacheValue");
            return (Criteria) this;
        }

        public Criteria andCacheValueBetween(Long value1, Long value2) {
            addCriterion("cache_value between", value1, value2, "cacheValue");
            return (Criteria) this;
        }

        public Criteria andCacheValueNotBetween(Long value1, Long value2) {
            addCriterion("cache_value not between", value1, value2, "cacheValue");
            return (Criteria) this;
        }

        public Criteria andLogCntIsNull() {
            addCriterion("log_cnt is null");
            return (Criteria) this;
        }

        public Criteria andLogCntIsNotNull() {
            addCriterion("log_cnt is not null");
            return (Criteria) this;
        }

        public Criteria andLogCntEqualTo(Long value) {
            addCriterion("log_cnt =", value, "logCnt");
            return (Criteria) this;
        }

        public Criteria andLogCntNotEqualTo(Long value) {
            addCriterion("log_cnt <>", value, "logCnt");
            return (Criteria) this;
        }

        public Criteria andLogCntGreaterThan(Long value) {
            addCriterion("log_cnt >", value, "logCnt");
            return (Criteria) this;
        }

        public Criteria andLogCntGreaterThanOrEqualTo(Long value) {
            addCriterion("log_cnt >=", value, "logCnt");
            return (Criteria) this;
        }

        public Criteria andLogCntLessThan(Long value) {
            addCriterion("log_cnt <", value, "logCnt");
            return (Criteria) this;
        }

        public Criteria andLogCntLessThanOrEqualTo(Long value) {
            addCriterion("log_cnt <=", value, "logCnt");
            return (Criteria) this;
        }

        public Criteria andLogCntIn(List<Long> values) {
            addCriterion("log_cnt in", values, "logCnt");
            return (Criteria) this;
        }

        public Criteria andLogCntNotIn(List<Long> values) {
            addCriterion("log_cnt not in", values, "logCnt");
            return (Criteria) this;
        }

        public Criteria andLogCntBetween(Long value1, Long value2) {
            addCriterion("log_cnt between", value1, value2, "logCnt");
            return (Criteria) this;
        }

        public Criteria andLogCntNotBetween(Long value1, Long value2) {
            addCriterion("log_cnt not between", value1, value2, "logCnt");
            return (Criteria) this;
        }

        public Criteria andIsCycledIsNull() {
            addCriterion("is_cycled is null");
            return (Criteria) this;
        }

        public Criteria andIsCycledIsNotNull() {
            addCriterion("is_cycled is not null");
            return (Criteria) this;
        }

        public Criteria andIsCycledEqualTo(Boolean value) {
            addCriterion("is_cycled =", value, "isCycled");
            return (Criteria) this;
        }

        public Criteria andIsCycledNotEqualTo(Boolean value) {
            addCriterion("is_cycled <>", value, "isCycled");
            return (Criteria) this;
        }

        public Criteria andIsCycledGreaterThan(Boolean value) {
            addCriterion("is_cycled >", value, "isCycled");
            return (Criteria) this;
        }

        public Criteria andIsCycledGreaterThanOrEqualTo(Boolean value) {
            addCriterion("is_cycled >=", value, "isCycled");
            return (Criteria) this;
        }

        public Criteria andIsCycledLessThan(Boolean value) {
            addCriterion("is_cycled <", value, "isCycled");
            return (Criteria) this;
        }

        public Criteria andIsCycledLessThanOrEqualTo(Boolean value) {
            addCriterion("is_cycled <=", value, "isCycled");
            return (Criteria) this;
        }

        public Criteria andIsCycledIn(List<Boolean> values) {
            addCriterion("is_cycled in", values, "isCycled");
            return (Criteria) this;
        }

        public Criteria andIsCycledNotIn(List<Boolean> values) {
            addCriterion("is_cycled not in", values, "isCycled");
            return (Criteria) this;
        }

        public Criteria andIsCycledBetween(Boolean value1, Boolean value2) {
            addCriterion("is_cycled between", value1, value2, "isCycled");
            return (Criteria) this;
        }

        public Criteria andIsCycledNotBetween(Boolean value1, Boolean value2) {
            addCriterion("is_cycled not between", value1, value2, "isCycled");
            return (Criteria) this;
        }

        public Criteria andIsCalledIsNull() {
            addCriterion("is_called is null");
            return (Criteria) this;
        }

        public Criteria andIsCalledIsNotNull() {
            addCriterion("is_called is not null");
            return (Criteria) this;
        }

        public Criteria andIsCalledEqualTo(Boolean value) {
            addCriterion("is_called =", value, "isCalled");
            return (Criteria) this;
        }

        public Criteria andIsCalledNotEqualTo(Boolean value) {
            addCriterion("is_called <>", value, "isCalled");
            return (Criteria) this;
        }

        public Criteria andIsCalledGreaterThan(Boolean value) {
            addCriterion("is_called >", value, "isCalled");
            return (Criteria) this;
        }

        public Criteria andIsCalledGreaterThanOrEqualTo(Boolean value) {
            addCriterion("is_called >=", value, "isCalled");
            return (Criteria) this;
        }

        public Criteria andIsCalledLessThan(Boolean value) {
            addCriterion("is_called <", value, "isCalled");
            return (Criteria) this;
        }

        public Criteria andIsCalledLessThanOrEqualTo(Boolean value) {
            addCriterion("is_called <=", value, "isCalled");
            return (Criteria) this;
        }

        public Criteria andIsCalledIn(List<Boolean> values) {
            addCriterion("is_called in", values, "isCalled");
            return (Criteria) this;
        }

        public Criteria andIsCalledNotIn(List<Boolean> values) {
            addCriterion("is_called not in", values, "isCalled");
            return (Criteria) this;
        }

        public Criteria andIsCalledBetween(Boolean value1, Boolean value2) {
            addCriterion("is_called between", value1, value2, "isCalled");
            return (Criteria) this;
        }

        public Criteria andIsCalledNotBetween(Boolean value1, Boolean value2) {
            addCriterion("is_called not between", value1, value2, "isCalled");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table public.SurveyStatus_ID_seq
     *
     * @mbggenerated do_not_delete_during_merge Thu May 14 12:52:48 CEST 2015
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table public.SurveyStatus_ID_seq
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

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

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value) {
            super();
            this.condition = condition;
            this.value = value;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.betweenValue = true;
        }
    }
}