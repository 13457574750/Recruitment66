package org.soft.recruitment.model;

public class Apply {
    private Integer applyId;

    private String applyReleaseTime;

    private String jobId;

    private String jobName;

    private String jobAddress;

    private String jobSalary;

    private String jobEr;

    private String jobEducation;

    private String jobReleaseTime;

    private String jobType;

    private String companyName;

    private String companyCreateTime;

    private String userRealName;


    private Job job;

    public Job getJob() { return job; }

    public void setJob(Job job) { this.job = job; }

    private Company company;

    public Company getCompany() { return company; }

    public void setCompany(Company company) {
        this.company = company;
    }



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

    public String getJobId() {
        return jobId;
    }

    public void setJobId(String jobId) {
        this.jobId = jobId == null ? null : jobId.trim();
    }

    public String getJobName() {
        return jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName == null ? null : jobName.trim();
    }

    public String getJobAddress() {
        return jobAddress;
    }

    public void setJobAddress(String jobAddress) {
        this.jobAddress = jobAddress == null ? null : jobAddress.trim();
    }

    public String getJobSalary() {
        return jobSalary;
    }

    public void setJobSalary(String jobSalary) {
        this.jobSalary = jobSalary == null ? null : jobSalary.trim();
    }

    public String getJobEr() {
        return jobEr;
    }

    public void setJobEr(String jobEr) {
        this.jobEr = jobEr == null ? null : jobEr.trim();
    }

    public String getJobEducation() {
        return jobEducation;
    }

    public void setJobEducation(String jobEducation) {
        this.jobEducation = jobEducation == null ? null : jobEducation.trim();
    }

    public String getJobReleaseTime() {
        return jobReleaseTime;
    }

    public void setJobReleaseTime(String jobReleaseTime) {
        this.jobReleaseTime = jobReleaseTime == null ? null : jobReleaseTime.trim();
    }

    public String getJobType() {
        return jobType;
    }

    public void setJobType(String jobType) {
        this.jobType = jobType == null ? null : jobType.trim();
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
}