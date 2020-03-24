<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <title>联系我们</title>
</head>
<body>
<%@include file="../company/head.jsp"%>

<!-- 首页图片 Start -->
<div class="page-heading-section section bg-parallax" data-bg-image="${path}/assets/images/bg/bg-1.jpg" data-overlay="50"></div>
<!-- 首页图片 End -->

<div class="section section-padding">
    <div class="container">
        <div class="row mb-n5">

            <%--联系信息 start--%>
            <div class="col-lg-5 col-12 mb-5">
                <div class="contact-information">
                    <h5 class="title mb-4">
                        <trans oldtip="Contact Information" newtip="Contact Information">联系信息</trans>
                    </h5>
                    <ul>
                        <li><i class="fa fa-map-o"></i>
                            <span><trans oldtip="address" newtip="address">桂林</trans><br></span></li>
                        <li><i class="fa fa-phone-square"></i><span>+123 456 789</span></li>
                        <li><i class="fa fa-fax"></i><span>+123 456 789</span></li>
                        <li><i class="fa fa-envelope-o"></i>
                            <span><trans oldtip="keller@email.com" newtip="keller@email.com">keller@email.com</trans></span>
                        </li>
                    </ul>
                    <div class="contact-social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <%--联系信息 start--%>

            <%--留言板 start--%>
            <div class="col-lg-7 col-12 mb-5">
                <div class="contact-form">
                    <h5 class="title mb-4">
                        <trans oldtip="Get in Touch" newtip="Get in Touch">留言</trans>
                    </h5>
                    <form id="contact-form" action="assets/php/contact-mail.php" method="post">
                        <div class="row mb-n3">
                            <div class="col-md-6 col-12 mb-3"><input type="text" name="name" placeholder="你的名字">
                            </div>
                            <div class="col-md-6 col-12 mb-3"><input type="email" name="email" placeholder="你的邮箱"></div>
                            <div class="col-12 mb-3"><textarea name="message" placeholder="你的内容" rows="4"></textarea></div>
                            <div class="col-12 mb-3"><input class="btn btn-primary px-5" type="button" href="#" value="提交留言"></div>
                        </div>
                    </form>
                    <div class="form-messege"></div>
                </div>
            </div>
            <%--留言板 end--%>
        </div>
    </div>
</div>

<%@include file="../company/foot.jsp"%>
</body>
</html>