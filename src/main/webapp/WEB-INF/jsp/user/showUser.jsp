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
<%@include file="../user/head.jsp"%>

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

            <%--我的信息 start--%>
            <div class="col-lg-7 col-12 mb-5">
                <div class="contact-form">
                    <!-- 左1 Start -->
                    <div class="col-12">
                        <div class="blog blog-single">
                            <div class="content">
                                <h6 class="title"><img src="/images/${user.userCreateTime}" width="70px" height="70px">${user.userRealName}</h6>
                                <div class="desc">
                                    <div class="basic-info">
                                        <p class="mdi mdi-school">${user.userUniversity} / ${user.userEducation}
                                            / ${user.userMajor} / ${user.userSex} / ${user.userBirthday}</p>
                                        <span class="mdi mdi-cellphone">${user.userPhone}</span> <span
                                            class="mdi mdi-email-outline">${user.userEmail}</span>
                                    </div>
                                </div>
                                <hr class="divider_type_3 m_bottom_30">
                                <button class="btn btn-primary w-100" type="button" href="javascript:void(0)"
                                        onclick="updateUser('${sessionScope.currUser.userId}')">修改
                                </button>
                            </div>
                        </div>
                    </div>
                    <!-- 左1 End -->
                </div>
            </div>
            <%--留言板 end--%>
        </div>
    </div>
</div>

<%@include file="../user/foot.jsp"%>


</body>
<script type="text/javascript">
    function updateUser(userId) {
        var url = "${path}/user/updateResume?userId=" + userId;
        window.location.href = url;
    }
</script>
</html>