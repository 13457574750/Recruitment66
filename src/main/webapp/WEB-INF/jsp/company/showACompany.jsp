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
<style type="text/css">

    #test{width:auto;height:auto;border:1px solid green;}

</style>
<%@include file="../company/head.jsp" %>

<!-- 首页图片 Start -->
<div class="page-heading-section section bg-parallax" data-bg-image="${path}/assets/images/bg/bg-1.jpg"
     data-overlay="50"></div>
<!-- 首页图片 End -->

<div class="section section-padding">
    <div class="container">

        <div class="row mb-n5">

            <div class="col-lg-8 col-12 mb-5 pr-lg-5">
                <!--左边 Start -->
                <div class="blog-wrap row">

                    <!-- 左1 Start -->
                    <div class="col-12">
                        <div class="blog blog-single">
                            <div class="content">
                                <div class="desc" style="float:left">
                                    <img src="${path}/images/banner_img1_6.jpg" style="width: 150px;border-radius: 30px;">
                                    <div style="float: right;width: 577px"><h3>&nbsp;&nbsp;&nbsp;${company.companyName}&nbsp;&nbsp;&nbsp;<i class="mdi mdi-fingerprint"></i>小羊认证</h3>
                                        <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="mdi mdi-fingerprint"></i>${company.companyWeb}</div>
                                        <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-phone-square"></i>${company.companyPhone}&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-envelope-o"></i>${company.companyEmail}</div>
                                        <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="mdi mdi-fingerprint"></i>${company.companyProfile}</div>
                                    </div>
                                <div style="text-align:center"> <h4 onclick="loadPage('${path}/company/allCompany')">招聘职位</h4></div>
                                    <div id="test">&nbsp;</div>
                                    <hr class="divider_type_3 m_bottom_30">
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- 左1 End -->

                    <!-- 左2 Start -->
                    <div class="col-12">
                        <div class="blog blog-single">
                            <div class="content">
                                <div class="desc">
                                    <div id="demo" class="carousel slide" data-ride="carousel">

                                        <!-- 指示符 -->
                                        <ul class="carousel-indicators">
                                            <li data-target="#demo" data-slide-to="1" class="active"></li>
                                            <li data-target="#demo" data-slide-to="2"></li>
                                            <li data-target="#demo" data-slide-to="3"></li>
                                        </ul>

                                        <!-- 轮播图片 -->
                                        <div class="carousel-inner">
                                            <div class="carousel-item active">
                                                <img src="${path}/images/img_fjords_wide.jpg">
                                            </div>
                                            <div class="carousel-item">
                                                <img src="${path}/images/img_nature_wide.jpg">
                                            </div>
                                            <div class="carousel-item">
                                                <img src="${path}/images/img_mountains_wide.jpg">
                                            </div>
                                        </div>

                                        <!-- 左右切换按钮 -->
                                        <a class="carousel-control-prev" href="#demo" data-slide="prev">
                                            <span class="carousel-control-prev-icon"></span>
                                        </a>
                                        <a class="carousel-control-next" href="#demo" data-slide="next">
                                            <span class="carousel-control-next-icon"></span>
                                        </a>

                                    </div>
                                </div>
                                <hr class="divider_type_3 m_bottom_30">
                            </div>
                        </div>
                    </div>
                    <!-- 左2 End -->

                </div>
                    <!--  左边 End -->
            </div>

            <!-- 右边 Start-->
            <div class="col-lg-4 col-12 mb-5">
                <div class="sidebar-wrap">
                    <!-- 1 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <h6 class="title">公司基本信息</h6>
                            <form action="#">
                                <div class="row">
                                    <div class="col-12 mb-3"><i class="mdi mdi-chart-line"></i> ${company.companyType}
                                    </div>
                                    <div class="col-12 mb-3"><i
                                            class="mdi mdi-border-all"></i> ${company.companyIndustry}</div>
                                    <div class="col-12 mb-3"><i
                                            class="mdi mdi-map-marker"></i> ${company.companyAddress}</div>
                                    <div class="col-12 mb-3"><i class="mdi mdi-account"></i> ${company.companyNumber}
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- 1 End -->

                    <!-- 2 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <h6 class="title">工商信息</h6>
                            <form action="#">
                                <div class="row">
                                    <div class="col-12 mb-3"><i class="mdi mdi-chart-line"></i> ${company.companyName}
                                    </div>
                                    <div class="col-12 mb-3"><i
                                            class="mdi mdi-border-all"></i> ${company.companyRegisterCapital}</div>
                                    <div class="col-12 mb-3"><i
                                            class="mdi mdi-map-marker"></i> ${company.companyAddress}</div>
                                    <div class="col-12 mb-3"><i class="mdi mdi-account"></i> ${company.companyOwner}
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- 2 End -->
                </div>
            </div>
            <!-- 右边 End -->


        </div>

    </div>
</div>


<%@include file="../company/foot.jsp" %>
<script language="javascript">

    function loadPage(href){

        $("#test").load(href);

    }

</script>
</body>
</html>