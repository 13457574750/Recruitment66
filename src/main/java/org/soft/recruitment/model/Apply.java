package org.soft.recruitment.model;

public class Apply {
    private Integer applyId;

    private String applyReleaseTime;

    private String companyName;

    private String companyCreateTime;

    private String userRealName;

    private String jobId;


    private Job job;

    public Job getJob() { return job; }

    public void setJob(Job job) { this.job = job; }


    public Integer getApplyId() {
        return applyId;
    }

    public void setApplyId(Integer applyId) {
        this.applyId = applyId;
    }

    public String getApplyReleaseTime() {
        return applyReleaseTime;
    }

    public void setApplyReleaseTime(String applyReleaseTime) {
        this.applyReleaseTime = applyReleaseTime == null ? null : applyReleaseTime.trim();
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName == null ? null : companyName.trim();
    }

    public String getCompanyCreateTime() {
        return companyCreateTime;
    }

    public void setCompanyCreateTime(String companyCreateTime) {
        this.companyCreateTime = companyCreateTime == null ? null : companyCreateTime.trim();
    }

    public String getUserRealName() {
        return userRealName;
    }

    public void setUserRealName(String userRealName) {
        this.userRealName = userRealName == null ? null : userRealName.trim();
    }

    public String getJobId() {
        return jobId;
    }

    public void setJobId(String jobId) {
        this.jobId = jobId == null ? null : jobId.trim();
    }
}