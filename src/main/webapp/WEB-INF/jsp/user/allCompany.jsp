<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <title>关于我们</title>
</head>
<body>
<%@include file="../user/head.jsp"%>

<!-- 首页图片 Start -->
<div class="page-heading-section section bg-parallax" data-bg-image="${path}/assets/images/bg/bg-1.jpg"
     data-overlay="50"></div>
<!-- 首页图片 End -->

<div class="section section-padding">
    <div class="container">

        <div class="row mb-n5">

            <!-- 左边 Start-->
            <div class="col-lg-8 col-12 mb-5 pr-lg-5">
                <!-- 企业列表 Start -->

                <div class="company-list-wrap row">
                    <c:forEach items="${companyList}" var="company">
                    <!-- 1 -->
                    <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col-12">
                        <a href="${path}/user/showACompany?companyId=${company.companyId}" class="company-list" value="${company.companyId}">
                            <span class="company-logo"><img src="${path}/assets/images/companies/company-1.png" alt="company-1"></span>
                            <h6 class="title">${company.companyName}</h6>
                            <span>${company.companyType}/${company.companyIndustry}/${company.companyNumber}人</span></br>
                            <span>${company.companyProfile}</span></br>
                            <span><i class="fa fa-map-o"></i>${company.companyAddress}</span>
                        </a>
                    </div>
                    <!-- 1 -->
                    </c:forEach>
                </div>
                <!-- 企业列表 Start -->
                <!-- 分页按钮 Start -->
                <ul class="pagination pagination-center mt-5">
                    <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-left"></i></a></li>
                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                    <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-right"></i></a></li>
                </ul>
                <!-- 分页按钮 End -->
            </div>
            <!-- 左边 End -->

            <!-- 右边 Start-->
            <div class="col-lg-4 col-12 mb-5">
                <div class="sidebar-wrap">
                    <!-- 搜索 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <h6 class="title"><trans oldtip="Search Company" newtip="搜索公司">搜索公司</trans></h6>
                            <form action="#">
                                <div class="row">
                                    <div class="col-12 mb-3"><input type="text" placeholder="Keyword"></div>
                                    <div class="col-12 mb-3">
                                        <input class="btn btn-primary w-100" type="submit" value="搜索">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- 搜索 End -->

                    <!-- 2 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <a class="banner" target="_blank"><img src="${path}/assets/images/banner/banner-1.jpg" alt="Banner"></a>
                        </div>
                    </div>
                    <!-- 2 End -->
                </div>
            </div>
            <!-- 右边 End -->

        </div>

    </div>
</div>


<%@include file="../user/foot.jsp"%>

</body>
</html>