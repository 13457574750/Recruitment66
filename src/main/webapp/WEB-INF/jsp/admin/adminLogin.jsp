<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@include file="../admin/css.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>登录页面</title>
</head>
<body data-logobg="color_8" data-sidebarbg="color_8">
<div class="row lyear-wrapper">
    <div class="lyear-login">
        <div class="login-center">
            <div class="login-header text-center"><a href="${path}/admin/adminIndex">
                <img alt="light year admin" src="${path}/images/logo-sidebar.png"></a></div>
                <form method="post">
                    <div class="form-group has-feedback feedback-left">
                        <input type="text" placeholder="请输入您的用户名" class="form-control" name="adminLoginName"
                               id="adminLoginName" value="${admin.adminLoginName}"/>
                        <span class="mdi mdi-account form-control-feedback" aria-hidden="true"></span>
                    </div>
                    <div class="form-group has-feedback feedback-left">
                        <input type="password" placeholder="请输入密码" class="form-control" id="adminLoginPassword"
                               name="adminLoginPassword" value="${admin.adminLoginPassword}"/>
                        <span class="mdi mdi-lock form-control-feedback" aria-hidden="true"></span>
                    </div>
                    <div class="form-group">
                        <button class="btn btn-block btn-primary" type="submit" id="submitBtn" onclick="CheckForm()">
                            立即登录
                        </button>
                    </div>
                </form>
            <hr>
            <footer class="col-sm-12 text-center"><p class="m-b-0">小羊会跳舞</p></footer>
        </div>
    </div>
</div>

<script type="text/javascript">
    function CheckForm(){
        var adminLoginName=document.getElementById("adminLoginName").value;
        var adminLoginPassword=document.getElementById("adminLoginPassword").value;
        if(adminLoginName.length==0){
            alert("请输入管理员名称");
            return false;
        }else
        {
            var pattern = /^[0-9a-zA-Z]+$/;
            if(!pattern.test(document.getElementById("adminLoginName").value))
            {
                alert('\n用户名只可输入数字或者字母!');
                return false;
            }
        }
        if(adminLoginPassword.length==0){
            alert("请输入管理员密码");
            return false;
        }
        $.ajax({
            url:"${pageContext.request.contextPath}/admin/toAdminLogin",
            data:{
                adminLoginName:adminLoginName,
                adminLoginPassword:adminLoginPassword
            },//给服务器的参数
            type:"POST",
            dataType:"json",
            success:function(data){
                if("success"==data.str){
                    alert("登录成功");
                    var url="${pageContext.request.contextPath}/admin/adminIndex";
                    window.location.href=url;
                }else{
                    alert("登录失败,请输入正确的用户名和密码");
                }
            }
        });
    }
</script>
</body>
</html>
