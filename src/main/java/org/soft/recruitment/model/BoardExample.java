package org.soft.recruitment.model;

import java.util.ArrayList;
import java.util.List;

public class BoardExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public BoardExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

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

        public Criteria andBoardIdIsNull() {
            addCriterion("board_Id is null");
            return (Criteria) this;
        }

        public Criteria andBoardIdIsNotNull() {
            addCriterion("board_Id is not null");
            return (Criteria) this;
        }

        public Criteria andBoardIdEqualTo(Integer value) {
            addCriterion("board_Id =", value, "boardId");
            return (Criteria) this;
        }

        public Criteria andBoardIdNotEqualTo(Integer value) {
            addCriterion("board_Id <>", value, "boardId");
            return (Criteria) this;
        }

        public Criteria andBoardIdGreaterThan(Integer value) {
            addCriterion("board_Id >", value, "boardId");
            return (Criteria) this;
        }

        public Criteria andBoardIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("board_Id >=", value, "boardId");
            return (Criteria) this;
        }

        public Criteria andBoardIdLessThan(Integer value) {
            addCriterion("board_Id <", value, "boardId");
            return (Criteria) this;
        }

        public Criteria andBoardIdLessThanOrEqualTo(Integer value) {
            addCriterion("board_Id <=", value, "boardId");
            return (Criteria) this;
        }

        public Criteria andBoardIdIn(List<Integer> values) {
            addCriterion("board_Id in", values, "boardId");
            return (Criteria) this;
        }

        public Criteria andBoardIdNotIn(List<Integer> values) {
            addCriterion("board_Id not in", values, "boardId");
            return (Criteria) this;
        }

        public Criteria andBoardIdBetween(Integer value1, Integer value2) {
            addCriterion("board_Id between", value1, value2, "boardId");
            return (Criteria) this;
        }

        public Criteria andBoardIdNotBetween(Integer value1, Integer value2) {
            addCriterion("board_Id not between", value1, value2, "boardId");
            return (Criteria) this;
        }

        public Criteria andBoardNameIsNull() {
            addCriterion("board_Name is null");
            return (Criteria) this;
        }

        public Criteria andBoardNameIsNotNull() {
            addCriterion("board_Name is not null");
            return (Criteria) this;
        }

        public Criteria andBoardNameEqualTo(String value) {
            addCriterion("board_Name =", value, "boardName");
            return (Criteria) this;
        }

        public Criteria andBoardNameNotEqualTo(String value) {
            addCriterion("board_Name <>", value, "boardName");
            return (Criteria) this;
        }

        public Criteria andBoardNameGreaterThan(String value) {
            addCriterion("board_Name >", value, "boardName");
            return (Criteria) this;
        }

        public Criteria andBoardNameGreaterThanOrEqualTo(String value) {
            addCriterion("board_Name >=", value, "boardName");
            return (Criteria) this;
        }

        public Criteria andBoardNameLessThan(String value) {
            addCriterion("board_Name <", value, "boardName");
            return (Criteria) this;
        }

        public Criteria andBoardNameLessThanOrEqualTo(String value) {
            addCriterion("board_Name <=", value, "boardName");
            return (Criteria) this;
        }

        public Criteria andBoardNameLike(String value) {
            addCriterion("board_Name like", value, "boardName");
            return (Criteria) this;
        }

        public Criteria andBoardNameNotLike(String value) {
            addCriterion("board_Name not like", value, "boardName");
            return (Criteria) this;
        }

        public Criteria andBoardNameIn(List<String> values) {
            addCriterion("board_Name in", values, "boardName");
            return (Criteria) this;
        }

        public Criteria andBoardNameNotIn(List<String> values) {
            addCriterion("board_Name not in", values, "boardName");
            return (Criteria) this;
        }

        public Criteria andBoardNameBetween(String value1, String value2) {
            addCriterion("board_Name between", value1, value2, "boardName");
            return (Criteria) this;
        }

        public Criteria andBoardNameNotBetween(String value1, String value2) {
            addCriterion("board_Name not between", value1, value2, "boardName");
            return (Criteria) this;
        }

        public Criteria andBoardEmailIsNull() {
            addCriterion("board_Email is null");
            return (Criteria) this;
        }

        public Criteria andBoardEmailIsNotNull() {
            addCriterion("board_Email is not null");
            return (Criteria) this;
        }

        public Criteria andBoardEmailEqualTo(String value) {
            addCriterion("board_Email =", value, "boardEmail");
            return (Criteria) this;
        }

        public Criteria andBoardEmailNotEqualTo(String value) {
            addCriterion("board_Email <>", value, "boardEmail");
            return (Criteria) this;
        }

        public Criteria andBoardEmailGreaterThan(String value) {
            addCriterion("board_Email >", value, "boardEmail");
            return (Criteria) this;
        }

        public Criteria andBoardEmailGreaterThanOrEqualTo(String value) {
            addCriterion("board_Email >=", value, "boardEmail");
            return (Criteria) this;
        }

        public Criteria andBoardEmailLessThan(String value) {
            addCriterion("board_Email <", value, "boardEmail");
            return (Criteria) this;
        }

        public Criteria andBoardEmailLessThanOrEqualTo(String value) {
            addCriterion("board_Email <=", value, "boardEmail");
            return (Criteria) this;
        }

        public Criteria andBoardEmailLike(String value) {
            addCriterion("board_Email like", value, "boardEmail");
            return (Criteria) this;
        }

        public Criteria andBoardEmailNotLike(String value) {
            addCriterion("board_Email not like", value, "boardEmail");
            return (Criteria) this;
        }

        public Criteria andBoardEmailIn(List<String> values) {
            addCriterion("board_Email in", values, "boardEmail");
            return (Criteria) this;
        }

        public Criteria andBoardEmailNotIn(List<String> values) {
            addCriterion("board_Email not in", values, "boardEmail");
            return (Criteria) this;
        }

        public Criteria andBoardEmailBetween(String value1, String value2) {
            addCriterion("board_Email between", value1, value2, "boardEmail");
            return (Criteria) this;
        }

        public Criteria andBoardEmailNotBetween(String value1, String value2) {
            addCriterion("board_Email not between", value1, value2, "boardEmail");
            return (Criteria) this;
        }

        public Criteria andBoardContentIsNull() {
            addCriterion("board_Content is null");
            return (Criteria) this;
        }

        public Criteria andBoardContentIsNotNull() {
            addCriterion("board_Content is not null");
            return (Criteria) this;
        }

        public Criteria andBoardContentEqualTo(String value) {
            addCriterion("board_Content =", value, "boardContent");
            return (Criteria) this;
        }

        public Criteria andBoardContentNotEqualTo(String value) {
            addCriterion("board_Content <>", value, "boardContent");
            return (Criteria) this;
        }

        public Criteria andBoardContentGreaterThan(String value) {
            addCriterion("board_Content >", value, "boardContent");
            return (Criteria) this;
        }

        public Criteria andBoardContentGreaterThanOrEqualTo(String value) {
            addCriterion("board_Content >=", value, "boardContent");
            return (Criteria) this;
        }

        public Criteria andBoardContentLessThan(String value) {
            addCriterion("board_Content <", value, "boardContent");
            return (Criteria) this;
        }

        public Criteria andBoardContentLessThanOrEqualTo(String value) {
            addCriterion("board_Content <=", value, "boardContent");
            return (Criteria) this;
        }

        public Criteria andBoardContentLike(String value) {
            addCriterion("board_Content like", value, "boardContent");
            return (Criteria) this;
        }

        public Criteria andBoardContentNotLike(String value) {
            addCriterion("board_Content not like", value, "boardContent");
            return (Criteria) this;
        }

        public Criteria andBoardContentIn(List<String> values) {
            addCriterion("board_Content in", values, "boardContent");
            return (Criteria) this;
        }

        public Criteria andBoardContentNotIn(List<String> values) {
            addCriterion("board_Content not in", values, "boardContent");
            return (Criteria) this;
        }

        public Criteria andBoardContentBetween(String value1, String value2) {
            addCriterion("board_Content between", value1, value2, "boardContent");
            return (Criteria) this;
        }

        public Criteria andBoardContentNotBetween(String value1, String value2) {
            addCriterion("board_Content not between", value1, value2, "boardContent");
            return (Criteria) this;
        }

        public Criteria andBoardTimeIsNull() {
            addCriterion("board_Time is null");
            return (Criteria) this;
        }

        public Criteria andBoardTimeIsNotNull() {
            addCriterion("board_Time is not null");
            return (Criteria) this;
        }

        public Criteria andBoardTimeEqualTo(String value) {
            addCriterion("board_Time =", value, "boardTime");
            return (Criteria) this;
        }

        public Criteria andBoardTimeNotEqualTo(String value) {
            addCriterion("board_Time <>", value, "boardTime");
            return (Criteria) this;
        }

        public Criteria andBoardTimeGreaterThan(String value) {
            addCriterion("board_Time >", value, "boardTime");
            return (Criteria) this;
        }

        public Criteria andBoardTimeGreaterThanOrEqualTo(String value) {
            addCriterion("board_Time >=", value, "boardTime");
            return (Criteria) this;
        }

        public Criteria andBoardTimeLessThan(String value) {
            addCriterion("board_Time <", value, "boardTime");
            return (Criteria) this;
        }

        public Criteria andBoardTimeLessThanOrEqualTo(String value) {
            addCriterion("board_Time <=", value, "boardTime");
            return (Criteria) this;
        }

        public Criteria andBoardTimeLike(String value) {
            addCriterion("board_Time like", value, "boardTime");
            return (Criteria) this;
        }

        public Criteria andBoardTimeNotLike(String value) {
            addCriterion("board_Time not like", value, "boardTime");
            return (Criteria) this;
        }

        public Criteria andBoardTimeIn(List<String> values) {
            addCriterion("board_Time in", values, "boardTime");
            return (Criteria) this;
        }

        public Criteria andBoardTimeNotIn(List<String> values) {
            addCriterion("board_Time not in", values, "boardTime");
            return (Criteria) this;
        }

        public Criteria andBoardTimeBetween(String value1, String value2) {
            addCriterion("board_Time between", value1, value2, "boardTime");
            return (Criteria) this;
        }

        public Criteria andBoardTimeNotBetween(String value1, String value2) {
            addCriterion("board_Time not between", value1, value2, "boardTime");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

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