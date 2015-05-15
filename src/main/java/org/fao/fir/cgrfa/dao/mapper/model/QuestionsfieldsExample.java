package org.fao.fir.cgrfa.dao.mapper.model;

import java.util.ArrayList;
import java.util.List;

public class QuestionsfieldsExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table public.QuestionsFields
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table public.QuestionsFields
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table public.QuestionsFields
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsFields
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public QuestionsfieldsExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsFields
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsFields
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsFields
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsFields
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsFields
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsFields
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsFields
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
     * This method corresponds to the database table public.QuestionsFields
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
     * This method corresponds to the database table public.QuestionsFields
     *
     * @mbggenerated Thu May 14 12:52:48 CEST 2015
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.QuestionsFields
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
     * This class corresponds to the database table public.QuestionsFields
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

        public Criteria andQuestionIdIsNull() {
            addCriterion("question_ID is null");
            return (Criteria) this;
        }

        public Criteria andQuestionIdIsNotNull() {
            addCriterion("question_ID is not null");
            return (Criteria) this;
        }

        public Criteria andQuestionIdEqualTo(Integer value) {
            addCriterion("question_ID =", value, "questionId");
            return (Criteria) this;
        }

        public Criteria andQuestionIdNotEqualTo(Integer value) {
            addCriterion("question_ID <>", value, "questionId");
            return (Criteria) this;
        }

        public Criteria andQuestionIdGreaterThan(Integer value) {
            addCriterion("question_ID >", value, "questionId");
            return (Criteria) this;
        }

        public Criteria andQuestionIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("question_ID >=", value, "questionId");
            return (Criteria) this;
        }

        public Criteria andQuestionIdLessThan(Integer value) {
            addCriterion("question_ID <", value, "questionId");
            return (Criteria) this;
        }

        public Criteria andQuestionIdLessThanOrEqualTo(Integer value) {
            addCriterion("question_ID <=", value, "questionId");
            return (Criteria) this;
        }

        public Criteria andQuestionIdIn(List<Integer> values) {
            addCriterion("question_ID in", values, "questionId");
            return (Criteria) this;
        }

        public Criteria andQuestionIdNotIn(List<Integer> values) {
            addCriterion("question_ID not in", values, "questionId");
            return (Criteria) this;
        }

        public Criteria andQuestionIdBetween(Integer value1, Integer value2) {
            addCriterion("question_ID between", value1, value2, "questionId");
            return (Criteria) this;
        }

        public Criteria andQuestionIdNotBetween(Integer value1, Integer value2) {
            addCriterion("question_ID not between", value1, value2, "questionId");
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

        public Criteria andTextEIsNull() {
            addCriterion("text_e is null");
            return (Criteria) this;
        }

        public Criteria andTextEIsNotNull() {
            addCriterion("text_e is not null");
            return (Criteria) this;
        }

        public Criteria andTextEEqualTo(String value) {
            addCriterion("text_e =", value, "textE");
            return (Criteria) this;
        }

        public Criteria andTextENotEqualTo(String value) {
            addCriterion("text_e <>", value, "textE");
            return (Criteria) this;
        }

        public Criteria andTextEGreaterThan(String value) {
            addCriterion("text_e >", value, "textE");
            return (Criteria) this;
        }

        public Criteria andTextEGreaterThanOrEqualTo(String value) {
            addCriterion("text_e >=", value, "textE");
            return (Criteria) this;
        }

        public Criteria andTextELessThan(String value) {
            addCriterion("text_e <", value, "textE");
            return (Criteria) this;
        }

        public Criteria andTextELessThanOrEqualTo(String value) {
            addCriterion("text_e <=", value, "textE");
            return (Criteria) this;
        }

        public Criteria andTextELike(String value) {
            addCriterion("text_e like", value, "textE");
            return (Criteria) this;
        }

        public Criteria andTextENotLike(String value) {
            addCriterion("text_e not like", value, "textE");
            return (Criteria) this;
        }

        public Criteria andTextEIn(List<String> values) {
            addCriterion("text_e in", values, "textE");
            return (Criteria) this;
        }

        public Criteria andTextENotIn(List<String> values) {
            addCriterion("text_e not in", values, "textE");
            return (Criteria) this;
        }

        public Criteria andTextEBetween(String value1, String value2) {
            addCriterion("text_e between", value1, value2, "textE");
            return (Criteria) this;
        }

        public Criteria andTextENotBetween(String value1, String value2) {
            addCriterion("text_e not between", value1, value2, "textE");
            return (Criteria) this;
        }

        public Criteria andTextFIsNull() {
            addCriterion("text_f is null");
            return (Criteria) this;
        }

        public Criteria andTextFIsNotNull() {
            addCriterion("text_f is not null");
            return (Criteria) this;
        }

        public Criteria andTextFEqualTo(String value) {
            addCriterion("text_f =", value, "textF");
            return (Criteria) this;
        }

        public Criteria andTextFNotEqualTo(String value) {
            addCriterion("text_f <>", value, "textF");
            return (Criteria) this;
        }

        public Criteria andTextFGreaterThan(String value) {
            addCriterion("text_f >", value, "textF");
            return (Criteria) this;
        }

        public Criteria andTextFGreaterThanOrEqualTo(String value) {
            addCriterion("text_f >=", value, "textF");
            return (Criteria) this;
        }

        public Criteria andTextFLessThan(String value) {
            addCriterion("text_f <", value, "textF");
            return (Criteria) this;
        }

        public Criteria andTextFLessThanOrEqualTo(String value) {
            addCriterion("text_f <=", value, "textF");
            return (Criteria) this;
        }

        public Criteria andTextFLike(String value) {
            addCriterion("text_f like", value, "textF");
            return (Criteria) this;
        }

        public Criteria andTextFNotLike(String value) {
            addCriterion("text_f not like", value, "textF");
            return (Criteria) this;
        }

        public Criteria andTextFIn(List<String> values) {
            addCriterion("text_f in", values, "textF");
            return (Criteria) this;
        }

        public Criteria andTextFNotIn(List<String> values) {
            addCriterion("text_f not in", values, "textF");
            return (Criteria) this;
        }

        public Criteria andTextFBetween(String value1, String value2) {
            addCriterion("text_f between", value1, value2, "textF");
            return (Criteria) this;
        }

        public Criteria andTextFNotBetween(String value1, String value2) {
            addCriterion("text_f not between", value1, value2, "textF");
            return (Criteria) this;
        }

        public Criteria andTextSIsNull() {
            addCriterion("text_s is null");
            return (Criteria) this;
        }

        public Criteria andTextSIsNotNull() {
            addCriterion("text_s is not null");
            return (Criteria) this;
        }

        public Criteria andTextSEqualTo(String value) {
            addCriterion("text_s =", value, "textS");
            return (Criteria) this;
        }

        public Criteria andTextSNotEqualTo(String value) {
            addCriterion("text_s <>", value, "textS");
            return (Criteria) this;
        }

        public Criteria andTextSGreaterThan(String value) {
            addCriterion("text_s >", value, "textS");
            return (Criteria) this;
        }

        public Criteria andTextSGreaterThanOrEqualTo(String value) {
            addCriterion("text_s >=", value, "textS");
            return (Criteria) this;
        }

        public Criteria andTextSLessThan(String value) {
            addCriterion("text_s <", value, "textS");
            return (Criteria) this;
        }

        public Criteria andTextSLessThanOrEqualTo(String value) {
            addCriterion("text_s <=", value, "textS");
            return (Criteria) this;
        }

        public Criteria andTextSLike(String value) {
            addCriterion("text_s like", value, "textS");
            return (Criteria) this;
        }

        public Criteria andTextSNotLike(String value) {
            addCriterion("text_s not like", value, "textS");
            return (Criteria) this;
        }

        public Criteria andTextSIn(List<String> values) {
            addCriterion("text_s in", values, "textS");
            return (Criteria) this;
        }

        public Criteria andTextSNotIn(List<String> values) {
            addCriterion("text_s not in", values, "textS");
            return (Criteria) this;
        }

        public Criteria andTextSBetween(String value1, String value2) {
            addCriterion("text_s between", value1, value2, "textS");
            return (Criteria) this;
        }

        public Criteria andTextSNotBetween(String value1, String value2) {
            addCriterion("text_s not between", value1, value2, "textS");
            return (Criteria) this;
        }

        public Criteria andTextCIsNull() {
            addCriterion("text_c is null");
            return (Criteria) this;
        }

        public Criteria andTextCIsNotNull() {
            addCriterion("text_c is not null");
            return (Criteria) this;
        }

        public Criteria andTextCEqualTo(String value) {
            addCriterion("text_c =", value, "textC");
            return (Criteria) this;
        }

        public Criteria andTextCNotEqualTo(String value) {
            addCriterion("text_c <>", value, "textC");
            return (Criteria) this;
        }

        public Criteria andTextCGreaterThan(String value) {
            addCriterion("text_c >", value, "textC");
            return (Criteria) this;
        }

        public Criteria andTextCGreaterThanOrEqualTo(String value) {
            addCriterion("text_c >=", value, "textC");
            return (Criteria) this;
        }

        public Criteria andTextCLessThan(String value) {
            addCriterion("text_c <", value, "textC");
            return (Criteria) this;
        }

        public Criteria andTextCLessThanOrEqualTo(String value) {
            addCriterion("text_c <=", value, "textC");
            return (Criteria) this;
        }

        public Criteria andTextCLike(String value) {
            addCriterion("text_c like", value, "textC");
            return (Criteria) this;
        }

        public Criteria andTextCNotLike(String value) {
            addCriterion("text_c not like", value, "textC");
            return (Criteria) this;
        }

        public Criteria andTextCIn(List<String> values) {
            addCriterion("text_c in", values, "textC");
            return (Criteria) this;
        }

        public Criteria andTextCNotIn(List<String> values) {
            addCriterion("text_c not in", values, "textC");
            return (Criteria) this;
        }

        public Criteria andTextCBetween(String value1, String value2) {
            addCriterion("text_c between", value1, value2, "textC");
            return (Criteria) this;
        }

        public Criteria andTextCNotBetween(String value1, String value2) {
            addCriterion("text_c not between", value1, value2, "textC");
            return (Criteria) this;
        }

        public Criteria andTextRIsNull() {
            addCriterion("text_r is null");
            return (Criteria) this;
        }

        public Criteria andTextRIsNotNull() {
            addCriterion("text_r is not null");
            return (Criteria) this;
        }

        public Criteria andTextREqualTo(String value) {
            addCriterion("text_r =", value, "textR");
            return (Criteria) this;
        }

        public Criteria andTextRNotEqualTo(String value) {
            addCriterion("text_r <>", value, "textR");
            return (Criteria) this;
        }

        public Criteria andTextRGreaterThan(String value) {
            addCriterion("text_r >", value, "textR");
            return (Criteria) this;
        }

        public Criteria andTextRGreaterThanOrEqualTo(String value) {
            addCriterion("text_r >=", value, "textR");
            return (Criteria) this;
        }

        public Criteria andTextRLessThan(String value) {
            addCriterion("text_r <", value, "textR");
            return (Criteria) this;
        }

        public Criteria andTextRLessThanOrEqualTo(String value) {
            addCriterion("text_r <=", value, "textR");
            return (Criteria) this;
        }

        public Criteria andTextRLike(String value) {
            addCriterion("text_r like", value, "textR");
            return (Criteria) this;
        }

        public Criteria andTextRNotLike(String value) {
            addCriterion("text_r not like", value, "textR");
            return (Criteria) this;
        }

        public Criteria andTextRIn(List<String> values) {
            addCriterion("text_r in", values, "textR");
            return (Criteria) this;
        }

        public Criteria andTextRNotIn(List<String> values) {
            addCriterion("text_r not in", values, "textR");
            return (Criteria) this;
        }

        public Criteria andTextRBetween(String value1, String value2) {
            addCriterion("text_r between", value1, value2, "textR");
            return (Criteria) this;
        }

        public Criteria andTextRNotBetween(String value1, String value2) {
            addCriterion("text_r not between", value1, value2, "textR");
            return (Criteria) this;
        }

        public Criteria andTextAIsNull() {
            addCriterion("text_a is null");
            return (Criteria) this;
        }

        public Criteria andTextAIsNotNull() {
            addCriterion("text_a is not null");
            return (Criteria) this;
        }

        public Criteria andTextAEqualTo(String value) {
            addCriterion("text_a =", value, "textA");
            return (Criteria) this;
        }

        public Criteria andTextANotEqualTo(String value) {
            addCriterion("text_a <>", value, "textA");
            return (Criteria) this;
        }

        public Criteria andTextAGreaterThan(String value) {
            addCriterion("text_a >", value, "textA");
            return (Criteria) this;
        }

        public Criteria andTextAGreaterThanOrEqualTo(String value) {
            addCriterion("text_a >=", value, "textA");
            return (Criteria) this;
        }

        public Criteria andTextALessThan(String value) {
            addCriterion("text_a <", value, "textA");
            return (Criteria) this;
        }

        public Criteria andTextALessThanOrEqualTo(String value) {
            addCriterion("text_a <=", value, "textA");
            return (Criteria) this;
        }

        public Criteria andTextALike(String value) {
            addCriterion("text_a like", value, "textA");
            return (Criteria) this;
        }

        public Criteria andTextANotLike(String value) {
            addCriterion("text_a not like", value, "textA");
            return (Criteria) this;
        }

        public Criteria andTextAIn(List<String> values) {
            addCriterion("text_a in", values, "textA");
            return (Criteria) this;
        }

        public Criteria andTextANotIn(List<String> values) {
            addCriterion("text_a not in", values, "textA");
            return (Criteria) this;
        }

        public Criteria andTextABetween(String value1, String value2) {
            addCriterion("text_a between", value1, value2, "textA");
            return (Criteria) this;
        }

        public Criteria andTextANotBetween(String value1, String value2) {
            addCriterion("text_a not between", value1, value2, "textA");
            return (Criteria) this;
        }

        public Criteria andNameIsNull() {
            addCriterion("name is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("name is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("name =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("name <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("name >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("name >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("name <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("name <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("name like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("name not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("name in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("name not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("name between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("name not between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andControlledListIsNull() {
            addCriterion("controlled_list is null");
            return (Criteria) this;
        }

        public Criteria andControlledListIsNotNull() {
            addCriterion("controlled_list is not null");
            return (Criteria) this;
        }

        public Criteria andControlledListEqualTo(Integer value) {
            addCriterion("controlled_list =", value, "controlledList");
            return (Criteria) this;
        }

        public Criteria andControlledListNotEqualTo(Integer value) {
            addCriterion("controlled_list <>", value, "controlledList");
            return (Criteria) this;
        }

        public Criteria andControlledListGreaterThan(Integer value) {
            addCriterion("controlled_list >", value, "controlledList");
            return (Criteria) this;
        }

        public Criteria andControlledListGreaterThanOrEqualTo(Integer value) {
            addCriterion("controlled_list >=", value, "controlledList");
            return (Criteria) this;
        }

        public Criteria andControlledListLessThan(Integer value) {
            addCriterion("controlled_list <", value, "controlledList");
            return (Criteria) this;
        }

        public Criteria andControlledListLessThanOrEqualTo(Integer value) {
            addCriterion("controlled_list <=", value, "controlledList");
            return (Criteria) this;
        }

        public Criteria andControlledListIn(List<Integer> values) {
            addCriterion("controlled_list in", values, "controlledList");
            return (Criteria) this;
        }

        public Criteria andControlledListNotIn(List<Integer> values) {
            addCriterion("controlled_list not in", values, "controlledList");
            return (Criteria) this;
        }

        public Criteria andControlledListBetween(Integer value1, Integer value2) {
            addCriterion("controlled_list between", value1, value2, "controlledList");
            return (Criteria) this;
        }

        public Criteria andControlledListNotBetween(Integer value1, Integer value2) {
            addCriterion("controlled_list not between", value1, value2, "controlledList");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table public.QuestionsFields
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
     * This class corresponds to the database table public.QuestionsFields
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