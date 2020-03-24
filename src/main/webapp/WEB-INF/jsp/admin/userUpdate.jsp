<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@include file="../admin/css.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>管理员后台修改用户</title>
</head>
<body data-logobg="color_8" data-sidebarbg="color_8">
<div class="lyear-layout-web">
    <div class="lyear-layout-container">
        <%@include file="../admin/head.jsp"%>
        <%@include file="../admin/left.jsp"%>
        <!--页面主要内容-->
        <main class="lyear-layout-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-toolbar clearfix">
                                <form class="pull-right search-bar" method="get" action="#!" role="form">
                                    <div class="input-group">
                                        <div class="input-group-btn">
                                            <input type="hidden" name="search_field" id="search-field" value="title">
                                            <button class="btn btn-default dropdown-toggle" id="search-btn"
                                                    data-toggle="dropdown" type="button" aria-haspopup="true" aria-expanded="false">搜索
                                            </button>
                                        </div>
                                        <input type="text" class="form-control" value="" name="keyword" href="" placeholder="请输入名称">
                                    </div>
                                </form>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>登录账号</th>
                                            <th>登录密码</th>
                                            <th>手机号</th>
                                            <th>邮箱</th>
                                            <th>真实姓名</th>
                                            <th>性别</th>
                                            <th>出生日期</th>
                                            <th>学历</th>
                                            <th>毕业院校</th>
                                            <th>所学专业</th>
                                            <th>简介</th>
                                            <th>掌握技能</th>
                                            <th>期望薪资</th>
                                            <th>状态</th>
                                            <th>注册时间</th>
                                            <th>操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <div id="tableAll" >
                                            <form id="userForm" action="${pageContext.request.contextPath }/admin/userSave" method="post" onsubmit="return submitForm();">
                                                <tr>
                                                    <td><input type="text" name="userId" value="${user.userId}"/></td>
                                                    <td><input type="text" name="userLoginName" value="${user.userLoginName}"/></td>
                                                    <td><input type="text" name="userLoginPassword" value="${user.userLoginPassword}"/></td>
                                                    <td><input type="text" name="userPhone" value="${user.userPhone}"/></td>
                                                    <td><input type="text" name="userEmail" value="${user.userEmail}"/></td>
                                                    <td><input type="text" name="userRealName" value="${user.userRealName}"/></td>
                                                    <td><input type="text" name="userSex" value="${user.userSex}"/></td>
                                                    <td><input type="text" name="userBirthday" value="${user.userBirthday}"/></td>
                                                    <td><input type="text" name="userEducation" value="${user.userEducation}"/></td>
                                                    <td><input type="text" name="userUniversity" value="${user.userUniversity}"/></td>
                                                    <td><input type="text" name="userMajor" value="${user.userMajor}"/></td>
                                                    <td><input type="text" name="userProfile" value="${user.userProfile}"/></td>
                                                    <td><input type="text" name="userTechnology" value="${user.userTechnology}"/></td>
                                                    <td><input type="text" name="userWantMoney" value="${user.userWantMoney}"/></td>
                                                    <td><input type="text" name="userState" value="${user.userState}"/></td>
                                                    <td><input type="date" name="userCreateTime" value="${user.userCreateTime}"/></td>
                                                    <td>
                                                        <div class="btn-group">
                                                            <a type="button" class="btn btn-xs btn-default" href="${pageContext.request.contextPath}/admin/user?userId=${user.userId}"
                                                               onclick="submitForm();" data-toggle="tooltip" data-original-title="保存">
                                                                <i class="mdi mdi-pencil"></i></a>
                                                            <a class="btn btn-xs btn-default" href="${pageContext.request.contextPath}/user/deleteByUserId?userId=${user.userId}"
                                                               onclick="return confirm('确定要删除吗？');" data-toggle="tooltip" data-original-title="删除">
                                                                <i class="mdi mdi-window-close"></i></a>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </form>
                                        </div>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!--End 页面主要内容-->
    </div>
</div>
<script type="text/javascript">
    function submitForm() {
        alert("保存成功");
        document.getElementById("userForm").submit();
    }
</script>
</body>
</html>