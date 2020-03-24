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

<!-- 关于我们 Start -->
<div class="section section-padding">
    <div class="container">
        <div class="row mb-n4">
            <!-- About Content Start -->
            <div class="col-md-6 col-12 pr-lg-5 align-self-center mb-4">
                <div class="about-content">
                    <h3 class="title">关于我们</h3>
                    <p>我们是最砖业的招聘网站</p>
                    <ul>
                        <li>为您打造简洁方便快捷的求职招聘平台</li>
                        <li>本网站所有权归本人所有</li>
                        <li>学习作品，禁止商用</li>
                        <li>如有雷同，纯属巧合</li>
                        <li>一切纠纷，概不负责</li>
                    </ul>
                </div>
            </div>
            <!-- About Content End -->

            <!-- About Image Start -->
            <div class="col-md-6 col-12 mb-4">
                <div class="about-image">
                    <img src="${path}/assets/images/others/about-1.jpg" alt="">
                </div>
            </div>
            <!-- About Image End -->
        </div>
    </div>
</div>
<!-- 关于我们 End -->

<div class="section section-padding bg-parallax" data-bg-image="${path}/assets/images/bg/bg-3.jpg" data-overlay="50">
                <div class="container">
                    <div class="funfact-wrap row">

                        <!-- Funfact Start -->
                        <div class="funfact col-md-3 col-sm-6 col-12">
                            <span class="counter">2018</span>
                            <span class="title"><trans oldtip="Job Post" newtip="Job Post">工作岗位</trans></span>
                        </div>
                        <!-- Funfact Start -->

                        <!-- Funfact Start -->
                        <div class="funfact col-md-3 col-sm-6 col-12">
                            <span class="counter">2019</span>
                            <span class="title"><trans oldtip="Members" newtip="Members">成员</trans></span>
                        </div>
                        <!-- Funfact Start -->

                        <!-- Funfact Start -->
                        <div class="funfact col-md-3 col-sm-6 col-12">
                            <span class="counter">2020</span>
                            <span class="title"><trans oldtip="Resume" newtip="Resume">简历</trans></span>
                        </div>
                        <!-- Funfact Start -->

                        <!-- Funfact Start -->
                        <div class="funfact col-md-3 col-sm-6 col-12">
                            <span class="counter">2021</span>
                            <span class="title"><trans oldtip="Company" newtip="Company">公司</trans></span>
                        </div>
                        <!-- Funfact Start -->

                    </div>
                </div>
            </div>

<div class="section section-padding"></div>

<%@include file="../user/foot.jsp"%>
</body>
</html>