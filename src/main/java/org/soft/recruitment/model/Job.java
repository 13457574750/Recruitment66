package org.soft.recruitment.model;

public class Job {
    private Integer jobId;

    private String jobName;

    private Double jobSalary;

    private String jobAddress;

    private String jobEr;

    private String jobEducation;

    private String jobType;

    private String jobReleaseTime;

    private Integer jobNumber;

    private String jobWelfare;

    private String jobContent;

    private String jobRequirements;

    private String companyName;

    private Integer companyId;

    public Integer getJobId() {
        return jobId;
    }

    public void setJobId(Integer jobId) {
        this.jobId = jobId;
    }

    public String getJobName() {
        return jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName == null ? null : jobName.trim();
    }

    public Double getJobSalary() {
        return jobSalary;
    }

    public void setJobSalary(Double jobSalary) {
        this.jobSalary = jobSalary;
    }

    public String getJobAddress() {
        return jobAddress;
    }

    public void setJobAddress(String jobAddress) {
        this.jobAddress = jobAddress == null ? null : jobAddress.trim();
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

    public String getJobType() {
        return jobType;
    }

    public void setJobType(String jobType) {
        this.jobType = jobType == null ? null : jobType.trim();
    }

    public String getJobReleaseTime() {
        return jobReleaseTime;
    }

    public void setJobReleaseTime(String jobReleaseTime) {
        this.jobReleaseTime = jobReleaseTime == null ? null : jobReleaseTime.trim();
    }

    public Integer getJobNumber() {
        return jobNumber;
    }

    public void setJobNumber(Integer jobNumber) {
        this.jobNumber = jobNumber;
    }

    public String getJobWelfare() {
        return jobWelfare;
    }

    public void setJobWelfare(String jobWelfare) {
        this.jobWelfare = jobWelfare == null ? null : jobWelfare.trim();
    }

    public String getJobContent() {
        return jobContent;
    }

    public void setJobContent(String jobContent) {
        this.jobContent = jobContent == null ? null : jobContent.trim();
    }

    public String getJobRequirements() {
        return jobRequirements;
    }

    public void setJobRequirements(String jobRequirements) {
        this.jobRequirements = jobRequirements == null ? null : jobRequirements.trim();
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName == null ? null : companyName.trim();
    }

    public Integer getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Integer companyId) {
        this.companyId = companyId;
    }
}