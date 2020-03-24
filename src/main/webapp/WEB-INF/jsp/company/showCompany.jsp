<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <title>企业信息</title>
</head>
<body>
<%@include file="../company/head.jsp" %>

<!-- 首页图片 Start -->
<div class="page-heading-section section bg-parallax" data-bg-image="${path}/assets/images/bg/bg-1.jpg"
     data-overlay="50"></div>
<!-- 首页图片 End -->

<form id="companyForm" action="${pageContext.request.contextPath }/company/updateCompanySubmit?userId=${company.companyId}" method="post"
      onsubmit="return submitForm();">
    <td><input type="text" name="companyId" value="${company.companyId}"/></td>
    <td><input type="text" name="companyLoginName" value="${company.companyLoginName}"/></td>
    <td><input type="text" name="companyName" value="${company.companyName}"/></td>
    <td><input type="text" name="companyType" value="${company.companyType}"/></td>
    <td><input type="text" name="companyIndustry" value="${company.companyIndustry}"/></td>
    <td><input type="text" name="companyProfile" value="${company.companyProfile}"/></td>
    <td><input type="text" name="companyAddress" value="${company.companyAddress}"/></td>
    <td><input type="text" name="companyWeb" value="${company.companyWeb}"/></td>
    <td><input type="text" name="companyPhone" value="${company.companyPhone}"/></td>
    <td><input type="text" name="companyEmail" value="${company.companyEmail}"/></td>
    <td><input type="text" name="companyNumber" value="${company.companyNumber}"/></td>
    <td><input type="text" name="companyOwner" value="${company.companyOwner}"/></td>
    <td><input type="text" name="companyRegisterCapital" value="${company.companyRegisterCapital}"/></td>
    <td><input type="text" name="companyCreateTime" value="${company.companyCreateTime}"/></td>
    <h5><p>登录账号:${company.companyLoginName}</p></h5>
    <h5><p>登录密码:${company.companyLoginPassword}</p></h5>
    <div class="form-group">
        <label class="col-md-3 control-label" for="password">新密码</label>
        <div class="col-md-7">
            <input type="text" id="password" placeholder="请输入新密码..">
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-3 control-label" for="password2">确认密码</label>
        <div class="col-md-7">
            <input type="text" id="password2" name="companyLoginPassword" value="" placeholder="请确认新密码.." onkeyup="validate()">
        </div>
        <span id="tishi"></span>
    </div>
    <div class="form-group">
        <div class="col-md-9 col-md-offset-3">
            <button><a type="button"
                       href="${pageContext.request.contextPath}/company/updateCompanyPassword?companyId=${company.companyId}"
                       onclick="submitForm();">保存</a></button>
        </div>
    </div>
</form>
<!-- 简历 Start -->
<div class="section section-padding">
    <div class="container">
        <div class="row mb-n5" action="${pageContext.request.contextPath }/company/showCompany" method="post">
            <div class="col-lg-8 col-12 mb-5 pr-lg-5">
                <!--左边 Start -->
                <div class="blog-wrap row">

                    <!-- 左1 Start -->
                    <div class="col-12">
                        <div class="blog blog-single">
                            <div class="content">
                                <h6 class="title"><p class="mdi mdi-emoticon-excited">${company.companyName}</h6>
                                <div class="desc">
                                    <div class="basic-info">
                                        <p class="mdi mdi-school">${company.companyId} / ${company.userEducation}
                                            / ${company.userMajor} / ${company.userSex} / ${company.userBirthday}</p>
                                        <span class="mdi mdi-cellphone">${company.userPhone}</span> <span
                                            class="mdi mdi-email-outline">${company.userEmail}</span>
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
                                            <p>${company.userProfile}</p>
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
                                        <strong class="mdi mdi-school">${company.userUniversity}</strong>
                                        <p>${company.userEducation} / ${company.userMajor}</p>
                                    </div>
                                </div>
                                <hr class="divider_type_3 m_bottom_30">
                            </div>
                        </div>
                    </div>
                    <!-- 左3 End -->
                </div>
                <!--  左边 End -->
                <button  type="button" href="javascript:void(0)" onclick="updateUser('${company.companyId}')">修改</button>
            </div>

            <!-- 右边 Start -->
            <div class="col-lg-4 col-12 mb-5">
                <div class="sidebar-wrap">
                    <!-- 右1 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <h6 class="title"><p class="mdi mdi-emoticon-excited">期望薪资</h6>
                            <p>${company.userWantMoney}</p>
                        </div>
                    </div>
                    <!-- 右1 End -->

                    <!-- 右2 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <h6 class="title"><p class="mdi mdi-emoticon-excited">求职状态</h6>
                            <p>${company.userState}</p>
                        </div>
                    </div>
                    <!-- 右2 End -->

                    <!-- 右3 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <h6 class="title"><p class="mdi mdi-emoticon-excited">掌握技能</h6>
                            <p>${company.userTechnology}</p>
                        </div>
                    </div>
                    <!-- 右3 End -->

                    <!-- 右4 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <h6 class="title"><p class="mdi mdi-emoticon-excited">注册时间</h6>
                            <p>${company.companyCreateTime}</p>
                        </div>
                    </div>
                    <!-- 右4 End -->
                </div>
            </div>
            <!-- 右边 End -->


        </div>
    </div>
</div>
<!-- 简历 End -->
<%@include file="../company/foot.jsp" %>

<script type="text/javascript">
    function updateCompany(companyId) {
        var url = "${path}/company/updateCompany?companyId=" + companyId;
        window.location.href = url;
    }
</script>
</body>
</html>