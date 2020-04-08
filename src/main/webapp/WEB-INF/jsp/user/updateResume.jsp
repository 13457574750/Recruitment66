<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <title>修改个人简历</title>
</head>
<body>
<%@include file="../user/head.jsp" %>

<!-- 首页图片 Start -->
<div class="page-heading-section section bg-parallax" data-bg-image="${path}/assets/images/bg/bg-1.jpg"
     data-overlay="50">

</div>
<!-- 首页图片 End -->

<!-- 简历 Start -->
<div class="section section-padding">
    <form id="userForm"
          action="${pageContext.request.contextPath }/user/saveResume?userId=${sessionScope.currUser.userId}"
          method="post" onsubmit="return submitForm();" enctype="multipart/form-data">
        <div class="container">

            <div class="row mb-n5">
                <div class="col-lg-8 col-12 mb-5 pr-lg-5">
                    <!--左边 Start -->
                    <div class="blog-wrap row">
                        <td><input type="hidden" name="userId" value="${user.userId}"/></td>
                        <td><input type="hidden" name="userLoginName" value="${user.userLoginName}"/></td>
                        <td><input type="hidden" name="userLoginPassword" value="${user.userLoginPassword}"/></td>
                        <td><input type="hidden" name="userRealName" value="${user.userRealName}"/></td>

                        <!-- 左1 Start -->
                        <div class="col-12">
                            <div class="blog blog-single">
                                <div class="content">
                                    <h6 class="title"><p class="mdi mdi-emoticon-excited">${user.userRealName}
                                        </h6>
                                    <div class="desc">
                                        <div class="basic-info">
                                            <p class="mdi mdi-school">学校名称
                                                <input type="text" name="userUniversity" value="${user.userUniversity}">

                                                <div class="col-xs-12">
                                            <p class="mdi mdi-school">学历
                                                <select class="form-control" id="example-select" name="userEducation"
                                                        size="1">
                                                    <option value="${user.userEducation}">${user.userEducation}</option>
                                                    <option value="专科">专科</option>
                                                    <option value="本科">本科</option>
                                                    <option value="硕士">硕士</option>
                                                    <option value="博士">博士</option>
                                                    <option value="其他">其他</option>
                                                </select>
                                        </div>
                                        <p></p>
                                        <div class="col-xs-12">
                                            <p class="mdi mdi-school">专业名称
                                                <select class="form-control" id="example-select2" name="userMajor"
                                                        size="1">
                                                    <option value="${user.userMajor}">${user.userMajor}</option>
                                                    <option value="软件工程">软件工程</option>
                                                    <option value="通信工程">通信工程</option>
                                                    <option value="网络工程">网络工程</option>
                                                    <option value="计算机专业">计算机专业</option>
                                                    <option value="其他">其他</option>
                                                </select>
                                        </div>
                                        <p></p>
                                        <div class="col-xs-12">
                                            <p class="mdi mdi-school">性别
                                                <select class="form-control" id="example-select3" name="userSex"
                                                        size="1">
                                                    <option value="${user.userSex}">${user.userSex}</option>
                                                    <option value="男">男</option>
                                                    <option value="女">女</option>
                                                </select>
                                        </div>
                                    </div>
                                    <p></p>
                                    <p class="mdi mdi-school">出生日期
                                        <input class="form-control" type="date" name="userBirthday"
                                               value="${user.userBirthday}">
                                    <p class="mdi mdi-cellphone">手机号码
                                        <input type="text" name="userPhone" value="${user.userPhone}">
                                    <p class="mdi mdi-email-outline">联系邮箱
                                        <input id="userEmail" type="text" name="userEmail" value="${user.userEmail}">
                                </div>
                            </div>
                            <hr class="divider_type_3 m_bottom_30">
                        </div>
                        <!-- 左1 End -->

                        <!-- 左2 Start -->
                        <div class="col-12">
                            <div class="blog blog-single">
                                <div class="content">
                                    <h6 class="title"><p class="mdi mdi-emoticon-excited">个人优势</h6>
                                    <p><input type="text" name="userProfile" value="${user.userProfile}"></p>
                                </div>
                            </div>
                            <hr class="divider_type_3 m_bottom_30">
                        </div>

                        <!-- 左2 End -->

                    </div>
                    <!--  左边 End -->
                </div>
            </div>

            <!-- 右边 Start -->
            <div class="col-lg-4 col-12 mb-5">
                <div class="sidebar-wrap">
                    <!-- 右1 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <h6 class="title"><p class="mdi mdi-emoticon-excited">期望薪资</h6>
                            <p><input type="text" name="userWantMoney" value="${user.userWantMoney}"></p>
                        </div>
                    </div>
                    <!-- 右1 End -->
                    <!-- 右2 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <h6 class="title"><p class="mdi mdi-emoticon-excited">求职状态</h6>
                            <p><input type="text" name="userState" value="${user.userState}"></p>
                        </div>
                    </div>
                    <!-- 右2 End -->
                    <!-- 右3 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <h6 class="title"><p class="mdi mdi-emoticon-excited">掌握技能</h6>
                            <p><input type="text" name="userTechnology" value="${user.userTechnology}"></p>
                        </div>
                    </div>
                    <!-- 右3 End -->
                    <!-- 右4 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <h6 class="title"><p class="mdi mdi-emoticon-excited">注册时间</h6>
                            <p><input class="form-control" type="file" name="file" accept="image/*"></p>
                        </div>
                    </div>
                    <!-- 右4 End -->
                    <!-- 右5 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <button class="btn btn-primary w-100"><a type="button"
                                       href="${pageContext.request.contextPath}/user/showResume?userId=${user.userId}"
                                       onclick="submitForm();">保存</a></button>
                        </div>
                    </div>
                    <!-- 右5 End -->
                </div>
            </div>
            <!-- 右边 End -->


        </div>
    </form>
</div>

<%@include file="../user/foot.jsp" %>


</body>
<script type="text/javascript">
    function submitForm() {
        alert("保存成功");
        document.getElementById("userForm").submit();

    }
</script>
</html>