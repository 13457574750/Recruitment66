<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <title>企业详细信息</title>
</head>
<body>
<%@include file="../company/head.jsp" %>

<!-- 首页图片 Start -->
<div class="page-heading-section section bg-parallax" data-bg-image="${path}/assets/images/bg/bg-1.jpg"
     data-overlay="50"></div>
<!-- 首页图片 End -->

<!-- 主体内容 Start -->
<div class="section section-padding">
    <div class="container">
        <div class="row mb-n5">

            <!-- 左边 Start -->
            <div class="col-lg-8 col-12 mb-5 pr-lg-5">

                <!-- 左1 Start -->
                <div class="company-details">

                    <h5 class="mb-3">
                         <span class="company-logo">
                                    <img src="${path}/assets/images/companies/company-1.png" alt="company-1"></span>
                        <trans>关于${company.companyName}</trans>
                    </h5>
                    <p>
                        <trans>
                            <i class="mdi mdi-fingerprint"></i>${company.companyWeb}
                            <i class="fa fa-phone-square"></i>${company.companyPhone}
                            <i class="fa fa-envelope-o"></i>${company.companyEmail}
                        </trans>
                    </p>
                    <ul>
                        <li>
                            <trans>${company.companyProfile}</trans>
                        </li>
                    </ul>
                </div>
                <!-- 左1 Start -->
                <button type="button" class="btn btn-primary w-100"
                        onclick="$('#target').toggle();this.disabled='disabled';">招聘职位
                </button>

                <!-- 左2 Start -->
                <div class="job-list-wrap mt-5" id="target" style="display: none">
                    <form action="${path}/job/findAllJob" id="searchForm" method="post">
                        <c:forEach items="${pageInfo.list}" var="job">
                            <a class="job-list"
                               onclick="show('${job.company.companyId}','${job.company.companyName}','${job.company.companyCreateTime}','${job.jobId}',
                                       '${job.jobName}','${job.jobAddress}','${job.jobSalary}','${job.jobEr}','${job.jobEducation}',
                                       '${job.jobReleaseTime}','${job.jobType}','${sessionScope.currUser.userId}','${sessionScope.currUser.userRealName}')">
                                <div class="company-logo col-auto">
                                    <img src="${path}/assets/images/companies/company-1.png" alt="Company Logo">
                                </div>
                                <div class="salary-type col-auto order-sm-3">
                                    <span class="salary-range">$${job.jobSalary}</span>
                                    <span class="badge badge-success"><trans>${job.jobType}</trans></span>
                                </div>
                                <div class="content col">
                                    <ul class="meta">
                                        <li>
                                            <h6 class="title">
                                                <trans>${job.jobName}</trans>
                                            </h6>
                                        </li>
                                        <li><strong class="text-primary"><i class="fa fa-map-marker"></i>
                                            <trans>发布时间：${job.jobReleaseTime}</trans>
                                        </strong></li>
                                    </ul>
                                    <ul class="meta">
                                        <li><strong class="text-primary"><i class="fa fa-map-marker"></i>
                                            <trans>${job.company.companyName}</trans>
                                        </strong></li>
                                        <li><strong class="text-primary"><i class="fa fa-map-marker"></i>
                                            <trans>${job.jobAddress}</trans>
                                        </strong></li>
                                        <li><strong class="text-primary"><i class="fa fa-map-marker"></i>
                                            <trans>${job.jobEr}</trans>
                                        </strong></li>
                                        <li><strong class="text-primary"><i class="fa fa-map-marker"></i>
                                            <trans>${job.jobEducation}</trans>
                                        </strong></li>
                                    </ul>
                                </div>
                            </a>

                        </c:forEach>
                        <input type="hidden" name="companyName" value="小米" placeholder="请输入要搜索的公司">
                        <button type="button" class="btn btn-primary w-100" value="小米"
                                onclick="search();">搜索
                        </button>
                    </form>
                </div>
                <!-- 左2 Start -->

            </div>
            <!-- 左边 End -->

            <!-- 右边 Start -->
            <div class="col-lg-4 col-12 mb-5">
                <div class="sidebar-wrap">
                    <!-- 右1 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <div class="sidebar-company">
                                <h6 class="title">
                                <span class="company-logo">
                                    <img src="${path}/assets/images/companies/company-1.png" alt="company-1"></span>
                                    <trans>${company.companyName}</trans>
                                </h6>
                                <ul>
                                    <li><strong>
                                        <trans>类型：</trans>
                                    </strong>
                                        <trans>${company.companyType}</trans>
                                    </li>
                                    <li><strong>
                                        <trans>行业：</trans>
                                    </strong>
                                        <trans>${company.companyIndustry}</trans>
                                    </li>
                                    <li><strong>
                                        <trans>地址：</trans>
                                    </strong>
                                        <trans>${company.companyAddress}</trans>
                                    </li>
                                    <li><strong>
                                        <trans>规模：</trans>
                                    </strong>
                                        <trans>${company.companyNumber}人以上</trans>
                                    </li>
                                    <li><strong>
                                        <trans>注册资本：</trans>
                                    </strong>
                                        <trans>${company.companyRegisterCapital}万</trans>
                                    </li>
                                    <li><strong>
                                        <trans>创始人：</trans>
                                    </strong>
                                        <trans>${company.companyOwner}</trans>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- 右1 End -->

                </div>
            </div>
            <!-- 右边 End -->

        </div>
    </div>
</div>
<!-- 主体内容 End -->

<%@include file="../company/foot.jsp" %>

</body>

<script language="javascript">
    function toggler(divId) {
        $("#" + divId).toggle();
    }

    function search() {
        $("#searchForm").submit();
        return false;
    }

    function show(companyId, companyName, companyCreateTime, jobId, jobName, jobAddress,
                  jobSalary, jobEr, jobEducation, jobReleaseTime, jobType, userId, userRealName) {
        var url = "${path}/job/showAJob?companyId=" + companyId + "&companyName=" + companyName + "&companyCreateTime="
            + companyCreateTime + "&jobId=" + jobId + "&jobName=" + jobName + "&jobAddress=" + jobAddress + "&jobSalary="
            + jobSalary + "&jobSalary=" + jobSalary + "&jobEr=" + jobEr + "&jobEducation=" + jobEducation + "&jobReleaseTime="
            + jobReleaseTime + "&jobType=" + jobType + "&userId=" + userId + "&userRealName=" + userRealName;
        window.location.href = url;
    }
</script>
</html>