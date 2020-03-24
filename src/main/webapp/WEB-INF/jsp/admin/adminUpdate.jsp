<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@include file="../admin/css.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>管理员后台企业</title>
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
                                        <tbody>
                                        <div id="tableAll" >
                                            <form id="adminForm" action="${pageContext.request.contextPath }/admin/adminSave" method="post" onsubmit="return submitForm();">
                                                <input type="hidden" name="adminId" value="${admin.adminId}"/>
                                                <input type="hidden" name="adminLoginName" value="${admin.adminLoginName}"/>
                                                <div class="form-group">
                                                    <label class="col-md-3 control-label" for="password">新密码</label>
                                                    <div class="col-md-7">
                                                        <input class="form-control" type="text" id="password" placeholder="请输入新密码..">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-3 control-label" for="password2">确认密码</label>
                                                    <div class="col-md-7">
                                                        <input class="form-control" type="text" id="password2" name="adminLoginPassword" placeholder="请确认新密码.."onkeyup="validate()" >
                                                    </div><span id="tishi"></span>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-9 col-md-offset-3">
                                                        <a type="button" class="btn btn-pink" href="${pageContext.request.contextPath}/admin/admin?adminId=${admin.adminId}"
                                                           onclick="submitForm();" data-toggle="tooltip">保存</a>
                                                    </div>
                                                </div>
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
        document.getElementById("adminForm").submit();
    }
    function validate() {
        var password = document.getElementById("password").value;
        var password2 = document.getElementById("password2").value;
        <!-- 对比两次输入的密码 -->
        if(password == password2)
        {
            document.getElementById("tishi").innerHTML="<font color='green'>两次密码相同</font>";
            document.getElementById("adminForm").disabled = false;
        }
        else {
            document.getElementById("tishi").innerHTML="<font color='red'>两次不密码相同</font>";
            document.getElementById("adminForm").disabled = true;
        }
    }
</script>
</body>
</html>