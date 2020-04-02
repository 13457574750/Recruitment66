package org.soft.recruitment.model;

import java.util.ArrayList;
import java.util.List;

public class ApplyExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ApplyExample() {
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

        public Criteria andApplyIdIsNull() {
            addCriterion("apply_Id is null");
            return (Criteria) this;
        }

        public Criteria andApplyIdIsNotNull() {
            addCriterion("apply_Id is not null");
            return (Criteria) this;
        }

        public Criteria andApplyIdEqualTo(Integer value) {
            addCriterion("apply_Id =", value, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdNotEqualTo(Integer value) {
            addCriterion("apply_Id <>", value, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdGreaterThan(Integer value) {
            addCriterion("apply_Id >", value, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("apply_Id >=", value, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdLessThan(Integer value) {
            addCriterion("apply_Id <", value, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdLessThanOrEqualTo(Integer value) {
            addCriterion("apply_Id <=", value, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdIn(List<Integer> values) {
            addCriterion("apply_Id in", values, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdNotIn(List<Integer> values) {
            addCriterion("apply_Id not in", values, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdBetween(Integer value1, Integer value2) {
            addCriterion("apply_Id between", value1, value2, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdNotBetween(Integer value1, Integer value2) {
            addCriterion("apply_Id not between", value1, value2, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyReleaseTimeIsNull() {
            addCriterion("apply_Release_Time is null");
            return (Criteria) this;
        }

        public Criteria andApplyReleaseTimeIsNotNull() {
            addCriterion("apply_Release_Time is not null");
            return (Criteria) this;
        }

        public Criteria andApplyReleaseTimeEqualTo(String value) {
            addCriterion("apply_Release_Time =", value, "applyReleaseTime");
            return (Criteria) this;
        }

        public Criteria andApplyReleaseTimeNotEqualTo(String value) {
            addCriterion("apply_Release_Time <>", value, "applyReleaseTime");
            return (Criteria) this;
        }

        public Criteria andApplyReleaseTimeGreaterThan(String value) {
            addCriterion("apply_Release_Time >", value, "applyReleaseTime");
            return (Criteria) this;
        }

        public Criteria andApplyReleaseTimeGreaterThanOrEqualTo(String value) {
            addCriterion("apply_Release_Time >=", value, "applyReleaseTime");
            return (Criteria) this;
        }

        public Criteria andApplyReleaseTimeLessThan(String value) {
            addCriterion("apply_Release_Time <", value, "applyReleaseTime");
            return (Criteria) this;
        }

        public Criteria andApplyReleaseTimeLessThanOrEqualTo(String value) {
            addCriterion("apply_Release_Time <=", value, "applyReleaseTime");
            return (Criteria) this;
        }

        public Criteria andApplyReleaseTimeLike(String value) {
            addCriterion("apply_Release_Time like", value, "applyReleaseTime");
            return (Criteria) this;
        }

        public Criteria andApplyReleaseTimeNotLike(String value) {
            addCriterion("apply_Release_Time not like", value, "applyReleaseTime");
            return (Criteria) this;
        }

        public Criteria andApplyReleaseTimeIn(List<String> values) {
            addCriterion("apply_Release_Time in", values, "applyReleaseTime");
            return (Criteria) this;
        }

        public Criteria andApplyReleaseTimeNotIn(List<String> values) {
            addCriterion("apply_Release_Time not in", values, "applyReleaseTime");
            return (Criteria) this;
        }

        public Criteria andApplyReleaseTimeBetween(String value1, String value2) {
            addCriterion("apply_Release_Time between", value1, value2, "applyReleaseTime");
            return (Criteria) this;
        }

        public Criteria andApplyReleaseTimeNotBetween(String value1, String value2) {
            addCriterion("apply_Release_Time not between", value1, value2, "applyReleaseTime");
            return (Criteria) this;
        }

        public Criteria andJobIdIsNull() {
            addCriterion("job_Id is null");
            return (Criteria) this;
        }

        public Criteria andJobIdIsNotNull() {
            addCriterion("job_Id is not null");
            return (Criteria) this;
        }

        public Criteria andJobIdEqualTo(String value) {
            addCriterion("job_Id =", value, "jobId");
            return (Criteria) this;
        }

        public Criteria andJobIdNotEqualTo(String value) {
            addCriterion("job_Id <>", value, "jobId");
            return (Criteria) this;
        }

        public Criteria andJobIdGreaterThan(String value) {
            addCriterion("job_Id >", value, "jobId");
            return (Criteria) this;
        }

        public Criteria andJobIdGreaterThanOrEqualTo(String value) {
            addCriterion("job_Id >=", value, "jobId");
            return (Criteria) this;
        }

        public Criteria andJobIdLessThan(String value) {
            addCriterion("job_Id <", value, "jobId");
            return (Criteria) this;
        }

        public Criteria andJobIdLessThanOrEqualTo(String value) {
            addCriterion("job_Id <=", value, "jobId");
            return (Criteria) this;
        }

        public Criteria andJobIdLike(String value) {
            addCriterion("job_Id like", value, "jobId");
            return (Criteria) this;
        }

        public Criteria andJobIdNotLike(String value) {
            addCriterion("job_Id not like", value, "jobId");
            return (Criteria) this;
        }

        public Criteria andJobIdIn(List<String> values) {
            addCriterion("job_Id in", values, "jobId");
            return (Criteria) this;
        }

        public Criteria andJobIdNotIn(List<String> values) {
            addCriterion("job_Id not in", values, "jobId");
            return (Criteria) this;
        }

        public Criteria andJobIdBetween(String value1, String value2) {
            addCriterion("job_Id between", value1, value2, "jobId");
            return (Criteria) this;
        }

        public Criteria andJobIdNotBetween(String value1, String value2) {
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

        public Criteria andJobSalaryIsNull() {
            addCriterion("job_Salary is null");
            return (Criteria) this;
        }

        public Criteria andJobSalaryIsNotNull() {
            addCriterion("job_Salary is not null");
            return (Criteria) this;
        }

        public Criteria andJobSalaryEqualTo(String value) {
            addCriterion("job_Salary =", value, "jobSalary");
            return (Criteria) this;
        }

        public Criteria andJobSalaryNotEqualTo(String value) {
            addCriterion("job_Salary <>", value, "jobSalary");
            return (Criteria) this;
        }

        public Criteria andJobSalaryGreaterThan(String value) {
            addCriterion("job_Salary >", value, "jobSalary");
            return (Criteria) this;
        }

        public Criteria andJobSalaryGreaterThanOrEqualTo(String value) {
            addCriterion("job_Salary >=", value, "jobSalary");
            return (Criteria) this;
        }

        public Criteria andJobSalaryLessThan(String value) {
            addCriterion("job_Salary <", value, "jobSalary");
            return (Criteria) this;
        }

        public Criteria andJobSalaryLessThanOrEqualTo(String value) {
            addCriterion("job_Salary <=", value, "jobSalary");
            return (Criteria) this;
        }

        public Criteria andJobSalaryLike(String value) {
            addCriterion("job_Salary like", value, "jobSalary");
            return (Criteria) this;
        }

        public Criteria andJobSalaryNotLike(String value) {
            addCriterion("job_Salary not like", value, "jobSalary");
            return (Criteria) this;
        }

        public Criteria andJobSalaryIn(List<String> values) {
            addCriterion("job_Salary in", values, "jobSalary");
            return (Criteria) this;
        }

        public Criteria andJobSalaryNotIn(List<String> values) {
            addCriterion("job_Salary not in", values, "jobSalary");
            return (Criteria) this;
        }

        public Criteria andJobSalaryBetween(String value1, String value2) {
            addCriterion("job_Salary between", value1, value2, "jobSalary");
            return (Criteria) this;
        }

        public Criteria andJobSalaryNotBetween(String value1, String value2) {
            addCriterion("job_Salary not between", value1, value2, "jobSalary");
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

        public Criteria andCompanyCreateTimeIsNull() {
            addCriterion("company_Create_Time is null");
            return (Criteria) this;
        }

        public Criteria andCompanyCreateTimeIsNotNull() {
            addCriterion("company_Create_Time is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyCreateTimeEqualTo(String value) {
            addCriterion("company_Create_Time =", value, "companyCreateTime");
            return (Criteria) this;
        }

        public Criteria andCompanyCreateTimeNotEqualTo(String value) {
            addCriterion("company_Create_Time <>", value, "companyCreateTime");
            return (Criteria) this;
        }

        public Criteria andCompanyCreateTimeGreaterThan(String value) {
            addCriterion("company_Create_Time >", value, "companyCreateTime");
            return (Criteria) this;
        }

        public Criteria andCompanyCreateTimeGreaterThanOrEqualTo(String value) {
            addCriterion("company_Create_Time >=", value, "companyCreateTime");
            return (Criteria) this;
        }

        public Criteria andCompanyCreateTimeLessThan(String value) {
            addCriterion("company_Create_Time <", value, "companyCreateTime");
            return (Criteria) this;
        }

        public Criteria andCompanyCreateTimeLessThanOrEqualTo(String value) {
            addCriterion("company_Create_Time <=", value, "companyCreateTime");
            return (Criteria) this;
        }

        public Criteria andCompanyCreateTimeLike(String value) {
            addCriterion("company_Create_Time like", value, "companyCreateTime");
            return (Criteria) this;
        }

        public Criteria andCompanyCreateTimeNotLike(String value) {
            addCriterion("company_Create_Time not like", value, "companyCreateTime");
            return (Criteria) this;
        }

        public Criteria andCompanyCreateTimeIn(List<String> values) {
            addCriterion("company_Create_Time in", values, "companyCreateTime");
            return (Criteria) this;
        }

        public Criteria andCompanyCreateTimeNotIn(List<String> values) {
            addCriterion("company_Create_Time not in", values, "companyCreateTime");
            return (Criteria) this;
        }

        public Criteria andCompanyCreateTimeBetween(String value1, String value2) {
            addCriterion("company_Create_Time between", value1, value2, "companyCreateTime");
            return (Criteria) this;
        }

        public Criteria andCompanyCreateTimeNotBetween(String value1, String value2) {
            addCriterion("company_Create_Time not between", value1, value2, "companyCreateTime");
            return (Criteria) this;
        }

        public Criteria andUserRealNameIsNull() {
            addCriterion("user_Real_Name is null");
            return (Criteria) this;
        }

        public Criteria andUserRealNameIsNotNull() {
            addCriterion("user_Real_Name is not null");
            return (Criteria) this;
        }

        public Criteria andUserRealNameEqualTo(String value) {
            addCriterion("user_Real_Name =", value, "userRealName");
            return (Criteria) this;
        }

        public Criteria andUserRealNameNotEqualTo(String value) {
            addCriterion("user_Real_Name <>", value, "userRealName");
            return (Criteria) this;
        }

        public Criteria andUserRealNameGreaterThan(String value) {
            addCriterion("user_Real_Name >", value, "userRealName");
            return (Criteria) this;
        }

        public Criteria andUserRealNameGreaterThanOrEqualTo(String value) {
            addCriterion("user_Real_Name >=", value, "userRealName");
            return (Criteria) this;
        }

        public Criteria andUserRealNameLessThan(String value) {
            addCriterion("user_Real_Name <", value, "userRealName");
            return (Criteria) this;
        }

        public Criteria andUserRealNameLessThanOrEqualTo(String value) {
            addCriterion("user_Real_Name <=", value, "userRealName");
            return (Criteria) this;
        }

        public Criteria andUserRealNameLike(String value) {
            addCriterion("user_Real_Name like", value, "userRealName");
            return (Criteria) this;
        }

        public Criteria andUserRealNameNotLike(String value) {
            addCriterion("user_Real_Name not like", value, "userRealName");
            return (Criteria) this;
        }

        public Criteria andUserRealNameIn(List<String> values) {
            addCriterion("user_Real_Name in", values, "userRealName");
            return (Criteria) this;
        }

        public Criteria andUserRealNameNotIn(List<String> values) {
            addCriterion("user_Real_Name not in", values, "userRealName");
            return (Criteria) this;
        }

        public Criteria andUserRealNameBetween(String value1, String value2) {
            addCriterion("user_Real_Name between", value1, value2, "userRealName");
            return (Criteria) this;
        }

        public Criteria andUserRealNameNotBetween(String value1, String value2) {
            addCriterion("user_Real_Name not between", value1, value2, "userRealName");
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