package org.soft.recruitment.model;

import java.util.ArrayList;
import java.util.List;

public class UserExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public UserExample() {
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

        public Criteria andUserIdIsNull() {
            addCriterion("user_Id is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("user_Id is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(Integer value) {
            addCriterion("user_Id =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(Integer value) {
            addCriterion("user_Id <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(Integer value) {
            addCriterion("user_Id >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("user_Id >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(Integer value) {
            addCriterion("user_Id <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("user_Id <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<Integer> values) {
            addCriterion("user_Id in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<Integer> values) {
            addCriterion("user_Id not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(Integer value1, Integer value2) {
            addCriterion("user_Id between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("user_Id not between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserLoginNameIsNull() {
            addCriterion("user_Login_Name is null");
            return (Criteria) this;
        }

        public Criteria andUserLoginNameIsNotNull() {
            addCriterion("user_Login_Name is not null");
            return (Criteria) this;
        }

        public Criteria andUserLoginNameEqualTo(String value) {
            addCriterion("user_Login_Name =", value, "userLoginName");
            return (Criteria) this;
        }

        public Criteria andUserLoginNameNotEqualTo(String value) {
            addCriterion("user_Login_Name <>", value, "userLoginName");
            return (Criteria) this;
        }

        public Criteria andUserLoginNameGreaterThan(String value) {
            addCriterion("user_Login_Name >", value, "userLoginName");
            return (Criteria) this;
        }

        public Criteria andUserLoginNameGreaterThanOrEqualTo(String value) {
            addCriterion("user_Login_Name >=", value, "userLoginName");
            return (Criteria) this;
        }

        public Criteria andUserLoginNameLessThan(String value) {
            addCriterion("user_Login_Name <", value, "userLoginName");
            return (Criteria) this;
        }

        public Criteria andUserLoginNameLessThanOrEqualTo(String value) {
            addCriterion("user_Login_Name <=", value, "userLoginName");
            return (Criteria) this;
        }

        public Criteria andUserLoginNameLike(String value) {
            addCriterion("user_Login_Name like", value, "userLoginName");
            return (Criteria) this;
        }

        public Criteria andUserLoginNameNotLike(String value) {
            addCriterion("user_Login_Name not like", value, "userLoginName");
            return (Criteria) this;
        }

        public Criteria andUserLoginNameIn(List<String> values) {
            addCriterion("user_Login_Name in", values, "userLoginName");
            return (Criteria) this;
        }

        public Criteria andUserLoginNameNotIn(List<String> values) {
            addCriterion("user_Login_Name not in", values, "userLoginName");
            return (Criteria) this;
        }

        public Criteria andUserLoginNameBetween(String value1, String value2) {
            addCriterion("user_Login_Name between", value1, value2, "userLoginName");
            return (Criteria) this;
        }

        public Criteria andUserLoginNameNotBetween(String value1, String value2) {
            addCriterion("user_Login_Name not between", value1, value2, "userLoginName");
            return (Criteria) this;
        }

        public Criteria andUserLoginPasswordIsNull() {
            addCriterion("user_Login_Password is null");
            return (Criteria) this;
        }

        public Criteria andUserLoginPasswordIsNotNull() {
            addCriterion("user_Login_Password is not null");
            return (Criteria) this;
        }

        public Criteria andUserLoginPasswordEqualTo(String value) {
            addCriterion("user_Login_Password =", value, "userLoginPassword");
            return (Criteria) this;
        }

        public Criteria andUserLoginPasswordNotEqualTo(String value) {
            addCriterion("user_Login_Password <>", value, "userLoginPassword");
            return (Criteria) this;
        }

        public Criteria andUserLoginPasswordGreaterThan(String value) {
            addCriterion("user_Login_Password >", value, "userLoginPassword");
            return (Criteria) this;
        }

        public Criteria andUserLoginPasswordGreaterThanOrEqualTo(String value) {
            addCriterion("user_Login_Password >=", value, "userLoginPassword");
            return (Criteria) this;
        }

        public Criteria andUserLoginPasswordLessThan(String value) {
            addCriterion("user_Login_Password <", value, "userLoginPassword");
            return (Criteria) this;
        }

        public Criteria andUserLoginPasswordLessThanOrEqualTo(String value) {
            addCriterion("user_Login_Password <=", value, "userLoginPassword");
            return (Criteria) this;
        }

        public Criteria andUserLoginPasswordLike(String value) {
            addCriterion("user_Login_Password like", value, "userLoginPassword");
            return (Criteria) this;
        }

        public Criteria andUserLoginPasswordNotLike(String value) {
            addCriterion("user_Login_Password not like", value, "userLoginPassword");
            return (Criteria) this;
        }

        public Criteria andUserLoginPasswordIn(List<String> values) {
            addCriterion("user_Login_Password in", values, "userLoginPassword");
            return (Criteria) this;
        }

        public Criteria andUserLoginPasswordNotIn(List<String> values) {
            addCriterion("user_Login_Password not in", values, "userLoginPassword");
            return (Criteria) this;
        }

        public Criteria andUserLoginPasswordBetween(String value1, String value2) {
            addCriterion("user_Login_Password between", value1, value2, "userLoginPassword");
            return (Criteria) this;
        }

        public Criteria andUserLoginPasswordNotBetween(String value1, String value2) {
            addCriterion("user_Login_Password not between", value1, value2, "userLoginPassword");
            return (Criteria) this;
        }

        public Criteria andUserPhoneIsNull() {
            addCriterion("user_Phone is null");
            return (Criteria) this;
        }

        public Criteria andUserPhoneIsNotNull() {
            addCriterion("user_Phone is not null");
            return (Criteria) this;
        }

        public Criteria andUserPhoneEqualTo(String value) {
            addCriterion("user_Phone =", value, "userPhone");
            return (Criteria) this;
        }

        public Criteria andUserPhoneNotEqualTo(String value) {
            addCriterion("user_Phone <>", value, "userPhone");
            return (Criteria) this;
        }

        public Criteria andUserPhoneGreaterThan(String value) {
            addCriterion("user_Phone >", value, "userPhone");
            return (Criteria) this;
        }

        public Criteria andUserPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("user_Phone >=", value, "userPhone");
            return (Criteria) this;
        }

        public Criteria andUserPhoneLessThan(String value) {
            addCriterion("user_Phone <", value, "userPhone");
            return (Criteria) this;
        }

        public Criteria andUserPhoneLessThanOrEqualTo(String value) {
            addCriterion("user_Phone <=", value, "userPhone");
            return (Criteria) this;
        }

        public Criteria andUserPhoneLike(String value) {
            addCriterion("user_Phone like", value, "userPhone");
            return (Criteria) this;
        }

        public Criteria andUserPhoneNotLike(String value) {
            addCriterion("user_Phone not like", value, "userPhone");
            return (Criteria) this;
        }

        public Criteria andUserPhoneIn(List<String> values) {
            addCriterion("user_Phone in", values, "userPhone");
            return (Criteria) this;
        }

        public Criteria andUserPhoneNotIn(List<String> values) {
            addCriterion("user_Phone not in", values, "userPhone");
            return (Criteria) this;
        }

        public Criteria andUserPhoneBetween(String value1, String value2) {
            addCriterion("user_Phone between", value1, value2, "userPhone");
            return (Criteria) this;
        }

        public Criteria andUserPhoneNotBetween(String value1, String value2) {
            addCriterion("user_Phone not between", value1, value2, "userPhone");
            return (Criteria) this;
        }

        public Criteria andUserEmailIsNull() {
            addCriterion("user_Email is null");
            return (Criteria) this;
        }

        public Criteria andUserEmailIsNotNull() {
            addCriterion("user_Email is not null");
            return (Criteria) this;
        }

        public Criteria andUserEmailEqualTo(String value) {
            addCriterion("user_Email =", value, "userEmail");
            return (Criteria) this;
        }

        public Criteria andUserEmailNotEqualTo(String value) {
            addCriterion("user_Email <>", value, "userEmail");
            return (Criteria) this;
        }

        public Criteria andUserEmailGreaterThan(String value) {
            addCriterion("user_Email >", value, "userEmail");
            return (Criteria) this;
        }

        public Criteria andUserEmailGreaterThanOrEqualTo(String value) {
            addCriterion("user_Email >=", value, "userEmail");
            return (Criteria) this;
        }

        public Criteria andUserEmailLessThan(String value) {
            addCriterion("user_Email <", value, "userEmail");
            return (Criteria) this;
        }

        public Criteria andUserEmailLessThanOrEqualTo(String value) {
            addCriterion("user_Email <=", value, "userEmail");
            return (Criteria) this;
        }

        public Criteria andUserEmailLike(String value) {
            addCriterion("user_Email like", value, "userEmail");
            return (Criteria) this;
        }

        public Criteria andUserEmailNotLike(String value) {
            addCriterion("user_Email not like", value, "userEmail");
            return (Criteria) this;
        }

        public Criteria andUserEmailIn(List<String> values) {
            addCriterion("user_Email in", values, "userEmail");
            return (Criteria) this;
        }

        public Criteria andUserEmailNotIn(List<String> values) {
            addCriterion("user_Email not in", values, "userEmail");
            return (Criteria) this;
        }

        public Criteria andUserEmailBetween(String value1, String value2) {
            addCriterion("user_Email between", value1, value2, "userEmail");
            return (Criteria) this;
        }

        public Criteria andUserEmailNotBetween(String value1, String value2) {
            addCriterion("user_Email not between", value1, value2, "userEmail");
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

        public Criteria andUserSexIsNull() {
            addCriterion("user_Sex is null");
            return (Criteria) this;
        }

        public Criteria andUserSexIsNotNull() {
            addCriterion("user_Sex is not null");
            return (Criteria) this;
        }

        public Criteria andUserSexEqualTo(String value) {
            addCriterion("user_Sex =", value, "userSex");
            return (Criteria) this;
        }

        public Criteria andUserSexNotEqualTo(String value) {
            addCriterion("user_Sex <>", value, "userSex");
            return (Criteria) this;
        }

        public Criteria andUserSexGreaterThan(String value) {
            addCriterion("user_Sex >", value, "userSex");
            return (Criteria) this;
        }

        public Criteria andUserSexGreaterThanOrEqualTo(String value) {
            addCriterion("user_Sex >=", value, "userSex");
            return (Criteria) this;
        }

        public Criteria andUserSexLessThan(String value) {
            addCriterion("user_Sex <", value, "userSex");
            return (Criteria) this;
        }

        public Criteria andUserSexLessThanOrEqualTo(String value) {
            addCriterion("user_Sex <=", value, "userSex");
            return (Criteria) this;
        }

        public Criteria andUserSexLike(String value) {
            addCriterion("user_Sex like", value, "userSex");
            return (Criteria) this;
        }

        public Criteria andUserSexNotLike(String value) {
            addCriterion("user_Sex not like", value, "userSex");
            return (Criteria) this;
        }

        public Criteria andUserSexIn(List<String> values) {
            addCriterion("user_Sex in", values, "userSex");
            return (Criteria) this;
        }

        public Criteria andUserSexNotIn(List<String> values) {
            addCriterion("user_Sex not in", values, "userSex");
            return (Criteria) this;
        }

        public Criteria andUserSexBetween(String value1, String value2) {
            addCriterion("user_Sex between", value1, value2, "userSex");
            return (Criteria) this;
        }

        public Criteria andUserSexNotBetween(String value1, String value2) {
            addCriterion("user_Sex not between", value1, value2, "userSex");
            return (Criteria) this;
        }

        public Criteria andUserBirthdayIsNull() {
            addCriterion("user_Birthday is null");
            return (Criteria) this;
        }

        public Criteria andUserBirthdayIsNotNull() {
            addCriterion("user_Birthday is not null");
            return (Criteria) this;
        }

        public Criteria andUserBirthdayEqualTo(String value) {
            addCriterion("user_Birthday =", value, "userBirthday");
            return (Criteria) this;
        }

        public Criteria andUserBirthdayNotEqualTo(String value) {
            addCriterion("user_Birthday <>", value, "userBirthday");
            return (Criteria) this;
        }

        public Criteria andUserBirthdayGreaterThan(String value) {
            addCriterion("user_Birthday >", value, "userBirthday");
            return (Criteria) this;
        }

        public Criteria andUserBirthdayGreaterThanOrEqualTo(String value) {
            addCriterion("user_Birthday >=", value, "userBirthday");
            return (Criteria) this;
        }

        public Criteria andUserBirthdayLessThan(String value) {
            addCriterion("user_Birthday <", value, "userBirthday");
            return (Criteria) this;
        }

        public Criteria andUserBirthdayLessThanOrEqualTo(String value) {
            addCriterion("user_Birthday <=", value, "userBirthday");
            return (Criteria) this;
        }

        public Criteria andUserBirthdayLike(String value) {
            addCriterion("user_Birthday like", value, "userBirthday");
            return (Criteria) this;
        }

        public Criteria andUserBirthdayNotLike(String value) {
            addCriterion("user_Birthday not like", value, "userBirthday");
            return (Criteria) this;
        }

        public Criteria andUserBirthdayIn(List<String> values) {
            addCriterion("user_Birthday in", values, "userBirthday");
            return (Criteria) this;
        }

        public Criteria andUserBirthdayNotIn(List<String> values) {
            addCriterion("user_Birthday not in", values, "userBirthday");
            return (Criteria) this;
        }

        public Criteria andUserBirthdayBetween(String value1, String value2) {
            addCriterion("user_Birthday between", value1, value2, "userBirthday");
            return (Criteria) this;
        }

        public Criteria andUserBirthdayNotBetween(String value1, String value2) {
            addCriterion("user_Birthday not between", value1, value2, "userBirthday");
            return (Criteria) this;
        }

        public Criteria andUserEducationIsNull() {
            addCriterion("user_Education is null");
            return (Criteria) this;
        }

        public Criteria andUserEducationIsNotNull() {
            addCriterion("user_Education is not null");
            return (Criteria) this;
        }

        public Criteria andUserEducationEqualTo(String value) {
            addCriterion("user_Education =", value, "userEducation");
            return (Criteria) this;
        }

        public Criteria andUserEducationNotEqualTo(String value) {
            addCriterion("user_Education <>", value, "userEducation");
            return (Criteria) this;
        }

        public Criteria andUserEducationGreaterThan(String value) {
            addCriterion("user_Education >", value, "userEducation");
            return (Criteria) this;
        }

        public Criteria andUserEducationGreaterThanOrEqualTo(String value) {
            addCriterion("user_Education >=", value, "userEducation");
            return (Criteria) this;
        }

        public Criteria andUserEducationLessThan(String value) {
            addCriterion("user_Education <", value, "userEducation");
            return (Criteria) this;
        }

        public Criteria andUserEducationLessThanOrEqualTo(String value) {
            addCriterion("user_Education <=", value, "userEducation");
            return (Criteria) this;
        }

        public Criteria andUserEducationLike(String value) {
            addCriterion("user_Education like", value, "userEducation");
            return (Criteria) this;
        }

        public Criteria andUserEducationNotLike(String value) {
            addCriterion("user_Education not like", value, "userEducation");
            return (Criteria) this;
        }

        public Criteria andUserEducationIn(List<String> values) {
            addCriterion("user_Education in", values, "userEducation");
            return (Criteria) this;
        }

        public Criteria andUserEducationNotIn(List<String> values) {
            addCriterion("user_Education not in", values, "userEducation");
            return (Criteria) this;
        }

        public Criteria andUserEducationBetween(String value1, String value2) {
            addCriterion("user_Education between", value1, value2, "userEducation");
            return (Criteria) this;
        }

        public Criteria andUserEducationNotBetween(String value1, String value2) {
            addCriterion("user_Education not between", value1, value2, "userEducation");
            return (Criteria) this;
        }

        public Criteria andUserUniversityIsNull() {
            addCriterion("user_University is null");
            return (Criteria) this;
        }

        public Criteria andUserUniversityIsNotNull() {
            addCriterion("user_University is not null");
            return (Criteria) this;
        }

        public Criteria andUserUniversityEqualTo(String value) {
            addCriterion("user_University =", value, "userUniversity");
            return (Criteria) this;
        }

        public Criteria andUserUniversityNotEqualTo(String value) {
            addCriterion("user_University <>", value, "userUniversity");
            return (Criteria) this;
        }

        public Criteria andUserUniversityGreaterThan(String value) {
            addCriterion("user_University >", value, "userUniversity");
            return (Criteria) this;
        }

        public Criteria andUserUniversityGreaterThanOrEqualTo(String value) {
            addCriterion("user_University >=", value, "userUniversity");
            return (Criteria) this;
        }

        public Criteria andUserUniversityLessThan(String value) {
            addCriterion("user_University <", value, "userUniversity");
            return (Criteria) this;
        }

        public Criteria andUserUniversityLessThanOrEqualTo(String value) {
            addCriterion("user_University <=", value, "userUniversity");
            return (Criteria) this;
        }

        public Criteria andUserUniversityLike(String value) {
            addCriterion("user_University like", value, "userUniversity");
            return (Criteria) this;
        }

        public Criteria andUserUniversityNotLike(String value) {
            addCriterion("user_University not like", value, "userUniversity");
            return (Criteria) this;
        }

        public Criteria andUserUniversityIn(List<String> values) {
            addCriterion("user_University in", values, "userUniversity");
            return (Criteria) this;
        }

        public Criteria andUserUniversityNotIn(List<String> values) {
            addCriterion("user_University not in", values, "userUniversity");
            return (Criteria) this;
        }

        public Criteria andUserUniversityBetween(String value1, String value2) {
            addCriterion("user_University between", value1, value2, "userUniversity");
            return (Criteria) this;
        }

        public Criteria andUserUniversityNotBetween(String value1, String value2) {
            addCriterion("user_University not between", value1, value2, "userUniversity");
            return (Criteria) this;
        }

        public Criteria andUserMajorIsNull() {
            addCriterion("user_Major is null");
            return (Criteria) this;
        }

        public Criteria andUserMajorIsNotNull() {
            addCriterion("user_Major is not null");
            return (Criteria) this;
        }

        public Criteria andUserMajorEqualTo(String value) {
            addCriterion("user_Major =", value, "userMajor");
            return (Criteria) this;
        }

        public Criteria andUserMajorNotEqualTo(String value) {
            addCriterion("user_Major <>", value, "userMajor");
            return (Criteria) this;
        }

        public Criteria andUserMajorGreaterThan(String value) {
            addCriterion("user_Major >", value, "userMajor");
            return (Criteria) this;
        }

        public Criteria andUserMajorGreaterThanOrEqualTo(String value) {
            addCriterion("user_Major >=", value, "userMajor");
            return (Criteria) this;
        }

        public Criteria andUserMajorLessThan(String value) {
            addCriterion("user_Major <", value, "userMajor");
            return (Criteria) this;
        }

        public Criteria andUserMajorLessThanOrEqualTo(String value) {
            addCriterion("user_Major <=", value, "userMajor");
            return (Criteria) this;
        }

        public Criteria andUserMajorLike(String value) {
            addCriterion("user_Major like", value, "userMajor");
            return (Criteria) this;
        }

        public Criteria andUserMajorNotLike(String value) {
            addCriterion("user_Major not like", value, "userMajor");
            return (Criteria) this;
        }

        public Criteria andUserMajorIn(List<String> values) {
            addCriterion("user_Major in", values, "userMajor");
            return (Criteria) this;
        }

        public Criteria andUserMajorNotIn(List<String> values) {
            addCriterion("user_Major not in", values, "userMajor");
            return (Criteria) this;
        }

        public Criteria andUserMajorBetween(String value1, String value2) {
            addCriterion("user_Major between", value1, value2, "userMajor");
            return (Criteria) this;
        }

        public Criteria andUserMajorNotBetween(String value1, String value2) {
            addCriterion("user_Major not between", value1, value2, "userMajor");
            return (Criteria) this;
        }

        public Criteria andUserProfileIsNull() {
            addCriterion("user_Profile is null");
            return (Criteria) this;
        }

        public Criteria andUserProfileIsNotNull() {
            addCriterion("user_Profile is not null");
            return (Criteria) this;
        }

        public Criteria andUserProfileEqualTo(String value) {
            addCriterion("user_Profile =", value, "userProfile");
            return (Criteria) this;
        }

        public Criteria andUserProfileNotEqualTo(String value) {
            addCriterion("user_Profile <>", value, "userProfile");
            return (Criteria) this;
        }

        public Criteria andUserProfileGreaterThan(String value) {
            addCriterion("user_Profile >", value, "userProfile");
            return (Criteria) this;
        }

        public Criteria andUserProfileGreaterThanOrEqualTo(String value) {
            addCriterion("user_Profile >=", value, "userProfile");
            return (Criteria) this;
        }

        public Criteria andUserProfileLessThan(String value) {
            addCriterion("user_Profile <", value, "userProfile");
            return (Criteria) this;
        }

        public Criteria andUserProfileLessThanOrEqualTo(String value) {
            addCriterion("user_Profile <=", value, "userProfile");
            return (Criteria) this;
        }

        public Criteria andUserProfileLike(String value) {
            addCriterion("user_Profile like", value, "userProfile");
            return (Criteria) this;
        }

        public Criteria andUserProfileNotLike(String value) {
            addCriterion("user_Profile not like", value, "userProfile");
            return (Criteria) this;
        }

        public Criteria andUserProfileIn(List<String> values) {
            addCriterion("user_Profile in", values, "userProfile");
            return (Criteria) this;
        }

        public Criteria andUserProfileNotIn(List<String> values) {
            addCriterion("user_Profile not in", values, "userProfile");
            return (Criteria) this;
        }

        public Criteria andUserProfileBetween(String value1, String value2) {
            addCriterion("user_Profile between", value1, value2, "userProfile");
            return (Criteria) this;
        }

        public Criteria andUserProfileNotBetween(String value1, String value2) {
            addCriterion("user_Profile not between", value1, value2, "userProfile");
            return (Criteria) this;
        }

        public Criteria andUserTechnologyIsNull() {
            addCriterion("user_Technology is null");
            return (Criteria) this;
        }

        public Criteria andUserTechnologyIsNotNull() {
            addCriterion("user_Technology is not null");
            return (Criteria) this;
        }

        public Criteria andUserTechnologyEqualTo(String value) {
            addCriterion("user_Technology =", value, "userTechnology");
            return (Criteria) this;
        }

        public Criteria andUserTechnologyNotEqualTo(String value) {
            addCriterion("user_Technology <>", value, "userTechnology");
            return (Criteria) this;
        }

        public Criteria andUserTechnologyGreaterThan(String value) {
            addCriterion("user_Technology >", value, "userTechnology");
            return (Criteria) this;
        }

        public Criteria andUserTechnologyGreaterThanOrEqualTo(String value) {
            addCriterion("user_Technology >=", value, "userTechnology");
            return (Criteria) this;
        }

        public Criteria andUserTechnologyLessThan(String value) {
            addCriterion("user_Technology <", value, "userTechnology");
            return (Criteria) this;
        }

        public Criteria andUserTechnologyLessThanOrEqualTo(String value) {
            addCriterion("user_Technology <=", value, "userTechnology");
            return (Criteria) this;
        }

        public Criteria andUserTechnologyLike(String value) {
            addCriterion("user_Technology like", value, "userTechnology");
            return (Criteria) this;
        }

        public Criteria andUserTechnologyNotLike(String value) {
            addCriterion("user_Technology not like", value, "userTechnology");
            return (Criteria) this;
        }

        public Criteria andUserTechnologyIn(List<String> values) {
            addCriterion("user_Technology in", values, "userTechnology");
            return (Criteria) this;
        }

        public Criteria andUserTechnologyNotIn(List<String> values) {
            addCriterion("user_Technology not in", values, "userTechnology");
            return (Criteria) this;
        }

        public Criteria andUserTechnologyBetween(String value1, String value2) {
            addCriterion("user_Technology between", value1, value2, "userTechnology");
            return (Criteria) this;
        }

        public Criteria andUserTechnologyNotBetween(String value1, String value2) {
            addCriterion("user_Technology not between", value1, value2, "userTechnology");
            return (Criteria) this;
        }

        public Criteria andUserWantMoneyIsNull() {
            addCriterion("user_Want_Money is null");
            return (Criteria) this;
        }

        public Criteria andUserWantMoneyIsNotNull() {
            addCriterion("user_Want_Money is not null");
            return (Criteria) this;
        }

        public Criteria andUserWantMoneyEqualTo(Double value) {
            addCriterion("user_Want_Money =", value, "userWantMoney");
            return (Criteria) this;
        }

        public Criteria andUserWantMoneyNotEqualTo(Double value) {
            addCriterion("user_Want_Money <>", value, "userWantMoney");
            return (Criteria) this;
        }

        public Criteria andUserWantMoneyGreaterThan(Double value) {
            addCriterion("user_Want_Money >", value, "userWantMoney");
            return (Criteria) this;
        }

        public Criteria andUserWantMoneyGreaterThanOrEqualTo(Double value) {
            addCriterion("user_Want_Money >=", value, "userWantMoney");
            return (Criteria) this;
        }

        public Criteria andUserWantMoneyLessThan(Double value) {
            addCriterion("user_Want_Money <", value, "userWantMoney");
            return (Criteria) this;
        }

        public Criteria andUserWantMoneyLessThanOrEqualTo(Double value) {
            addCriterion("user_Want_Money <=", value, "userWantMoney");
            return (Criteria) this;
        }

        public Criteria andUserWantMoneyIn(List<Double> values) {
            addCriterion("user_Want_Money in", values, "userWantMoney");
            return (Criteria) this;
        }

        public Criteria andUserWantMoneyNotIn(List<Double> values) {
            addCriterion("user_Want_Money not in", values, "userWantMoney");
            return (Criteria) this;
        }

        public Criteria andUserWantMoneyBetween(Double value1, Double value2) {
            addCriterion("user_Want_Money between", value1, value2, "userWantMoney");
            return (Criteria) this;
        }

        public Criteria andUserWantMoneyNotBetween(Double value1, Double value2) {
            addCriterion("user_Want_Money not between", value1, value2, "userWantMoney");
            return (Criteria) this;
        }

        public Criteria andUserStateIsNull() {
            addCriterion("user_State is null");
            return (Criteria) this;
        }

        public Criteria andUserStateIsNotNull() {
            addCriterion("user_State is not null");
            return (Criteria) this;
        }

        public Criteria andUserStateEqualTo(String value) {
            addCriterion("user_State =", value, "userState");
            return (Criteria) this;
        }

        public Criteria andUserStateNotEqualTo(String value) {
            addCriterion("user_State <>", value, "userState");
            return (Criteria) this;
        }

        public Criteria andUserStateGreaterThan(String value) {
            addCriterion("user_State >", value, "userState");
            return (Criteria) this;
        }

        public Criteria andUserStateGreaterThanOrEqualTo(String value) {
            addCriterion("user_State >=", value, "userState");
            return (Criteria) this;
        }

        public Criteria andUserStateLessThan(String value) {
            addCriterion("user_State <", value, "userState");
            return (Criteria) this;
        }

        public Criteria andUserStateLessThanOrEqualTo(String value) {
            addCriterion("user_State <=", value, "userState");
            return (Criteria) this;
        }

        public Criteria andUserStateLike(String value) {
            addCriterion("user_State like", value, "userState");
            return (Criteria) this;
        }

        public Criteria andUserStateNotLike(String value) {
            addCriterion("user_State not like", value, "userState");
            return (Criteria) this;
        }

        public Criteria andUserStateIn(List<String> values) {
            addCriterion("user_State in", values, "userState");
            return (Criteria) this;
        }

        public Criteria andUserStateNotIn(List<String> values) {
            addCriterion("user_State not in", values, "userState");
            return (Criteria) this;
        }

        public Criteria andUserStateBetween(String value1, String value2) {
            addCriterion("user_State between", value1, value2, "userState");
            return (Criteria) this;
        }

        public Criteria andUserStateNotBetween(String value1, String value2) {
            addCriterion("user_State not between", value1, value2, "userState");
            return (Criteria) this;
        }

        public Criteria andUserCreateTimeIsNull() {
            addCriterion("user_Create_Time is null");
            return (Criteria) this;
        }

        public Criteria andUserCreateTimeIsNotNull() {
            addCriterion("user_Create_Time is not null");
            return (Criteria) this;
        }

        public Criteria andUserCreateTimeEqualTo(String value) {
            addCriterion("user_Create_Time =", value, "userCreateTime");
            return (Criteria) this;
        }

        public Criteria andUserCreateTimeNotEqualTo(String value) {
            addCriterion("user_Create_Time <>", value, "userCreateTime");
            return (Criteria) this;
        }

        public Criteria andUserCreateTimeGreaterThan(String value) {
            addCriterion("user_Create_Time >", value, "userCreateTime");
            return (Criteria) this;
        }

        public Criteria andUserCreateTimeGreaterThanOrEqualTo(String value) {
            addCriterion("user_Create_Time >=", value, "userCreateTime");
            return (Criteria) this;
        }

        public Criteria andUserCreateTimeLessThan(String value) {
            addCriterion("user_Create_Time <", value, "userCreateTime");
            return (Criteria) this;
        }

        public Criteria andUserCreateTimeLessThanOrEqualTo(String value) {
            addCriterion("user_Create_Time <=", value, "userCreateTime");
            return (Criteria) this;
        }

        public Criteria andUserCreateTimeLike(String value) {
            addCriterion("user_Create_Time like", value, "userCreateTime");
            return (Criteria) this;
        }

        public Criteria andUserCreateTimeNotLike(String value) {
            addCriterion("user_Create_Time not like", value, "userCreateTime");
            return (Criteria) this;
        }

        public Criteria andUserCreateTimeIn(List<String> values) {
            addCriterion("user_Create_Time in", values, "userCreateTime");
            return (Criteria) this;
        }

        public Criteria andUserCreateTimeNotIn(List<String> values) {
            addCriterion("user_Create_Time not in", values, "userCreateTime");
            return (Criteria) this;
        }

        public Criteria andUserCreateTimeBetween(String value1, String value2) {
            addCriterion("user_Create_Time between", value1, value2, "userCreateTime");
            return (Criteria) this;
        }

        public Criteria andUserCreateTimeNotBetween(String value1, String value2) {
            addCriterion("user_Create_Time not between", value1, value2, "userCreateTime");
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