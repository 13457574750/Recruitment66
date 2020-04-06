<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <title>修改密码</title>
</head>
<body>
<%@include file="../company/head.jsp" %>

<!-- 首页图片 Start -->
<div class="page-heading-section section bg-parallax" data-bg-image="${path}/assets/images/bg/bg-1.jpg"
     data-overlay="50"></div>
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
                            <span><trans oldtip="keller@email.com"
                                         newtip="keller@email.com">keller@email.com</trans></span>
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

            <%--修改密码 start--%>
            <div class="col-lg-7 col-12 mb-5">
                <div class="contact-form">

                    <form id="companyForm" action="${pageContext.request.contextPath }/company/updateCompanySubmit?userId=${company.companyId}" method="post"
                          onsubmit="return submitForm();">
                        <td><input type="hidden" name="companyId" value="${company.companyId}"/></td>
                        <td><input type="hidden" name="companyLoginName" value="${company.companyLoginName}"/></td>
                        <td><input type="hidden" name="companyName" value="${company.companyName}"/></td>
                        <td><input type="hidden" name="companyType" value="${company.companyType}"/></td>
                        <td><input type="hidden" name="companyIndustry" value="${company.companyIndustry}"/></td>
                        <td><input type="hidden" name="companyProfile" value="${company.companyProfile}"/></td>
                        <td><input type="hidden" name="companyAddress" value="${company.companyAddress}"/></td>
                        <td><input type="hidden" name="companyWeb" value="${company.companyWeb}"/></td>
                        <td><input type="hidden" name="companyPhone" value="${company.companyPhone}"/></td>
                        <td><input type="hidden" name="companyEmail" value="${company.companyEmail}"/></td>
                        <td><input type="hidden" name="companyNumber" value="${company.companyNumber}"/></td>
                        <td><input type="hidden" name="companyOwner" value="${company.companyOwner}"/></td>
                        <td><input type="hidden" name="companyRegisterCapital" value="${company.companyRegisterCapital}"/></td>
                        <td><input type="hidden" name="companyCreateTime" value="${company.companyCreateTime}"/></td>
                        <h5><p>登录账号:${company.companyLoginName}</p></h5>
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
                    <div class="form-messege"></div>
                </div>
            </div>
            <%--修改密码 end--%>
        </div>
    </div>
</div>

<%@include file="../company/foot.jsp" %>


</body>
<script type="text/javascript">
    function submitForm() {
        alert("保存成功");
        document.getElementById("companyForm").submit();
    }

    function validate() {
        var password = document.getElementById("password").value;
        var password2 = document.getElementById("password2").value;
        <!-- 对比两次输入的密码 -->
        if (password == password2) {
            document.getElementById("tishi").innerHTML = "<font color='green'>两次密码相同</font>";
            document.getElementById("companyForm").disabled = false;
        } else {
            document.getElementById("tishi").innerHTML = "<font color='red'>两次不密码相同</font>";
            document.getElementById("companyForm").disabled = true;
        }
    }
</script>
</html>