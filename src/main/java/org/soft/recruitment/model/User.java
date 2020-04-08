package org.soft.recruitment.model;

import org.springframework.web.multipart.MultipartFile;

public class User {
    private Integer userId;

    private String userLoginName;

    private String userLoginPassword;

    private String userPhone;

    private String userEmail;

    private String userRealName;

    private String userSex;

    private String userBirthday;

    private String userEducation;

    private String userUniversity;

    private String userMajor;

    private String userProfile;

    private String userTechnology;

    private Double userWantMoney;

    private String userState;

    private String userCreateTime;


    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }

    private MultipartFile file;



    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserLoginName() {
        return userLoginName;
    }

    public void setUserLoginName(String userLoginName) {
        this.userLoginName = userLoginName == null ? null : userLoginName.trim();
    }

    public String getUserLoginPassword() {
        return userLoginPassword;
    }

    public void setUserLoginPassword(String userLoginPassword) {
        this.userLoginPassword = userLoginPassword == null ? null : userLoginPassword.trim();
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone == null ? null : userPhone.trim();
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail == null ? null : userEmail.trim();
    }

    public String getUserRealName() {
        return userRealName;
    }

    public void setUserRealName(String userRealName) {
        this.userRealName = userRealName == null ? null : userRealName.trim();
    }

    public String getUserSex() {
        return userSex;
    }

    public void setUserSex(String userSex) {
        this.userSex = userSex == null ? null : userSex.trim();
    }

    public String getUserBirthday() {
        return userBirthday;
    }

    public void setUserBirthday(String userBirthday) {
        this.userBirthday = userBirthday == null ? null : userBirthday.trim();
    }

    public String getUserEducation() {
        return userEducation;
    }

    public void setUserEducation(String userEducation) {
        this.userEducation = userEducation == null ? null : userEducation.trim();
    }

    public String getUserUniversity() {
        return userUniversity;
    }

    public void setUserUniversity(String userUniversity) {
        this.userUniversity = userUniversity == null ? null : userUniversity.trim();
    }

    public String getUserMajor() {
        return userMajor;
    }

    public void setUserMajor(String userMajor) {
        this.userMajor = userMajor == null ? null : userMajor.trim();
    }

    public String getUserProfile() {
        return userProfile;
    }

    public void setUserProfile(String userProfile) {
        this.userProfile = userProfile == null ? null : userProfile.trim();
    }

    public String getUserTechnology() {
        return userTechnology;
    }

    public void setUserTechnology(String userTechnology) {
        this.userTechnology = userTechnology == null ? null : userTechnology.trim();
    }

    public Double getUserWantMoney() {
        return userWantMoney;
    }

    public void setUserWantMoney(Double userWantMoney) {
        this.userWantMoney = userWantMoney;
    }

    public String getUserState() {
        return userState;
    }

    public void setUserState(String userState) {
        this.userState = userState == null ? null : userState.trim();
    }

    public String getUserCreateTime() {
        return userCreateTime;
    }

    public void setUserCreateTime(String userCreateTime) {
        this.userCreateTime = userCreateTime == null ? null : userCreateTime.trim();
    }
}