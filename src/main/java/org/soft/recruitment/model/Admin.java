package org.soft.recruitment.model;

public class Admin {
    private Integer adminId;

    private String adminLoginName;

    private String adminLoginPassword;

    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public String getAdminLoginName() {
        return adminLoginName;
    }

    public void setAdminLoginName(String adminLoginName) {
        this.adminLoginName = adminLoginName == null ? null : adminLoginName.trim();
    }

    public String getAdminLoginPassword() {
        return adminLoginPassword;
    }

    public void setAdminLoginPassword(String adminLoginPassword) {
        this.adminLoginPassword = adminLoginPassword == null ? null : adminLoginPassword.trim();
    }
}