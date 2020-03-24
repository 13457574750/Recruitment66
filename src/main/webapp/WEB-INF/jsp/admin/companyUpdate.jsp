<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@include file="../admin/css.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>管理员后台修改企业</title>
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
                                            <th>公司名称</th>
                                            <th>所属类型</th>
                                            <th>所属行业</th>
                                            <th>简介及经营范围</th>
                                            <th>公司地址</th>
                                            <th>公司网址</th>
                                            <th>公司电话</th>
                                            <th>公司邮箱</th>
                                            <th>公司人数</th>
                                            <th>所有人</th>
                                            <th>注册资本</th>
                                            <th>图片</th>
                                            <th>操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <div id="tableAll" >
                                            <form id="companyForm" action="${pageContext.request.contextPath }/admin/companySave" method="post" onsubmit="return submitForm();">
                                                <tr>
                                                    <td><input type="text" readonly="readonly" name="companyId" value="${company.companyId}"/></td>
                                                    <td><input type="text" name="companyLoginName" value="${company.companyLoginName}"/></td>
                                                    <td><input type="text" name="companyLoginPassword" value="${company.companyLoginPassword}"/></td>
                                                    <td><input type="text" name="companyName" value="${company.companyName}"/></td>
                                                    <td><input type="text" name="companyType" value="${company.companyType}"/></td>
                                                    <td><input type="text" name="companyIndustry" value="${company.companyIndustry}"/></td>
                                                    <td><input type="text" name="companyProfile" value="${company.companyProfile}"/></td>
                                                    <td><input type="text" name="companyAddress" value="${company.companyAddress}"/></td>
                                                    <td><input type="text" name="companyWeb" value="${company.companyWeb}"/></td>
                                                    <td><input type="text" name="companyPhone" value="${company.companyPhone}"/></td>
                                                    <td><input type="text" name="companyEmail" value="${company.companyEmail}"/></td>
                                                    <td><input type="text" name="companyProfile" value="${company.companyNumber}"/></td>
                                                    <td><input type="text" name="companyNumber" value="${company.companyOwner}"/></td>
                                                    <td><input type="text" name="companyRegisterCapital" value="${company.companyRegisterCapital}"/></td>
                                                    <td><input type="file" name="companyCreateTime" value="${company.companyCreateTime}"/></td>
                                                    <td>
                                                        <div class="btn-group">
                                                            <a type="button" class="btn btn-xs btn-default" href="${pageContext.request.contextPath}/admin/company?companyId=${company.companyId}"
                                                               onclick="submitForm();" data-toggle="tooltip" data-original-title="保存">
                                                                <i class="mdi mdi-pencil"></i></a>
                                                            <a class="btn btn-xs btn-default" href="${pageContext.request.contextPath}/company/deleteCompany?companyId=${company.companyId}"
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
        document.getElementById("companyForm").submit();
    }
</script>
</body>
</html>