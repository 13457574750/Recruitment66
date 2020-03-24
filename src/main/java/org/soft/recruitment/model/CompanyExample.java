package org.soft.recruitment.model;

import java.util.ArrayList;
import java.util.List;

public class CompanyExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CompanyExample() {
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

        public Criteria andCompanyLoginNameIsNull() {
            addCriterion("company_Login_Name is null");
            return (Criteria) this;
        }

        public Criteria andCompanyLoginNameIsNotNull() {
            addCriterion("company_Login_Name is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyLoginNameEqualTo(String value) {
            addCriterion("company_Login_Name =", value, "companyLoginName");
            return (Criteria) this;
        }

        public Criteria andCompanyLoginNameNotEqualTo(String value) {
            addCriterion("company_Login_Name <>", value, "companyLoginName");
            return (Criteria) this;
        }

        public Criteria andCompanyLoginNameGreaterThan(String value) {
            addCriterion("company_Login_Name >", value, "companyLoginName");
            return (Criteria) this;
        }

        public Criteria andCompanyLoginNameGreaterThanOrEqualTo(String value) {
            addCriterion("company_Login_Name >=", value, "companyLoginName");
            return (Criteria) this;
        }

        public Criteria andCompanyLoginNameLessThan(String value) {
            addCriterion("company_Login_Name <", value, "companyLoginName");
            return (Criteria) this;
        }

        public Criteria andCompanyLoginNameLessThanOrEqualTo(String value) {
            addCriterion("company_Login_Name <=", value, "companyLoginName");
            return (Criteria) this;
        }

        public Criteria andCompanyLoginNameLike(String value) {
            addCriterion("company_Login_Name like", value, "companyLoginName");
            return (Criteria) this;
        }

        public Criteria andCompanyLoginNameNotLike(String value) {
            addCriterion("company_Login_Name not like", value, "companyLoginName");
            return (Criteria) this;
        }

        public Criteria andCompanyLoginNameIn(List<String> values) {
            addCriterion("company_Login_Name in", values, "companyLoginName");
            return (Criteria) this;
        }

        public Criteria andCompanyLoginNameNotIn(List<String> values) {
            addCriterion("company_Login_Name not in", values, "companyLoginName");
            return (Criteria) this;
        }

        public Criteria andCompanyLoginNameBetween(String value1, String value2) {
            addCriterion("company_Login_Name between", value1, value2, "companyLoginName");
            return (Criteria) this;
        }

        public Criteria andCompanyLoginNameNotBetween(String value1, String value2) {
            addCriterion("company_Login_Name not between", value1, value2, "companyLoginName");
            return (Criteria) this;
        }

        public Criteria andCompanyLoginPasswordIsNull() {
            addCriterion("company_Login_Password is null");
            return (Criteria) this;
        }

        public Criteria andCompanyLoginPasswordIsNotNull() {
            addCriterion("company_Login_Password is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyLoginPasswordEqualTo(String value) {
            addCriterion("company_Login_Password =", value, "companyLoginPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyLoginPasswordNotEqualTo(String value) {
            addCriterion("company_Login_Password <>", value, "companyLoginPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyLoginPasswordGreaterThan(String value) {
            addCriterion("company_Login_Password >", value, "companyLoginPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyLoginPasswordGreaterThanOrEqualTo(String value) {
            addCriterion("company_Login_Password >=", value, "companyLoginPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyLoginPasswordLessThan(String value) {
            addCriterion("company_Login_Password <", value, "companyLoginPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyLoginPasswordLessThanOrEqualTo(String value) {
            addCriterion("company_Login_Password <=", value, "companyLoginPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyLoginPasswordLike(String value) {
            addCriterion("company_Login_Password like", value, "companyLoginPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyLoginPasswordNotLike(String value) {
            addCriterion("company_Login_Password not like", value, "companyLoginPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyLoginPasswordIn(List<String> values) {
            addCriterion("company_Login_Password in", values, "companyLoginPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyLoginPasswordNotIn(List<String> values) {
            addCriterion("company_Login_Password not in", values, "companyLoginPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyLoginPasswordBetween(String value1, String value2) {
            addCriterion("company_Login_Password between", value1, value2, "companyLoginPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyLoginPasswordNotBetween(String value1, String value2) {
            addCriterion("company_Login_Password not between", value1, value2, "companyLoginPassword");
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

        public Criteria andCompanyTypeIsNull() {
            addCriterion("company_Type is null");
            return (Criteria) this;
        }

        public Criteria andCompanyTypeIsNotNull() {
            addCriterion("company_Type is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyTypeEqualTo(String value) {
            addCriterion("company_Type =", value, "companyType");
            return (Criteria) this;
        }

        public Criteria andCompanyTypeNotEqualTo(String value) {
            addCriterion("company_Type <>", value, "companyType");
            return (Criteria) this;
        }

        public Criteria andCompanyTypeGreaterThan(String value) {
            addCriterion("company_Type >", value, "companyType");
            return (Criteria) this;
        }

        public Criteria andCompanyTypeGreaterThanOrEqualTo(String value) {
            addCriterion("company_Type >=", value, "companyType");
            return (Criteria) this;
        }

        public Criteria andCompanyTypeLessThan(String value) {
            addCriterion("company_Type <", value, "companyType");
            return (Criteria) this;
        }

        public Criteria andCompanyTypeLessThanOrEqualTo(String value) {
            addCriterion("company_Type <=", value, "companyType");
            return (Criteria) this;
        }

        public Criteria andCompanyTypeLike(String value) {
            addCriterion("company_Type like", value, "companyType");
            return (Criteria) this;
        }

        public Criteria andCompanyTypeNotLike(String value) {
            addCriterion("company_Type not like", value, "companyType");
            return (Criteria) this;
        }

        public Criteria andCompanyTypeIn(List<String> values) {
            addCriterion("company_Type in", values, "companyType");
            return (Criteria) this;
        }

        public Criteria andCompanyTypeNotIn(List<String> values) {
            addCriterion("company_Type not in", values, "companyType");
            return (Criteria) this;
        }

        public Criteria andCompanyTypeBetween(String value1, String value2) {
            addCriterion("company_Type between", value1, value2, "companyType");
            return (Criteria) this;
        }

        public Criteria andCompanyTypeNotBetween(String value1, String value2) {
            addCriterion("company_Type not between", value1, value2, "companyType");
            return (Criteria) this;
        }

        public Criteria andCompanyIndustryIsNull() {
            addCriterion("company_Industry is null");
            return (Criteria) this;
        }

        public Criteria andCompanyIndustryIsNotNull() {
            addCriterion("company_Industry is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyIndustryEqualTo(String value) {
            addCriterion("company_Industry =", value, "companyIndustry");
            return (Criteria) this;
        }

        public Criteria andCompanyIndustryNotEqualTo(String value) {
            addCriterion("company_Industry <>", value, "companyIndustry");
            return (Criteria) this;
        }

        public Criteria andCompanyIndustryGreaterThan(String value) {
            addCriterion("company_Industry >", value, "companyIndustry");
            return (Criteria) this;
        }

        public Criteria andCompanyIndustryGreaterThanOrEqualTo(String value) {
            addCriterion("company_Industry >=", value, "companyIndustry");
            return (Criteria) this;
        }

        public Criteria andCompanyIndustryLessThan(String value) {
            addCriterion("company_Industry <", value, "companyIndustry");
            return (Criteria) this;
        }

        public Criteria andCompanyIndustryLessThanOrEqualTo(String value) {
            addCriterion("company_Industry <=", value, "companyIndustry");
            return (Criteria) this;
        }

        public Criteria andCompanyIndustryLike(String value) {
            addCriterion("company_Industry like", value, "companyIndustry");
            return (Criteria) this;
        }

        public Criteria andCompanyIndustryNotLike(String value) {
            addCriterion("company_Industry not like", value, "companyIndustry");
            return (Criteria) this;
        }

        public Criteria andCompanyIndustryIn(List<String> values) {
            addCriterion("company_Industry in", values, "companyIndustry");
            return (Criteria) this;
        }

        public Criteria andCompanyIndustryNotIn(List<String> values) {
            addCriterion("company_Industry not in", values, "companyIndustry");
            return (Criteria) this;
        }

        public Criteria andCompanyIndustryBetween(String value1, String value2) {
            addCriterion("company_Industry between", value1, value2, "companyIndustry");
            return (Criteria) this;
        }

        public Criteria andCompanyIndustryNotBetween(String value1, String value2) {
            addCriterion("company_Industry not between", value1, value2, "companyIndustry");
            return (Criteria) this;
        }

        public Criteria andCompanyProfileIsNull() {
            addCriterion("company_Profile is null");
            return (Criteria) this;
        }

        public Criteria andCompanyProfileIsNotNull() {
            addCriterion("company_Profile is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyProfileEqualTo(String value) {
            addCriterion("company_Profile =", value, "companyProfile");
            return (Criteria) this;
        }

        public Criteria andCompanyProfileNotEqualTo(String value) {
            addCriterion("company_Profile <>", value, "companyProfile");
            return (Criteria) this;
        }

        public Criteria andCompanyProfileGreaterThan(String value) {
            addCriterion("company_Profile >", value, "companyProfile");
            return (Criteria) this;
        }

        public Criteria andCompanyProfileGreaterThanOrEqualTo(String value) {
            addCriterion("company_Profile >=", value, "companyProfile");
            return (Criteria) this;
        }

        public Criteria andCompanyProfileLessThan(String value) {
            addCriterion("company_Profile <", value, "companyProfile");
            return (Criteria) this;
        }

        public Criteria andCompanyProfileLessThanOrEqualTo(String value) {
            addCriterion("company_Profile <=", value, "companyProfile");
            return (Criteria) this;
        }

        public Criteria andCompanyProfileLike(String value) {
            addCriterion("company_Profile like", value, "companyProfile");
            return (Criteria) this;
        }

        public Criteria andCompanyProfileNotLike(String value) {
            addCriterion("company_Profile not like", value, "companyProfile");
            return (Criteria) this;
        }

        public Criteria andCompanyProfileIn(List<String> values) {
            addCriterion("company_Profile in", values, "companyProfile");
            return (Criteria) this;
        }

        public Criteria andCompanyProfileNotIn(List<String> values) {
            addCriterion("company_Profile not in", values, "companyProfile");
            return (Criteria) this;
        }

        public Criteria andCompanyProfileBetween(String value1, String value2) {
            addCriterion("company_Profile between", value1, value2, "companyProfile");
            return (Criteria) this;
        }

        public Criteria andCompanyProfileNotBetween(String value1, String value2) {
            addCriterion("company_Profile not between", value1, value2, "companyProfile");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressIsNull() {
            addCriterion("company_Address is null");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressIsNotNull() {
            addCriterion("company_Address is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressEqualTo(String value) {
            addCriterion("company_Address =", value, "companyAddress");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressNotEqualTo(String value) {
            addCriterion("company_Address <>", value, "companyAddress");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressGreaterThan(String value) {
            addCriterion("company_Address >", value, "companyAddress");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressGreaterThanOrEqualTo(String value) {
            addCriterion("company_Address >=", value, "companyAddress");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressLessThan(String value) {
            addCriterion("company_Address <", value, "companyAddress");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressLessThanOrEqualTo(String value) {
            addCriterion("company_Address <=", value, "companyAddress");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressLike(String value) {
            addCriterion("company_Address like", value, "companyAddress");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressNotLike(String value) {
            addCriterion("company_Address not like", value, "companyAddress");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressIn(List<String> values) {
            addCriterion("company_Address in", values, "companyAddress");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressNotIn(List<String> values) {
            addCriterion("company_Address not in", values, "companyAddress");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressBetween(String value1, String value2) {
            addCriterion("company_Address between", value1, value2, "companyAddress");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressNotBetween(String value1, String value2) {
            addCriterion("company_Address not between", value1, value2, "companyAddress");
            return (Criteria) this;
        }

        public Criteria andCompanyWebIsNull() {
            addCriterion("company_Web is null");
            return (Criteria) this;
        }

        public Criteria andCompanyWebIsNotNull() {
            addCriterion("company_Web is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyWebEqualTo(String value) {
            addCriterion("company_Web =", value, "companyWeb");
            return (Criteria) this;
        }

        public Criteria andCompanyWebNotEqualTo(String value) {
            addCriterion("company_Web <>", value, "companyWeb");
            return (Criteria) this;
        }

        public Criteria andCompanyWebGreaterThan(String value) {
            addCriterion("company_Web >", value, "companyWeb");
            return (Criteria) this;
        }

        public Criteria andCompanyWebGreaterThanOrEqualTo(String value) {
            addCriterion("company_Web >=", value, "companyWeb");
            return (Criteria) this;
        }

        public Criteria andCompanyWebLessThan(String value) {
            addCriterion("company_Web <", value, "companyWeb");
            return (Criteria) this;
        }

        public Criteria andCompanyWebLessThanOrEqualTo(String value) {
            addCriterion("company_Web <=", value, "companyWeb");
            return (Criteria) this;
        }

        public Criteria andCompanyWebLike(String value) {
            addCriterion("company_Web like", value, "companyWeb");
            return (Criteria) this;
        }

        public Criteria andCompanyWebNotLike(String value) {
            addCriterion("company_Web not like", value, "companyWeb");
            return (Criteria) this;
        }

        public Criteria andCompanyWebIn(List<String> values) {
            addCriterion("company_Web in", values, "companyWeb");
            return (Criteria) this;
        }

        public Criteria andCompanyWebNotIn(List<String> values) {
            addCriterion("company_Web not in", values, "companyWeb");
            return (Criteria) this;
        }

        public Criteria andCompanyWebBetween(String value1, String value2) {
            addCriterion("company_Web between", value1, value2, "companyWeb");
            return (Criteria) this;
        }

        public Criteria andCompanyWebNotBetween(String value1, String value2) {
            addCriterion("company_Web not between", value1, value2, "companyWeb");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneIsNull() {
            addCriterion("company_Phone is null");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneIsNotNull() {
            addCriterion("company_Phone is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneEqualTo(String value) {
            addCriterion("company_Phone =", value, "companyPhone");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneNotEqualTo(String value) {
            addCriterion("company_Phone <>", value, "companyPhone");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneGreaterThan(String value) {
            addCriterion("company_Phone >", value, "companyPhone");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("company_Phone >=", value, "companyPhone");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneLessThan(String value) {
            addCriterion("company_Phone <", value, "companyPhone");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneLessThanOrEqualTo(String value) {
            addCriterion("company_Phone <=", value, "companyPhone");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneLike(String value) {
            addCriterion("company_Phone like", value, "companyPhone");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneNotLike(String value) {
            addCriterion("company_Phone not like", value, "companyPhone");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneIn(List<String> values) {
            addCriterion("company_Phone in", values, "companyPhone");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneNotIn(List<String> values) {
            addCriterion("company_Phone not in", values, "companyPhone");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneBetween(String value1, String value2) {
            addCriterion("company_Phone between", value1, value2, "companyPhone");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneNotBetween(String value1, String value2) {
            addCriterion("company_Phone not between", value1, value2, "companyPhone");
            return (Criteria) this;
        }

        public Criteria andCompanyEmailIsNull() {
            addCriterion("company_Email is null");
            return (Criteria) this;
        }

        public Criteria andCompanyEmailIsNotNull() {
            addCriterion("company_Email is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyEmailEqualTo(String value) {
            addCriterion("company_Email =", value, "companyEmail");
            return (Criteria) this;
        }

        public Criteria andCompanyEmailNotEqualTo(String value) {
            addCriterion("company_Email <>", value, "companyEmail");
            return (Criteria) this;
        }

        public Criteria andCompanyEmailGreaterThan(String value) {
            addCriterion("company_Email >", value, "companyEmail");
            return (Criteria) this;
        }

        public Criteria andCompanyEmailGreaterThanOrEqualTo(String value) {
            addCriterion("company_Email >=", value, "companyEmail");
            return (Criteria) this;
        }

        public Criteria andCompanyEmailLessThan(String value) {
            addCriterion("company_Email <", value, "companyEmail");
            return (Criteria) this;
        }

        public Criteria andCompanyEmailLessThanOrEqualTo(String value) {
            addCriterion("company_Email <=", value, "companyEmail");
            return (Criteria) this;
        }

        public Criteria andCompanyEmailLike(String value) {
            addCriterion("company_Email like", value, "companyEmail");
            return (Criteria) this;
        }

        public Criteria andCompanyEmailNotLike(String value) {
            addCriterion("company_Email not like", value, "companyEmail");
            return (Criteria) this;
        }

        public Criteria andCompanyEmailIn(List<String> values) {
            addCriterion("company_Email in", values, "companyEmail");
            return (Criteria) this;
        }

        public Criteria andCompanyEmailNotIn(List<String> values) {
            addCriterion("company_Email not in", values, "companyEmail");
            return (Criteria) this;
        }

        public Criteria andCompanyEmailBetween(String value1, String value2) {
            addCriterion("company_Email between", value1, value2, "companyEmail");
            return (Criteria) this;
        }

        public Criteria andCompanyEmailNotBetween(String value1, String value2) {
            addCriterion("company_Email not between", value1, value2, "companyEmail");
            return (Criteria) this;
        }

        public Criteria andCompanyNumberIsNull() {
            addCriterion("company_Number is null");
            return (Criteria) this;
        }

        public Criteria andCompanyNumberIsNotNull() {
            addCriterion("company_Number is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyNumberEqualTo(Integer value) {
            addCriterion("company_Number =", value, "companyNumber");
            return (Criteria) this;
        }

        public Criteria andCompanyNumberNotEqualTo(Integer value) {
            addCriterion("company_Number <>", value, "companyNumber");
            return (Criteria) this;
        }

        public Criteria andCompanyNumberGreaterThan(Integer value) {
            addCriterion("company_Number >", value, "companyNumber");
            return (Criteria) this;
        }

        public Criteria andCompanyNumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("company_Number >=", value, "companyNumber");
            return (Criteria) this;
        }

        public Criteria andCompanyNumberLessThan(Integer value) {
            addCriterion("company_Number <", value, "companyNumber");
            return (Criteria) this;
        }

        public Criteria andCompanyNumberLessThanOrEqualTo(Integer value) {
            addCriterion("company_Number <=", value, "companyNumber");
            return (Criteria) this;
        }

        public Criteria andCompanyNumberIn(List<Integer> values) {
            addCriterion("company_Number in", values, "companyNumber");
            return (Criteria) this;
        }

        public Criteria andCompanyNumberNotIn(List<Integer> values) {
            addCriterion("company_Number not in", values, "companyNumber");
            return (Criteria) this;
        }

        public Criteria andCompanyNumberBetween(Integer value1, Integer value2) {
            addCriterion("company_Number between", value1, value2, "companyNumber");
            return (Criteria) this;
        }

        public Criteria andCompanyNumberNotBetween(Integer value1, Integer value2) {
            addCriterion("company_Number not between", value1, value2, "companyNumber");
            return (Criteria) this;
        }

        public Criteria andCompanyOwnerIsNull() {
            addCriterion("company_Owner is null");
            return (Criteria) this;
        }

        public Criteria andCompanyOwnerIsNotNull() {
            addCriterion("company_Owner is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyOwnerEqualTo(String value) {
            addCriterion("company_Owner =", value, "companyOwner");
            return (Criteria) this;
        }

        public Criteria andCompanyOwnerNotEqualTo(String value) {
            addCriterion("company_Owner <>", value, "companyOwner");
            return (Criteria) this;
        }

        public Criteria andCompanyOwnerGreaterThan(String value) {
            addCriterion("company_Owner >", value, "companyOwner");
            return (Criteria) this;
        }

        public Criteria andCompanyOwnerGreaterThanOrEqualTo(String value) {
            addCriterion("company_Owner >=", value, "companyOwner");
            return (Criteria) this;
        }

        public Criteria andCompanyOwnerLessThan(String value) {
            addCriterion("company_Owner <", value, "companyOwner");
            return (Criteria) this;
        }

        public Criteria andCompanyOwnerLessThanOrEqualTo(String value) {
            addCriterion("company_Owner <=", value, "companyOwner");
            return (Criteria) this;
        }

        public Criteria andCompanyOwnerLike(String value) {
            addCriterion("company_Owner like", value, "companyOwner");
            return (Criteria) this;
        }

        public Criteria andCompanyOwnerNotLike(String value) {
            addCriterion("company_Owner not like", value, "companyOwner");
            return (Criteria) this;
        }

        public Criteria andCompanyOwnerIn(List<String> values) {
            addCriterion("company_Owner in", values, "companyOwner");
            return (Criteria) this;
        }

        public Criteria andCompanyOwnerNotIn(List<String> values) {
            addCriterion("company_Owner not in", values, "companyOwner");
            return (Criteria) this;
        }

        public Criteria andCompanyOwnerBetween(String value1, String value2) {
            addCriterion("company_Owner between", value1, value2, "companyOwner");
            return (Criteria) this;
        }

        public Criteria andCompanyOwnerNotBetween(String value1, String value2) {
            addCriterion("company_Owner not between", value1, value2, "companyOwner");
            return (Criteria) this;
        }

        public Criteria andCompanyRegisterCapitalIsNull() {
            addCriterion("company_Register_Capital is null");
            return (Criteria) this;
        }

        public Criteria andCompanyRegisterCapitalIsNotNull() {
            addCriterion("company_Register_Capital is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyRegisterCapitalEqualTo(String value) {
            addCriterion("company_Register_Capital =", value, "companyRegisterCapital");
            return (Criteria) this;
        }

        public Criteria andCompanyRegisterCapitalNotEqualTo(String value) {
            addCriterion("company_Register_Capital <>", value, "companyRegisterCapital");
            return (Criteria) this;
        }

        public Criteria andCompanyRegisterCapitalGreaterThan(String value) {
            addCriterion("company_Register_Capital >", value, "companyRegisterCapital");
            return (Criteria) this;
        }

        public Criteria andCompanyRegisterCapitalGreaterThanOrEqualTo(String value) {
            addCriterion("company_Register_Capital >=", value, "companyRegisterCapital");
            return (Criteria) this;
        }

        public Criteria andCompanyRegisterCapitalLessThan(String value) {
            addCriterion("company_Register_Capital <", value, "companyRegisterCapital");
            return (Criteria) this;
        }

        public Criteria andCompanyRegisterCapitalLessThanOrEqualTo(String value) {
            addCriterion("company_Register_Capital <=", value, "companyRegisterCapital");
            return (Criteria) this;
        }

        public Criteria andCompanyRegisterCapitalLike(String value) {
            addCriterion("company_Register_Capital like", value, "companyRegisterCapital");
            return (Criteria) this;
        }

        public Criteria andCompanyRegisterCapitalNotLike(String value) {
            addCriterion("company_Register_Capital not like", value, "companyRegisterCapital");
            return (Criteria) this;
        }

        public Criteria andCompanyRegisterCapitalIn(List<String> values) {
            addCriterion("company_Register_Capital in", values, "companyRegisterCapital");
            return (Criteria) this;
        }

        public Criteria andCompanyRegisterCapitalNotIn(List<String> values) {
            addCriterion("company_Register_Capital not in", values, "companyRegisterCapital");
            return (Criteria) this;
        }

        public Criteria andCompanyRegisterCapitalBetween(String value1, String value2) {
            addCriterion("company_Register_Capital between", value1, value2, "companyRegisterCapital");
            return (Criteria) this;
        }

        public Criteria andCompanyRegisterCapitalNotBetween(String value1, String value2) {
            addCriterion("company_Register_Capital not between", value1, value2, "companyRegisterCapital");
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