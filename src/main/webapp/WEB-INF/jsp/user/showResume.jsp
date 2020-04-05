<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <title>个人简历</title>
</head>
<body>
<%@include file="../user/head.jsp" %>

<!-- 首页图片 Start -->
<div class="page-heading-section section bg-parallax" data-bg-image="${path}/assets/images/bg/bg-1.jpg"
     data-overlay="50"></div>
<!-- 首页图片 End -->

<!-- 简历 Start -->
<div class="section section-padding">
    <div class="container">
        <div class="row mb-n5" action="${pageContext.request.contextPath }/user/showResume" method="post">

            <div class="col-lg-8 col-12 mb-5 pr-lg-5">
                <!--左边 Start -->
                <div class="blog-wrap row">

                    <!-- 左1 Start -->
                    <div class="col-12">
                        <div class="blog blog-single">
                            <div class="content">
                                <h6 class="title"><p class="mdi mdi-emoticon-excited">${user.userRealName}</h6>
                                <div class="desc">
                                    <div class="basic-info">
                                        <p class="mdi mdi-school">${user.userUniversity} / ${user.userEducation}
                                            / ${user.userMajor} / ${user.userSex} / ${user.userBirthday}</p>
                                        <span class="mdi mdi-cellphone">${user.userPhone}</span> <span
                                            class="mdi mdi-email-outline">${user.userEmail}</span>
                                    </div>
                                </div>
                                <hr class="divider_type_3 m_bottom_30">
                            </div>
                        </div>
                    </div>
                    <!-- 左1 End -->

                    <!-- 左2 Start -->
                    <div class="col-12">
                        <div class="blog blog-single">
                            <div class="content">
                                <h6 class="title"><p class="mdi mdi-emoticon-excited">个人优势</h6>
                                <div class="desc">
                                    <div class="mr-template per" id="perAbility">
                                        <div class="per-self_des">
                                            <p>${user.userProfile}</p>
                                        </div>
                                    </div>
                                </div>
                                <hr class="divider_type_3 m_bottom_30">
                            </div>
                        </div>
                    </div>
                    <!-- 左2 End -->

                    <!-- 左3 Start -->
                    <div class="col-12">
                        <div class="blog blog-single">
                            <div class="content">
                                <h6 class="title"><p class="mdi mdi-emoticon-excited">教育经历</h6>
                                <div class="mr-template edu-exp" id="eduExp">
                                    <div class="mr-template_title">
                                    </div>
                                    <div>
                                        <strong class="mdi mdi-school">${user.userUniversity}</strong>
                                        <p>${user.userEducation} / ${user.userMajor}</p>
                                    </div>
                                </div>
                                <hr class="divider_type_3 m_bottom_30">
                            </div>
                        </div>
                    </div>
                    <!-- 左3 End -->
                </div>
                <!--  左边 End -->
            </div>

            <!-- 右边 Start -->
            <div class="col-lg-4 col-12 mb-5">
                <div class="sidebar-wrap">
                    <!-- 右1 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <h6 class="title"><p class="mdi mdi-emoticon-excited">期望薪资</h6>
                            <p>${user.userWantMoney}</p>
                        </div>
                    </div>
                    <!-- 右1 End -->

                    <!-- 右2 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <h6 class="title"><p class="mdi mdi-emoticon-excited">求职状态</h6>
                            <p>${user.userState}</p>
                        </div>
                    </div>
                    <!-- 右2 End -->

                    <!-- 右3 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <h6 class="title"><p class="mdi mdi-emoticon-excited">掌握技能</h6>
                            <p>${user.userTechnology}</p>
                        </div>
                    </div>
                    <!-- 右3 End -->

                    <!-- 右4 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <h6 class="title"><p class="mdi mdi-emoticon-excited">注册时间</h6>
                            <p>${user.userCreateTime}</p>
                        </div>
                    </div>
                    <!-- 右4 End -->
                    <!-- 右5 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <button class="btn btn-primary w-100" type="button" href="javascript:void(0)"
                                    onclick="updateUser('${sessionScope.currUser.userId}')">修改
                            </button>
                        </div>
                    </div>
                    <!-- 右5 End -->
                </div>
            </div>
            <!-- 右边 End -->


        </div>
    </div>
</div>
<!-- 简历 End -->
<%@include file="../user/foot.jsp" %>


</body>
<script type="text/javascript">
    function updateUser(userId) {
        var url = "${path}/user/updateResume?userId=" + userId;
        window.location.href = url;
    }
</script>
</html>