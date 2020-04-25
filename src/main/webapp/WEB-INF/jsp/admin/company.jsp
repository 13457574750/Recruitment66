<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@include file="../admin/css.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>留言管理</title>
</head>
<body data-logobg="color_8" data-sidebarbg="color_8">
<div class="lyear-layout-web">
    <div class="lyear-layout-container">
        <%@include file="../admin/head.jsp"%>
        <%@include file="../admin/left.jsp"%>
        <!--页面主要内容-->
        <main class="lyear-layout-content">
            <div class="container-flcompanyId">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <form class="pull-right search-bar" method="post" id="searchForm" action="${path}/admin/company">
                                <div class="card-toolbar clearfix">
                                    <div class="input-group">
                                        <div class="input-group-btn">
                                            <button class="btn btn-default dropdown-toggle" id="search-btn" onclick="search()"
                                                    data-toggle="dropdown" type="button">搜索
                                            </button>
                                        </div>
                                        <input type="text" class="form-control" name="companyName" placeholder="请输入需要搜索的公司名">
                                    </div>
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
                                                <th>注册时间</th>
                                                <th>操作</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <div id="tableAll">
                                                <c:forEach items="${pageInfo.list}" var="company">
                                                    <tr>
                                                        <td>${company.companyId}</td>
                                                        <td>${company.companyLoginName}</td>
                                                        <td>${company.companyLoginPassword}</td>
                                                        <td>${company.companyName}</td>
                                                        <td>${company.companyType}</td>
                                                        <td>${company.companyIndustry}</td>
                                                        <td>${company.companyProfile}</td>
                                                        <td>${company.companyAddress}</td>
                                                        <td>${company.companyWeb}</td>
                                                        <td>${company.companyPhone}</td>
                                                        <td>${company.companyEmail}</td>
                                                        <td>${company.companyNumber}</td>
                                                        <td>${company.companyOwner}</td>
                                                        <td>${company.companyRegisterCapital}</td>
                                                        <td>${company.companyCreateTime}</td>
                                                        <td>
                                                            <div class="btn-group">
                                                                <a class="btn btn-xs btn-default" href="${pageContext.request.contextPath}/admin/companyUpdate?companyId=${company.companyId}" onclick="return confirm('确定要修改吗？');"
                                                                   data-toggle="tooltip" data-original-title="编辑">
                                                                    <i class="mdi mdi-pencil"></i></a>
                                                                <a class="btn btn-xs btn-default" href="${pageContext.request.contextPath}/company/deleteCompany?companyId=${company.companyId}" onclick="return confirm('确定要删除吗？');"
                                                                   data-toggle="tooltip" data-original-title="删除">
                                                                    <i class="mdi mdi-window-close"></i></a>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </div>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- 分页 Start -->
                                    <ul class="pagination pagination-center mt-5">
                                        <li class="page-item"><a class="page-link"
                                                                 href="${path}/admin/company?page=${pageInfo.pageNum-1}&size=${pageInfo.pageSize}">
                                            <i class="mdi mdi-chevron-left"></i>
                                        </a></li>
                                        <c:forEach begin="1" end="4" var="pageNum">
                                            <li class="page-item "><a class="page-link"
                                                                      href="${path}/admin/company?page=${pageNum}&size=${pageInfo.pageSize}">${pageNum}</a>
                                            </li>
                                        </c:forEach>
                                        <li class="page-item"><a class="page-link"
                                                                 href="${path}/admin/company?page=${pageInfo.pageNum+1}&size=${pageInfo.pageSize}">
                                            <i class="mdi mdi-chevron-right"></i>
                                        </a></li>
                                    </ul>
                                    <!-- 分页 End -->
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!--End 页面主要内容-->
    </div>
</div>
</body>
<script type="text/javascript">
    function search() {
        $("#searchForm").submit();
    }
</script>
</html>
