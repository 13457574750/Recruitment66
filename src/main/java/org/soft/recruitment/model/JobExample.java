package org.soft.recruitment.model;

import java.util.ArrayList;
import java.util.List;

public class JobExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public JobExample() {
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

        public Criteria andJobIdIsNull() {
            addCriterion("job_Id is null");
            return (Criteria) this;
        }

        public Criteria andJobIdIsNotNull() {
            addCriterion("job_Id is not null");
            return (Criteria) this;
        }

        public Criteria andJobIdEqualTo(Integer value) {
            addCriterion("job_Id =", value, "jobId");
            return (Criteria) this;
        }

        public Criteria andJobIdNotEqualTo(Integer value) {
            addCriterion("job_Id <>", value, "jobId");
            return (Criteria) this;
        }

        public Criteria andJobIdGreaterThan(Integer value) {
            addCriterion("job_Id >", value, "jobId");
            return (Criteria) this;
        }

        public Criteria andJobIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("job_Id >=", value, "jobId");
            return (Criteria) this;
        }

        public Criteria andJobIdLessThan(Integer value) {
            addCriterion("job_Id <", value, "jobId");
            return (Criteria) this;
        }

        public Criteria andJobIdLessThanOrEqualTo(Integer value) {
            addCriterion("job_Id <=", value, "jobId");
            return (Criteria) this;
        }

        public Criteria andJobIdIn(List<Integer> values) {
            addCriterion("job_Id in", values, "jobId");
            return (Criteria) this;
        }

        public Criteria andJobIdNotIn(List<Integer> values) {
            addCriterion("job_Id not in", values, "jobId");
            return (Criteria) this;
        }

        public Criteria andJobIdBetween(Integer value1, Integer value2) {
            addCriterion("job_Id between", value1, value2, "jobId");
            return (Criteria) this;
        }

        public Criteria andJobIdNotBetween(Integer value1, Integer value2) {
            addCriterion("job_Id not between", value1, value2, "jobId");
            return (Criteria) this;
        }

        public Criteria andJobNameIsNull() {
            addCriterion("job_Name is null");
            return (Criteria) this;
        }

        public Criteria andJobNameIsNotNull() {
            addCriterion("job_Name is not null");
            return (Criteria) this;
        }

        public Criteria andJobNameEqualTo(String value) {
            addCriterion("job_Name =", value, "jobName");
            return (Criteria) this;
        }

        public Criteria andJobNameNotEqualTo(String value) {
            addCriterion("job_Name <>", value, "jobName");
            return (Criteria) this;
        }

        public Criteria andJobNameGreaterThan(String value) {
            addCriterion("job_Name >", value, "jobName");
            return (Criteria) this;
        }

        public Criteria andJobNameGreaterThanOrEqualTo(String value) {
            addCriterion("job_Name >=", value, "jobName");
            return (Criteria) this;
        }

        public Criteria andJobNameLessThan(String value) {
            addCriterion("job_Name <", value, "jobName");
            return (Criteria) this;
        }

        public Criteria andJobNameLessThanOrEqualTo(String value) {
            addCriterion("job_Name <=", value, "jobName");
            return (Criteria) this;
        }

        public Criteria andJobNameLike(String value) {
            addCriterion("job_Name like", value, "jobName");
            return (Criteria) this;
        }

        public Criteria andJobNameNotLike(String value) {
            addCriterion("job_Name not like", value, "jobName");
            return (Criteria) this;
        }

        public Criteria andJobNameIn(List<String> values) {
            addCriterion("job_Name in", values, "jobName");
            return (Criteria) this;
        }

        public Criteria andJobNameNotIn(List<String> values) {
            addCriterion("job_Name not in", values, "jobName");
            return (Criteria) this;
        }

        public Criteria andJobNameBetween(String value1, String value2) {
            addCriterion("job_Name between", value1, value2, "jobName");
            return (Criteria) this;
        }

        public Criteria andJobNameNotBetween(String value1, String value2) {
            addCriterion("job_Name not between", value1, value2, "jobName");
            return (Criteria) this;
        }

        public Criteria andJobSalaryIsNull() {
            addCriterion("job_Salary is null");
            return (Criteria) this;
        }

        public Criteria andJobSalaryIsNotNull() {
            addCriterion("job_Salary is not null");
            return (Criteria) this;
        }

        public Criteria andJobSalaryEqualTo(Double value) {
            addCriterion("job_Salary =", value, "jobSalary");
            return (Criteria) this;
        }

        public Criteria andJobSalaryNotEqualTo(Double value) {
            addCriterion("job_Salary <>", value, "jobSalary");
            return (Criteria) this;
        }

        public Criteria andJobSalaryGreaterThan(Double value) {
            addCriterion("job_Salary >", value, "jobSalary");
            return (Criteria) this;
        }

        public Criteria andJobSalaryGreaterThanOrEqualTo(Double value) {
            addCriterion("job_Salary >=", value, "jobSalary");
            return (Criteria) this;
        }

        public Criteria andJobSalaryLessThan(Double value) {
            addCriterion("job_Salary <", value, "jobSalary");
            return (Criteria) this;
        }

        public Criteria andJobSalaryLessThanOrEqualTo(Double value) {
            addCriterion("job_Salary <=", value, "jobSalary");
            return (Criteria) this;
        }

        public Criteria andJobSalaryIn(List<Double> values) {
            addCriterion("job_Salary in", values, "jobSalary");
            return (Criteria) this;
        }

        public Criteria andJobSalaryNotIn(List<Double> values) {
            addCriterion("job_Salary not in", values, "jobSalary");
            return (Criteria) this;
        }

        public Criteria andJobSalaryBetween(Double value1, Double value2) {
            addCriterion("job_Salary between", value1, value2, "jobSalary");
            return (Criteria) this;
        }

        public Criteria andJobSalaryNotBetween(Double value1, Double value2) {
            addCriterion("job_Salary not between", value1, value2, "jobSalary");
            return (Criteria) this;
        }

        public Criteria andJobAddressIsNull() {
            addCriterion("job_Address is null");
            return (Criteria) this;
        }

        public Criteria andJobAddressIsNotNull() {
            addCriterion("job_Address is not null");
            return (Criteria) this;
        }

        public Criteria andJobAddressEqualTo(String value) {
            addCriterion("job_Address =", value, "jobAddress");
            return (Criteria) this;
        }

        public Criteria andJobAddressNotEqualTo(String value) {
            addCriterion("job_Address <>", value, "jobAddress");
            return (Criteria) this;
        }

        public Criteria andJobAddressGreaterThan(String value) {
            addCriterion("job_Address >", value, "jobAddress");
            return (Criteria) this;
        }

        public Criteria andJobAddressGreaterThanOrEqualTo(String value) {
            addCriterion("job_Address >=", value, "jobAddress");
            return (Criteria) this;
        }

        public Criteria andJobAddressLessThan(String value) {
            addCriterion("job_Address <", value, "jobAddress");
            return (Criteria) this;
        }

        public Criteria andJobAddressLessThanOrEqualTo(String value) {
            addCriterion("job_Address <=", value, "jobAddress");
            return (Criteria) this;
        }

        public Criteria andJobAddressLike(String value) {
            addCriterion("job_Address like", value, "jobAddress");
            return (Criteria) this;
        }

        public Criteria andJobAddressNotLike(String value) {
            addCriterion("job_Address not like", value, "jobAddress");
            return (Criteria) this;
        }

        public Criteria andJobAddressIn(List<String> values) {
            addCriterion("job_Address in", values, "jobAddress");
            return (Criteria) this;
        }

        public Criteria andJobAddressNotIn(List<String> values) {
            addCriterion("job_Address not in", values, "jobAddress");
            return (Criteria) this;
        }

        public Criteria andJobAddressBetween(String value1, String value2) {
            addCriterion("job_Address between", value1, value2, "jobAddress");
            return (Criteria) this;
        }

        public Criteria andJobAddressNotBetween(String value1, String value2) {
            addCriterion("job_Address not between", value1, value2, "jobAddress");
            return (Criteria) this;
        }

        public Criteria andJobErIsNull() {
            addCriterion("job_ER is null");
            return (Criteria) this;
        }

        public Criteria andJobErIsNotNull() {
            addCriterion("job_ER is not null");
            return (Criteria) this;
        }

        public Criteria andJobErEqualTo(String value) {
            addCriterion("job_ER =", value, "jobEr");
            return (Criteria) this;
        }

        public Criteria andJobErNotEqualTo(String value) {
            addCriterion("job_ER <>", value, "jobEr");
            return (Criteria) this;
        }

        public Criteria andJobErGreaterThan(String value) {
            addCriterion("job_ER >", value, "jobEr");
            return (Criteria) this;
        }

        public Criteria andJobErGreaterThanOrEqualTo(String value) {
            addCriterion("job_ER >=", value, "jobEr");
            return (Criteria) this;
        }

        public Criteria andJobErLessThan(String value) {
            addCriterion("job_ER <", value, "jobEr");
            return (Criteria) this;
        }

        public Criteria andJobErLessThanOrEqualTo(String value) {
            addCriterion("job_ER <=", value, "jobEr");
            return (Criteria) this;
        }

        public Criteria andJobErLike(String value) {
            addCriterion("job_ER like", value, "jobEr");
            return (Criteria) this;
        }

        public Criteria andJobErNotLike(String value) {
            addCriterion("job_ER not like", value, "jobEr");
            return (Criteria) this;
        }

        public Criteria andJobErIn(List<String> values) {
            addCriterion("job_ER in", values, "jobEr");
            return (Criteria) this;
        }

        public Criteria andJobErNotIn(List<String> values) {
            addCriterion("job_ER not in", values, "jobEr");
            return (Criteria) this;
        }

        public Criteria andJobErBetween(String value1, String value2) {
            addCriterion("job_ER between", value1, value2, "jobEr");
            return (Criteria) this;
        }

        public Criteria andJobErNotBetween(String value1, String value2) {
            addCriterion("job_ER not between", value1, value2, "jobEr");
            return (Criteria) this;
        }

        public Criteria andJobEducationIsNull() {
            addCriterion("job_Education is null");
            return (Criteria) this;
        }

        public Criteria andJobEducationIsNotNull() {
            addCriterion("job_Education is not null");
            return (Criteria) this;
        }

        public Criteria andJobEducationEqualTo(String value) {
            addCriterion("job_Education =", value, "jobEducation");
            return (Criteria) this;
        }

        public Criteria andJobEducationNotEqualTo(String value) {
            addCriterion("job_Education <>", value, "jobEducation");
            return (Criteria) this;
        }

        public Criteria andJobEducationGreaterThan(String value) {
            addCriterion("job_Education >", value, "jobEducation");
            return (Criteria) this;
        }

        public Criteria andJobEducationGreaterThanOrEqualTo(String value) {
            addCriterion("job_Education >=", value, "jobEducation");
            return (Criteria) this;
        }

        public Criteria andJobEducationLessThan(String value) {
            addCriterion("job_Education <", value, "jobEducation");
            return (Criteria) this;
        }

        public Criteria andJobEducationLessThanOrEqualTo(String value) {
            addCriterion("job_Education <=", value, "jobEducation");
            return (Criteria) this;
        }

        public Criteria andJobEducationLike(String value) {
            addCriterion("job_Education like", value, "jobEducation");
            return (Criteria) this;
        }

        public Criteria andJobEducationNotLike(String value) {
            addCriterion("job_Education not like", value, "jobEducation");
            return (Criteria) this;
        }

        public Criteria andJobEducationIn(List<String> values) {
            addCriterion("job_Education in", values, "jobEducation");
            return (Criteria) this;
        }

        public Criteria andJobEducationNotIn(List<String> values) {
            addCriterion("job_Education not in", values, "jobEducation");
            return (Criteria) this;
        }

        public Criteria andJobEducationBetween(String value1, String value2) {
            addCriterion("job_Education between", value1, value2, "jobEducation");
            return (Criteria) this;
        }

        public Criteria andJobEducationNotBetween(String value1, String value2) {
            addCriterion("job_Education not between", value1, value2, "jobEducation");
            return (Criteria) this;
        }

        public Criteria andJobTypeIsNull() {
            addCriterion("job_Type is null");
            return (Criteria) this;
        }

        public Criteria andJobTypeIsNotNull() {
            addCriterion("job_Type is not null");
            return (Criteria) this;
        }

        public Criteria andJobTypeEqualTo(String value) {
            addCriterion("job_Type =", value, "jobType");
            return (Criteria) this;
        }

        public Criteria andJobTypeNotEqualTo(String value) {
            addCriterion("job_Type <>", value, "jobType");
            return (Criteria) this;
        }

        public Criteria andJobTypeGreaterThan(String value) {
            addCriterion("job_Type >", value, "jobType");
            return (Criteria) this;
        }

        public Criteria andJobTypeGreaterThanOrEqualTo(String value) {
            addCriterion("job_Type >=", value, "jobType");
            return (Criteria) this;
        }

        public Criteria andJobTypeLessThan(String value) {
            addCriterion("job_Type <", value, "jobType");
            return (Criteria) this;
        }

        public Criteria andJobTypeLessThanOrEqualTo(String value) {
            addCriterion("job_Type <=", value, "jobType");
            return (Criteria) this;
        }

        public Criteria andJobTypeLike(String value) {
            addCriterion("job_Type like", value, "jobType");
            return (Criteria) this;
        }

        public Criteria andJobTypeNotLike(String value) {
            addCriterion("job_Type not like", value, "jobType");
            return (Criteria) this;
        }

        public Criteria andJobTypeIn(List<String> values) {
            addCriterion("job_Type in", values, "jobType");
            return (Criteria) this;
        }

        public Criteria andJobTypeNotIn(List<String> values) {
            addCriterion("job_Type not in", values, "jobType");
            return (Criteria) this;
        }

        public Criteria andJobTypeBetween(String value1, String value2) {
            addCriterion("job_Type between", value1, value2, "jobType");
            return (Criteria) this;
        }

        public Criteria andJobTypeNotBetween(String value1, String value2) {
            addCriterion("job_Type not between", value1, value2, "jobType");
            return (Criteria) this;
        }

        public Criteria andJobReleaseTimeIsNull() {
            addCriterion("job_Release_Time is null");
            return (Criteria) this;
        }

        public Criteria andJobReleaseTimeIsNotNull() {
            addCriterion("job_Release_Time is not null");
            return (Criteria) this;
        }

        public Criteria andJobReleaseTimeEqualTo(String value) {
            addCriterion("job_Release_Time =", value, "jobReleaseTime");
            return (Criteria) this;
        }

        public Criteria andJobReleaseTimeNotEqualTo(String value) {
            addCriterion("job_Release_Time <>", value, "jobReleaseTime");
            return (Criteria) this;
        }

        public Criteria andJobReleaseTimeGreaterThan(String value) {
            addCriterion("job_Release_Time >", value, "jobReleaseTime");
            return (Criteria) this;
        }

        public Criteria andJobReleaseTimeGreaterThanOrEqualTo(String value) {
            addCriterion("job_Release_Time >=", value, "jobReleaseTime");
            return (Criteria) this;
        }

        public Criteria andJobReleaseTimeLessThan(String value) {
            addCriterion("job_Release_Time <", value, "jobReleaseTime");
            return (Criteria) this;
        }

        public Criteria andJobReleaseTimeLessThanOrEqualTo(String value) {
            addCriterion("job_Release_Time <=", value, "jobReleaseTime");
            return (Criteria) this;
        }

        public Criteria andJobReleaseTimeLike(String value) {
            addCriterion("job_Release_Time like", value, "jobReleaseTime");
            return (Criteria) this;
        }

        public Criteria andJobReleaseTimeNotLike(String value) {
            addCriterion("job_Release_Time not like", value, "jobReleaseTime");
            return (Criteria) this;
        }

        public Criteria andJobReleaseTimeIn(List<String> values) {
            addCriterion("job_Release_Time in", values, "jobReleaseTime");
            return (Criteria) this;
        }

        public Criteria andJobReleaseTimeNotIn(List<String> values) {
            addCriterion("job_Release_Time not in", values, "jobReleaseTime");
            return (Criteria) this;
        }

        public Criteria andJobReleaseTimeBetween(String value1, String value2) {
            addCriterion("job_Release_Time between", value1, value2, "jobReleaseTime");
            return (Criteria) this;
        }

        public Criteria andJobReleaseTimeNotBetween(String value1, String value2) {
            addCriterion("job_Release_Time not between", value1, value2, "jobReleaseTime");
            return (Criteria) this;
        }

        public Criteria andJobNumberIsNull() {
            addCriterion("job_Number is null");
            return (Criteria) this;
        }

        public Criteria andJobNumberIsNotNull() {
            addCriterion("job_Number is not null");
            return (Criteria) this;
        }

        public Criteria andJobNumberEqualTo(Integer value) {
            addCriterion("job_Number =", value, "jobNumber");
            return (Criteria) this;
        }

        public Criteria andJobNumberNotEqualTo(Integer value) {
            addCriterion("job_Number <>", value, "jobNumber");
            return (Criteria) this;
        }

        public Criteria andJobNumberGreaterThan(Integer value) {
            addCriterion("job_Number >", value, "jobNumber");
            return (Criteria) this;
        }

        public Criteria andJobNumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("job_Number >=", value, "jobNumber");
            return (Criteria) this;
        }

        public Criteria andJobNumberLessThan(Integer value) {
            addCriterion("job_Number <", value, "jobNumber");
            return (Criteria) this;
        }

        public Criteria andJobNumberLessThanOrEqualTo(Integer value) {
            addCriterion("job_Number <=", value, "jobNumber");
            return (Criteria) this;
        }

        public Criteria andJobNumberIn(List<Integer> values) {
            addCriterion("job_Number in", values, "jobNumber");
            return (Criteria) this;
        }

        public Criteria andJobNumberNotIn(List<Integer> values) {
            addCriterion("job_Number not in", values, "jobNumber");
            return (Criteria) this;
        }

        public Criteria andJobNumberBetween(Integer value1, Integer value2) {
            addCriterion("job_Number between", value1, value2, "jobNumber");
            return (Criteria) this;
        }

        public Criteria andJobNumberNotBetween(Integer value1, Integer value2) {
            addCriterion("job_Number not between", value1, value2, "jobNumber");
            return (Criteria) this;
        }

        public Criteria andJobWelfareIsNull() {
            addCriterion("job_Welfare is null");
            return (Criteria) this;
        }

        public Criteria andJobWelfareIsNotNull() {
            addCriterion("job_Welfare is not null");
            return (Criteria) this;
        }

        public Criteria andJobWelfareEqualTo(String value) {
            addCriterion("job_Welfare =", value, "jobWelfare");
            return (Criteria) this;
        }

        public Criteria andJobWelfareNotEqualTo(String value) {
            addCriterion("job_Welfare <>", value, "jobWelfare");
            return (Criteria) this;
        }

        public Criteria andJobWelfareGreaterThan(String value) {
            addCriterion("job_Welfare >", value, "jobWelfare");
            return (Criteria) this;
        }

        public Criteria andJobWelfareGreaterThanOrEqualTo(String value) {
            addCriterion("job_Welfare >=", value, "jobWelfare");
            return (Criteria) this;
        }

        public Criteria andJobWelfareLessThan(String value) {
            addCriterion("job_Welfare <", value, "jobWelfare");
            return (Criteria) this;
        }

        public Criteria andJobWelfareLessThanOrEqualTo(String value) {
            addCriterion("job_Welfare <=", value, "jobWelfare");
            return (Criteria) this;
        }

        public Criteria andJobWelfareLike(String value) {
            addCriterion("job_Welfare like", value, "jobWelfare");
            return (Criteria) this;
        }

        public Criteria andJobWelfareNotLike(String value) {
            addCriterion("job_Welfare not like", value, "jobWelfare");
            return (Criteria) this;
        }

        public Criteria andJobWelfareIn(List<String> values) {
            addCriterion("job_Welfare in", values, "jobWelfare");
            return (Criteria) this;
        }

        public Criteria andJobWelfareNotIn(List<String> values) {
            addCriterion("job_Welfare not in", values, "jobWelfare");
            return (Criteria) this;
        }

        public Criteria andJobWelfareBetween(String value1, String value2) {
            addCriterion("job_Welfare between", value1, value2, "jobWelfare");
            return (Criteria) this;
        }

        public Criteria andJobWelfareNotBetween(String value1, String value2) {
            addCriterion("job_Welfare not between", value1, value2, "jobWelfare");
            return (Criteria) this;
        }

        public Criteria andJobContentIsNull() {
            addCriterion("job_Content is null");
            return (Criteria) this;
        }

        public Criteria andJobContentIsNotNull() {
            addCriterion("job_Content is not null");
            return (Criteria) this;
        }

        public Criteria andJobContentEqualTo(String value) {
            addCriterion("job_Content =", value, "jobContent");
            return (Criteria) this;
        }

        public Criteria andJobContentNotEqualTo(String value) {
            addCriterion("job_Content <>", value, "jobContent");
            return (Criteria) this;
        }

        public Criteria andJobContentGreaterThan(String value) {
            addCriterion("job_Content >", value, "jobContent");
            return (Criteria) this;
        }

        public Criteria andJobContentGreaterThanOrEqualTo(String value) {
            addCriterion("job_Content >=", value, "jobContent");
            return (Criteria) this;
        }

        public Criteria andJobContentLessThan(String value) {
            addCriterion("job_Content <", value, "jobContent");
            return (Criteria) this;
        }

        public Criteria andJobContentLessThanOrEqualTo(String value) {
            addCriterion("job_Content <=", value, "jobContent");
            return (Criteria) this;
        }

        public Criteria andJobContentLike(String value) {
            addCriterion("job_Content like", value, "jobContent");
            return (Criteria) this;
        }

        public Criteria andJobContentNotLike(String value) {
            addCriterion("job_Content not like", value, "jobContent");
            return (Criteria) this;
        }

        public Criteria andJobContentIn(List<String> values) {
            addCriterion("job_Content in", values, "jobContent");
            return (Criteria) this;
        }

        public Criteria andJobContentNotIn(List<String> values) {
            addCriterion("job_Content not in", values, "jobContent");
            return (Criteria) this;
        }

        public Criteria andJobContentBetween(String value1, String value2) {
            addCriterion("job_Content between", value1, value2, "jobContent");
            return (Criteria) this;
        }

        public Criteria andJobContentNotBetween(String value1, String value2) {
            addCriterion("job_Content not between", value1, value2, "jobContent");
            return (Criteria) this;
        }

        public Criteria andJobRequirementsIsNull() {
            addCriterion("job_Requirements is null");
            return (Criteria) this;
        }

        public Criteria andJobRequirementsIsNotNull() {
            addCriterion("job_Requirements is not null");
            return (Criteria) this;
        }

        public Criteria andJobRequirementsEqualTo(String value) {
            addCriterion("job_Requirements =", value, "jobRequirements");
            return (Criteria) this;
        }

        public Criteria andJobRequirementsNotEqualTo(String value) {
            addCriterion("job_Requirements <>", value, "jobRequirements");
            return (Criteria) this;
        }

        public Criteria andJobRequirementsGreaterThan(String value) {
            addCriterion("job_Requirements >", value, "jobRequirements");
            return (Criteria) this;
        }

        public Criteria andJobRequirementsGreaterThanOrEqualTo(String value) {
            addCriterion("job_Requirements >=", value, "jobRequirements");
            return (Criteria) this;
        }

        public Criteria andJobRequirementsLessThan(String value) {
            addCriterion("job_Requirements <", value, "jobRequirements");
            return (Criteria) this;
        }

        public Criteria andJobRequirementsLessThanOrEqualTo(String value) {
            addCriterion("job_Requirements <=", value, "jobRequirements");
            return (Criteria) this;
        }

        public Criteria andJobRequirementsLike(String value) {
            addCriterion("job_Requirements like", value, "jobRequirements");
            return (Criteria) this;
        }

        public Criteria andJobRequirementsNotLike(String value) {
            addCriterion("job_Requirements not like", value, "jobRequirements");
            return (Criteria) this;
        }

        public Criteria andJobRequirementsIn(List<String> values) {
            addCriterion("job_Requirements in", values, "jobRequirements");
            return (Criteria) this;
        }

        public Criteria andJobRequirementsNotIn(List<String> values) {
            addCriterion("job_Requirements not in", values, "jobRequirements");
            return (Criteria) this;
        }

        public Criteria andJobRequirementsBetween(String value1, String value2) {
            addCriterion("job_Requirements between", value1, value2, "jobRequirements");
            return (Criteria) this;
        }

        public Criteria andJobRequirementsNotBetween(String value1, String value2) {
            addCriterion("job_Requirements not between", value1, value2, "jobRequirements");
            return (Criteria) this;
        }

        public Criteria andCompanyNameIsNull() {
            addCriterion("company_Name is null");
            return (Criteria) this;
        }

        public Criteria andCompanyNameIsNotNull() {
            addCriterion("company_Name is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyNameEqualTo(String value) {
            addCriterion("company_Name =", value, "companyName");
            return (Criteria) this;
        }

        public Criteria andCompanyNameNotEqualTo(String value) {
            addCriterion("company_Name <>", value, "companyName");
            return (Criteria) this;
        }

        public Criteria andCompanyNameGreaterThan(String value) {
            addCriterion("company_Name >", value, "companyName");
            return (Criteria) this;
        }

        public Criteria andCompanyNameGreaterThanOrEqualTo(String value) {
            addCriterion("company_Name >=", value, "companyName");
            return (Criteria) this;
        }

        public Criteria andCompanyNameLessThan(String value) {
            addCriterion("company_Name <", value, "companyName");
            return (Criteria) this;
        }

        public Criteria andCompanyNameLessThanOrEqualTo(String value) {
            addCriterion("company_Name <=", value, "companyName");
            return (Criteria) this;
        }

        public Criteria andCompanyNameLike(String value) {
            addCriterion("company_Name like", value, "companyName");
            return (Criteria) this;
        }

        public Criteria andCompanyNameNotLike(String value) {
            addCriterion("company_Name not like", value, "companyName");
            return (Criteria) this;
        }

        public Criteria andCompanyNameIn(List<String> values) {
            addCriterion("company_Name in", values, "companyName");
            return (Criteria) this;
        }

        public Criteria andCompanyNameNotIn(List<String> values) {
            addCriterion("company_Name not in", values, "companyName");
            return (Criteria) this;
        }

        public Criteria andCompanyNameBetween(String value1, String value2) {
            addCriterion("company_Name between", value1, value2, "companyName");
            return (Criteria) this;
        }

        public Criteria andCompanyNameNotBetween(String value1, String value2) {
            addCriterion("company_Name not between", value1, value2, "companyName");
            return (Criteria) this;
        }

        public Criteria andCompanyIdIsNull() {
            addCriterion("company_Id is null");
            return (Criteria) this;
        }

        public Criteria andCompanyIdIsNotNull() {
            addCriterion("company_Id is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyIdEqualTo(Integer value) {
            addCriterion("company_Id =", value, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyIdNotEqualTo(Integer value) {
            addCriterion("company_Id <>", value, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyIdGreaterThan(Integer value) {
            addCriterion("company_Id >", value, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("company_Id >=", value, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyIdLessThan(Integer value) {
            addCriterion("company_Id <", value, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyIdLessThanOrEqualTo(Integer value) {
            addCriterion("company_Id <=", value, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyIdIn(List<Integer> values) {
            addCriterion("company_Id in", values, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyIdNotIn(List<Integer> values) {
            addCriterion("company_Id not in", values, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyIdBetween(Integer value1, Integer value2) {
            addCriterion("company_Id between", value1, value2, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyIdNotBetween(Integer value1, Integer value2) {
            addCriterion("company_Id not between", value1, value2, "companyId");
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