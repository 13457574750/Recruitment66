<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <title>职位详细</title>
</head>
<body>
<%@include file="../company/head.jsp" %>

<!-- 首页图片 Start -->
<div class="page-heading-section section bg-parallax" data-bg-image="${path}/assets/images/bg/bg-1.jpg"
     data-overlay="50"></div>
<!-- 首页图片 End -->

<!-- 职位列表 Start -->
<div class="section section-padding">
    <div class="container">
        <div class="row mb-n5">

            <!-- 左边 Start -->
            <!-- 职位详细信息 Start -->
            <div class="col-lg-8 col-12 mb-5 pr-lg-5">
                <div class="job-list-details">
                    <div class="job-details-head row mx-0">
                        <div class="company-logo col-auto">
                            <%-- 接收数据--%>
                            <p>
                                <input type="hidden" id="companyName" name="companyName" value="${company.companyName}">
                                <input type="hidden" id="companyCreateTime" value="${company.companyCreateTime}">

                                <input type="hidden" id="jobId" value="${job.jobId}">
                                <input type="hidden" id="jobName" name="jobName" value="${job.jobName}">
                                <input type="hidden" id="jobAddress" value="${job.jobAddress}">
                                <input type="hidden" id="jobSalary" value="${job.jobSalary}">
                                <input type="hidden" id="jobEr" value="${job.jobEr}">
                                <input type="hidden" id="jobEducation" value="${job.jobEducation}">
                                <input type="hidden" id="jobReleaseTime" value="${job.jobReleaseTime}">
                                <input type="hidden" id="jobType" value="${job.jobType}">

                                <input type="hidden" id="userId" value="${sessionScope.currUser.userId}">
                                <input type="hidden" id="userRealName" name="userRealName"
                                       value="${sessionScope.currUser.userRealName}">

                            </p>
                            <a href="${path}/company/showACompany?jobId=${job.jobId}&companyId=${job.companyId}&?userId=${sessionScope.currUser.userId}"><img
                                    src="${path}/assets/images/companies/company-1.png" alt="Company Logo"></a>
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
                                <li><i class="fa fa-map-marker"></i><strong class="text-primary">
                                    <trans>${company.companyName}</trans>
                                </strong></li>
                                <li><i class="fa fa-map-marker"></i><strong class="text-primary">
                                    <trans>${job.jobAddress}</trans>
                                </strong></li>
                                <li><i class="fa fa-map-marker"></i><strong class="text-primary">
                                    <trans>${job.jobEr}</trans>
                                </strong></li>
                                <li><i class="fa fa-map-marker"></i><strong class="text-primary">
                                    <trans>${job.jobEducation}</trans>
                                </strong></li>
                            </ul>
                        </div>
                    </div>
                    <div class="job-details-body">
                        <h6 class="mb-3">
                            <trans>职位福利</trans>
                        </h6>
                        <p>
                            <trans>${job.jobWelfare}</trans>
                        </p>
                        <h6 class="mb-3 mt-4">
                            <trans>职位内容</trans>
                        </h6>
                        <ul>
                            <li>
                                <trans>${job.jobContent}</trans>
                            </li>
                        </ul>
                        <h6 class="mb-3 mt-4">
                            <trans>职位要求</trans>
                        </h6>
                        <ul>
                            <li>
                                <trans>${job.jobRequirements}</trans>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- 职位详细信息 End -->
            <!-- 左边 End -->

            <!-- 右边 Start -->
            <div class="col-lg-4 col-12 mb-5">
                <div class="sidebar-wrap">

                    <!-- 右2 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <h6 class="title">
                                <trans>工作概述</trans>
                            </h6>
                            <ul class="job-overview list-unstyled">
                                <li><strong>
                                    <trans>发布时间：</trans>
                                </strong>
                                    <trans>${job.jobReleaseTime}</trans>
                                </li>
                                <li><strong>
                                    <trans>空缺：</trans>
                                </strong>
                                    <trans>${job.jobNumber}人</trans>
                                </li>
                                <li><strong>
                                    <trans>就业状况：</trans>
                                </strong>
                                    <trans>${job.jobType}</trans>
                                </li>
                                <li><strong>
                                    <trans>经验：</trans>
                                </strong>
                                    <trans>${job.jobEr}</trans>
                                </li>
                                <li><strong>
                                    <trans>工作地点：</trans>
                                </strong>
                                    <trans>${job.jobAddress}</trans>
                                </li>
                                <li><strong>
                                    <trans>薪酬：</trans>
                                </strong>
                                    <trans>$${job.jobSalary}</trans>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- 右2 End -->
                </div>
            </div>
            <!-- 右边 End -->

        </div>
    </div>
</div>
<!-- 职位列表 End -->


<%@include file="../user/foot.jsp" %>

</body>
<script type="text/javascript">

    function search() {
        $("#searchForm").submit();
    }
</script>
</html>