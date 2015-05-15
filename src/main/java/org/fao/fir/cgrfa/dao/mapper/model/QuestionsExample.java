package org.fao.fir.cgrfa.dao.mapper.model;

import java.util.ArrayList;
import java.util.List;

public class QuestionsExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table public.Questions
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table public.Questions
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table public.Questions
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Questions
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public QuestionsExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Questions
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Questions
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Questions
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Questions
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Questions
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Questions
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Questions
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
     * This method corresponds to the database table public.Questions
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
     * This method corresponds to the database table public.Questions
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.Questions
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
     * This class corresponds to the database table public.Questions
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

        public Criteria andIdIsNull() {
            addCriterion("ID is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("ID is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("ID =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("ID <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("ID >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("ID >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("ID <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("ID <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("ID in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("ID not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("ID between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("ID not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andOrderIsNull() {
            addCriterion("order is null");
            return (Criteria) this;
        }

        public Criteria andOrderIsNotNull() {
            addCriterion("order is not null");
            return (Criteria) this;
        }

        public Criteria andOrderEqualTo(Integer value) {
            addCriterion("order =", value, "order");
            return (Criteria) this;
        }

        public Criteria andOrderNotEqualTo(Integer value) {
            addCriterion("order <>", value, "order");
            return (Criteria) this;
        }

        public Criteria andOrderGreaterThan(Integer value) {
            addCriterion("order >", value, "order");
            return (Criteria) this;
        }

        public Criteria andOrderGreaterThanOrEqualTo(Integer value) {
            addCriterion("order >=", value, "order");
            return (Criteria) this;
        }

        public Criteria andOrderLessThan(Integer value) {
            addCriterion("order <", value, "order");
            return (Criteria) this;
        }

        public Criteria andOrderLessThanOrEqualTo(Integer value) {
            addCriterion("order <=", value, "order");
            return (Criteria) this;
        }

        public Criteria andOrderIn(List<Integer> values) {
            addCriterion("order in", values, "order");
            return (Criteria) this;
        }

        public Criteria andOrderNotIn(List<Integer> values) {
            addCriterion("order not in", values, "order");
            return (Criteria) this;
        }

        public Criteria andOrderBetween(Integer value1, Integer value2) {
            addCriterion("order between", value1, value2, "order");
            return (Criteria) this;
        }

        public Criteria andOrderNotBetween(Integer value1, Integer value2) {
            addCriterion("order not between", value1, value2, "order");
            return (Criteria) this;
        }

        public Criteria andNameEIsNull() {
            addCriterion("name_e is null");
            return (Criteria) this;
        }

        public Criteria andNameEIsNotNull() {
            addCriterion("name_e is not null");
            return (Criteria) this;
        }

        public Criteria andNameEEqualTo(String value) {
            addCriterion("name_e =", value, "nameE");
            return (Criteria) this;
        }

        public Criteria andNameENotEqualTo(String value) {
            addCriterion("name_e <>", value, "nameE");
            return (Criteria) this;
        }

        public Criteria andNameEGreaterThan(String value) {
            addCriterion("name_e >", value, "nameE");
            return (Criteria) this;
        }

        public Criteria andNameEGreaterThanOrEqualTo(String value) {
            addCriterion("name_e >=", value, "nameE");
            return (Criteria) this;
        }

        public Criteria andNameELessThan(String value) {
            addCriterion("name_e <", value, "nameE");
            return (Criteria) this;
        }

        public Criteria andNameELessThanOrEqualTo(String value) {
            addCriterion("name_e <=", value, "nameE");
            return (Criteria) this;
        }

        public Criteria andNameELike(String value) {
            addCriterion("name_e like", value, "nameE");
            return (Criteria) this;
        }

        public Criteria andNameENotLike(String value) {
            addCriterion("name_e not like", value, "nameE");
            return (Criteria) this;
        }

        public Criteria andNameEIn(List<String> values) {
            addCriterion("name_e in", values, "nameE");
            return (Criteria) this;
        }

        public Criteria andNameENotIn(List<String> values) {
            addCriterion("name_e not in", values, "nameE");
            return (Criteria) this;
        }

        public Criteria andNameEBetween(String value1, String value2) {
            addCriterion("name_e between", value1, value2, "nameE");
            return (Criteria) this;
        }

        public Criteria andNameENotBetween(String value1, String value2) {
            addCriterion("name_e not between", value1, value2, "nameE");
            return (Criteria) this;
        }

        public Criteria andNameFIsNull() {
            addCriterion("name_f is null");
            return (Criteria) this;
        }

        public Criteria andNameFIsNotNull() {
            addCriterion("name_f is not null");
            return (Criteria) this;
        }

        public Criteria andNameFEqualTo(String value) {
            addCriterion("name_f =", value, "nameF");
            return (Criteria) this;
        }

        public Criteria andNameFNotEqualTo(String value) {
            addCriterion("name_f <>", value, "nameF");
            return (Criteria) this;
        }

        public Criteria andNameFGreaterThan(String value) {
            addCriterion("name_f >", value, "nameF");
            return (Criteria) this;
        }

        public Criteria andNameFGreaterThanOrEqualTo(String value) {
            addCriterion("name_f >=", value, "nameF");
            return (Criteria) this;
        }

        public Criteria andNameFLessThan(String value) {
            addCriterion("name_f <", value, "nameF");
            return (Criteria) this;
        }

        public Criteria andNameFLessThanOrEqualTo(String value) {
            addCriterion("name_f <=", value, "nameF");
            return (Criteria) this;
        }

        public Criteria andNameFLike(String value) {
            addCriterion("name_f like", value, "nameF");
            return (Criteria) this;
        }

        public Criteria andNameFNotLike(String value) {
            addCriterion("name_f not like", value, "nameF");
            return (Criteria) this;
        }

        public Criteria andNameFIn(List<String> values) {
            addCriterion("name_f in", values, "nameF");
            return (Criteria) this;
        }

        public Criteria andNameFNotIn(List<String> values) {
            addCriterion("name_f not in", values, "nameF");
            return (Criteria) this;
        }

        public Criteria andNameFBetween(String value1, String value2) {
            addCriterion("name_f between", value1, value2, "nameF");
            return (Criteria) this;
        }

        public Criteria andNameFNotBetween(String value1, String value2) {
            addCriterion("name_f not between", value1, value2, "nameF");
            return (Criteria) this;
        }

        public Criteria andNameSIsNull() {
            addCriterion("name_s is null");
            return (Criteria) this;
        }

        public Criteria andNameSIsNotNull() {
            addCriterion("name_s is not null");
            return (Criteria) this;
        }

        public Criteria andNameSEqualTo(String value) {
            addCriterion("name_s =", value, "nameS");
            return (Criteria) this;
        }

        public Criteria andNameSNotEqualTo(String value) {
            addCriterion("name_s <>", value, "nameS");
            return (Criteria) this;
        }

        public Criteria andNameSGreaterThan(String value) {
            addCriterion("name_s >", value, "nameS");
            return (Criteria) this;
        }

        public Criteria andNameSGreaterThanOrEqualTo(String value) {
            addCriterion("name_s >=", value, "nameS");
            return (Criteria) this;
        }

        public Criteria andNameSLessThan(String value) {
            addCriterion("name_s <", value, "nameS");
            return (Criteria) this;
        }

        public Criteria andNameSLessThanOrEqualTo(String value) {
            addCriterion("name_s <=", value, "nameS");
            return (Criteria) this;
        }

        public Criteria andNameSLike(String value) {
            addCriterion("name_s like", value, "nameS");
            return (Criteria) this;
        }

        public Criteria andNameSNotLike(String value) {
            addCriterion("name_s not like", value, "nameS");
            return (Criteria) this;
        }

        public Criteria andNameSIn(List<String> values) {
            addCriterion("name_s in", values, "nameS");
            return (Criteria) this;
        }

        public Criteria andNameSNotIn(List<String> values) {
            addCriterion("name_s not in", values, "nameS");
            return (Criteria) this;
        }

        public Criteria andNameSBetween(String value1, String value2) {
            addCriterion("name_s between", value1, value2, "nameS");
            return (Criteria) this;
        }

        public Criteria andNameSNotBetween(String value1, String value2) {
            addCriterion("name_s not between", value1, value2, "nameS");
            return (Criteria) this;
        }

        public Criteria andNameCIsNull() {
            addCriterion("name_c is null");
            return (Criteria) this;
        }

        public Criteria andNameCIsNotNull() {
            addCriterion("name_c is not null");
            return (Criteria) this;
        }

        public Criteria andNameCEqualTo(String value) {
            addCriterion("name_c =", value, "nameC");
            return (Criteria) this;
        }

        public Criteria andNameCNotEqualTo(String value) {
            addCriterion("name_c <>", value, "nameC");
            return (Criteria) this;
        }

        public Criteria andNameCGreaterThan(String value) {
            addCriterion("name_c >", value, "nameC");
            return (Criteria) this;
        }

        public Criteria andNameCGreaterThanOrEqualTo(String value) {
            addCriterion("name_c >=", value, "nameC");
            return (Criteria) this;
        }

        public Criteria andNameCLessThan(String value) {
            addCriterion("name_c <", value, "nameC");
            return (Criteria) this;
        }

        public Criteria andNameCLessThanOrEqualTo(String value) {
            addCriterion("name_c <=", value, "nameC");
            return (Criteria) this;
        }

        public Criteria andNameCLike(String value) {
            addCriterion("name_c like", value, "nameC");
            return (Criteria) this;
        }

        public Criteria andNameCNotLike(String value) {
            addCriterion("name_c not like", value, "nameC");
            return (Criteria) this;
        }

        public Criteria andNameCIn(List<String> values) {
            addCriterion("name_c in", values, "nameC");
            return (Criteria) this;
        }

        public Criteria andNameCNotIn(List<String> values) {
            addCriterion("name_c not in", values, "nameC");
            return (Criteria) this;
        }

        public Criteria andNameCBetween(String value1, String value2) {
            addCriterion("name_c between", value1, value2, "nameC");
            return (Criteria) this;
        }

        public Criteria andNameCNotBetween(String value1, String value2) {
            addCriterion("name_c not between", value1, value2, "nameC");
            return (Criteria) this;
        }

        public Criteria andNameRIsNull() {
            addCriterion("name_r is null");
            return (Criteria) this;
        }

        public Criteria andNameRIsNotNull() {
            addCriterion("name_r is not null");
            return (Criteria) this;
        }

        public Criteria andNameREqualTo(String value) {
            addCriterion("name_r =", value, "nameR");
            return (Criteria) this;
        }

        public Criteria andNameRNotEqualTo(String value) {
            addCriterion("name_r <>", value, "nameR");
            return (Criteria) this;
        }

        public Criteria andNameRGreaterThan(String value) {
            addCriterion("name_r >", value, "nameR");
            return (Criteria) this;
        }

        public Criteria andNameRGreaterThanOrEqualTo(String value) {
            addCriterion("name_r >=", value, "nameR");
            return (Criteria) this;
        }

        public Criteria andNameRLessThan(String value) {
            addCriterion("name_r <", value, "nameR");
            return (Criteria) this;
        }

        public Criteria andNameRLessThanOrEqualTo(String value) {
            addCriterion("name_r <=", value, "nameR");
            return (Criteria) this;
        }

        public Criteria andNameRLike(String value) {
            addCriterion("name_r like", value, "nameR");
            return (Criteria) this;
        }

        public Criteria andNameRNotLike(String value) {
            addCriterion("name_r not like", value, "nameR");
            return (Criteria) this;
        }

        public Criteria andNameRIn(List<String> values) {
            addCriterion("name_r in", values, "nameR");
            return (Criteria) this;
        }

        public Criteria andNameRNotIn(List<String> values) {
            addCriterion("name_r not in", values, "nameR");
            return (Criteria) this;
        }

        public Criteria andNameRBetween(String value1, String value2) {
            addCriterion("name_r between", value1, value2, "nameR");
            return (Criteria) this;
        }

        public Criteria andNameRNotBetween(String value1, String value2) {
            addCriterion("name_r not between", value1, value2, "nameR");
            return (Criteria) this;
        }

        public Criteria andNameAIsNull() {
            addCriterion("name_a is null");
            return (Criteria) this;
        }

        public Criteria andNameAIsNotNull() {
            addCriterion("name_a is not null");
            return (Criteria) this;
        }

        public Criteria andNameAEqualTo(String value) {
            addCriterion("name_a =", value, "nameA");
            return (Criteria) this;
        }

        public Criteria andNameANotEqualTo(String value) {
            addCriterion("name_a <>", value, "nameA");
            return (Criteria) this;
        }

        public Criteria andNameAGreaterThan(String value) {
            addCriterion("name_a >", value, "nameA");
            return (Criteria) this;
        }

        public Criteria andNameAGreaterThanOrEqualTo(String value) {
            addCriterion("name_a >=", value, "nameA");
            return (Criteria) this;
        }

        public Criteria andNameALessThan(String value) {
            addCriterion("name_a <", value, "nameA");
            return (Criteria) this;
        }

        public Criteria andNameALessThanOrEqualTo(String value) {
            addCriterion("name_a <=", value, "nameA");
            return (Criteria) this;
        }

        public Criteria andNameALike(String value) {
            addCriterion("name_a like", value, "nameA");
            return (Criteria) this;
        }

        public Criteria andNameANotLike(String value) {
            addCriterion("name_a not like", value, "nameA");
            return (Criteria) this;
        }

        public Criteria andNameAIn(List<String> values) {
            addCriterion("name_a in", values, "nameA");
            return (Criteria) this;
        }

        public Criteria andNameANotIn(List<String> values) {
            addCriterion("name_a not in", values, "nameA");
            return (Criteria) this;
        }

        public Criteria andNameABetween(String value1, String value2) {
            addCriterion("name_a between", value1, value2, "nameA");
            return (Criteria) this;
        }

        public Criteria andNameANotBetween(String value1, String value2) {
            addCriterion("name_a not between", value1, value2, "nameA");
            return (Criteria) this;
        }

        public Criteria andTypeIsNull() {
            addCriterion("type is null");
            return (Criteria) this;
        }

        public Criteria andTypeIsNotNull() {
            addCriterion("type is not null");
            return (Criteria) this;
        }

        public Criteria andTypeEqualTo(Integer value) {
            addCriterion("type =", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotEqualTo(Integer value) {
            addCriterion("type <>", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeGreaterThan(Integer value) {
            addCriterion("type >", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("type >=", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLessThan(Integer value) {
            addCriterion("type <", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLessThanOrEqualTo(Integer value) {
            addCriterion("type <=", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeIn(List<Integer> values) {
            addCriterion("type in", values, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotIn(List<Integer> values) {
            addCriterion("type not in", values, "type");
            return (Criteria) this;
        }

        public Criteria andTypeBetween(Integer value1, Integer value2) {
            addCriterion("type between", value1, value2, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("type not between", value1, value2, "type");
            return (Criteria) this;
        }

        public Criteria andTitleIsNull() {
            addCriterion("title is null");
            return (Criteria) this;
        }

        public Criteria andTitleIsNotNull() {
            addCriterion("title is not null");
            return (Criteria) this;
        }

        public Criteria andTitleEqualTo(String value) {
            addCriterion("title =", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotEqualTo(String value) {
            addCriterion("title <>", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleGreaterThan(String value) {
            addCriterion("title >", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleGreaterThanOrEqualTo(String value) {
            addCriterion("title >=", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLessThan(String value) {
            addCriterion("title <", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLessThanOrEqualTo(String value) {
            addCriterion("title <=", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLike(String value) {
            addCriterion("title like", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotLike(String value) {
            addCriterion("title not like", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleIn(List<String> values) {
            addCriterion("title in", values, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotIn(List<String> values) {
            addCriterion("title not in", values, "title");
            return (Criteria) this;
        }

        public Criteria andTitleBetween(String value1, String value2) {
            addCriterion("title between", value1, value2, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotBetween(String value1, String value2) {
            addCriterion("title not between", value1, value2, "title");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table public.Questions
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
     * This class corresponds to the database table public.Questions
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