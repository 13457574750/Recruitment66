<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <title>职位列表</title>
</head>
<body>
<%@include file="../user/head.jsp" %>

<!-- 首页图片 Start -->
<div class="page-heading-section section bg-parallax" data-bg-image="${path}/assets/images/bg/bg-1.jpg"
     data-overlay="50"></div>
<!-- 首页图片 End -->

<!-- 搜索栏 Start-->
<div class="section section-padding">
    <div class="container">
        <form action="${path}/job/findAllJob" id="searchForm" method="post">
            职位名称:<input type="text" name="jobName"/>
            工作地址:<input type="text" name="jobAddress"/>
            公司名称:<input type="text" name="companyName"/>
            <button type="button" class="btn btn-primary w-100" onclick="search()">搜索</button>
        </form>
    </div>
</div>
<!-- 搜索栏 End -->

<!-- 博客内容 Start -->
<div class="section section-padding">
    <div class="container">
        <div class="row mb-n5">
            <div class="col-lg-8 col-12 mb-5 pr-lg-5">
                <!--左边 Start -->
                <div class="blog-wrap row">

                    <!-- 左1 Start -->
                    <c:forEach items="${jobList}" var="job">
                        <div class="col-12">
                                <%--名称--%>
                            <div class="blog blog-single">
                                <div class="content">
                                    <div class="desc">
                                        <div class="foot row justify-content-between align-items-start mb-n2">
                                            <div class="blog-tags col-auto mb-2">
                                                <ul>
                                                    <li><a href="${path}/job/showAJob?jobId=${job.jobId}"
                                                           value="${job.jobId}"><strong>${job.jobName}</strong></a></li>
                                                    <li><strong>${job.jobAddress}</strong></li>
                                                    <li><strong>${job.jobReleaseTime}发布</strong></li>
                                                </ul>
                                            </div>
                                            <div class="blog-share col-auto mb-2">
                                                <ul>
                                                    <li><strong>${job.company.companyName}</strong></li>
                                                </ul>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                                <%--名称--%>
                        <div class="blog blog-single">
                            <div class="content">
                                <div class="desc">
                                    <div class="foot row justify-content-between align-items-start mb-n2">
                                        <div class="blog-tags col-auto mb-2">
                                            <ul>
                                                <li>${job.jobSalary}</li>
                                                <li>${job.jobEr}</li>
                                                <li>${job.jobEducation}</li>
                                            </ul>
                                        </div>
                                        <div class="blog-share col-auto mb-2">
                                            <ul>
                                                <li><strong>${job.company.companyIndustry}</strong></li>
                                                <li><strong>${job.company.companyNumber}人</strong></li>
                                            </ul>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="divider_type_3 m_bottom_30">
                    </div>
                    </c:forEach>
                    <!-- 左1 End -->

                </div>
                <!--  左边 End -->

            </div>

            <!-- 右边 Start -->
            <div class="col-lg-4 col-12 mb-5">
                <div class="sidebar-wrap">
                    <!-- 右1 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
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
                    </div>
                    <!-- 右1 End -->

                    <!-- 右3 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <h6 class="title"><trans oldtip="Category" newtip="Category" style="">分类</trans></h6>
                            <ul class="sidebar-list">
                                <li><a href="#"><trans oldtip="Business" newtip="Business">商业</trans></a>
                                </li>
                                <li><a href="#"><trans oldtip="Design &amp; Creative" newtip="Design &amp; Creative">设计与创新</trans></a>
                                </li>
                                <li><a href="#"><trans oldtip="Education" newtip="Education">教育</trans></a>
                                </li>
                                <li><a href="#"><trans oldtip="IT &amp; Computer" newtip="IT &amp; Computer">IT与计算机</trans></a>
                                </li>
                                <li><a href="#"><trans oldtip="Photography" newtip="Photography">摄影</trans></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- 右3 End -->
                </div>
            </div>
            <!-- 右边 End -->


        </div>
    </div>
</div>
<!-- 博客内容 End -->


<%@include file="../user/foot.jsp" %>

<script type="text/javascript">
    function search() {
        $("#searchForm").submit();
    }
</script>
</body>
</html>