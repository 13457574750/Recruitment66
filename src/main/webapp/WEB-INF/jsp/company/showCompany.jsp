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
                    <p><h6 style="text-align: center"><a class="button" name="companyName" value="${company.companyName}" onclick="$('#target').toggle();">招聘职位</a></h6></p>
                    <!-- 左1 Start -->

                    <!-- 左2 Start -->
                    <div class="job-list-wrap mt-5" id="target" >
                        <%--                        <c:forEach items="${jobList}" var="job">--%>

                        <a href="${path}/job/showAJob?jobId=${job.jobId}&&companyId=${job.company.companyId}" class="job-list">
                            <div class="company-logo col-auto">
                                <img src="${path}/assets/images/companies/company-1.png" alt="Company Logo">
                            </div>
                            <div class="salary-type col-auto order-sm-3">
                                <span class="salary-range">$${job.jobSalary}</span>
                                <span class="badge badge-success"><trans>${job.jobType}</trans></span>
                            </div>
                            <div class="content col">
                                <h6 class="title"><trans>${job.jobName}</trans></h6>
                                <ul class="meta">
                                    <li><strong class="text-primary"><i class="fa fa-map-marker"></i><trans>${company.companyName}</trans></strong></li>
                                    <li><strong class="text-primary"><i class="fa fa-map-marker"></i><trans>${job.jobAddress}</trans></strong></li>
                                    <li><strong class="text-primary"><i class="fa fa-map-marker"></i><trans>${job.jobEr}</trans></strong></li>
                                    <li><strong class="text-primary"><i class="fa fa-map-marker"></i><trans>${job.jobEducation}</trans></strong></li>
                                </ul>
                            </div>
                        </a>
                        <%--                        </c:forEach>--%>

                    </div>
                    <!-- 左2 Start -->

                    <!-- 分页 Start -->
                    <ul class="pagination pagination-center mt-5">
                        <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-left"></i></a></li>
                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">4</a></li>
                        <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-right"></i></a></li>
                    </ul>
                    <!-- 分页 End -->

                </div>
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
                                        <trans>${company.companyRegisterCapital}</trans>
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
                    <!-- 右2 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <form action="#">
                                <div class="row">
                                        <input class="btn btn-primary w-100" type="button" href="javascript:void(0)" onclick="updateCompany('${company.companyId}')" value="修改">
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- 右2 End -->

                </div>
            </div>
            <!-- 右边 End -->

        </div>
    </div>
</div>
<!-- 主体内容 End -->

<%@include file="../company/foot.jsp" %>

<script language="javascript">
    function loadPage(href) {
        $("#test").load(href);
    }
    function toggler(divId) {
        $("#" + divId).toggle();
    }
    function updateCompany(companyId) {
        var url = "${path}/company/updateCompany?companyId=" + companyId;
        window.location.href = url;
    }
</script>
</body>
</html>