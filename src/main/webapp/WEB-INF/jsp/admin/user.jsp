<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@include file="../admin/css.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>用户管理</title>
</head>
<body data-logobg="color_8" data-sidebarbg="color_8">
<div class="lyear-layout-web">
    <div class="lyear-layout-container">
        <%@include file="../admin/head.jsp" %>
        <%@include file="../admin/left.jsp" %>
        <!--页面主要内容-->
        <main class="lyear-layout-content">
            <div class="container-fluserId">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <form class="pull-right search-bar" method="post" id="searchForm"
                                  action="${path}/admin/user">
                                <div class="card-toolbar clearfix">
                                    <div class="input-group">
                                        <div class="input-group-btn">
                                            <button class="btn btn-default dropdown-toggle" id="search-btn"
                                                    onclick="search()"
                                                    data-toggle="dropdown" type="button">搜索
                                            </button>
                                        </div>
                                        <input type="text" class="form-control" name="userRealName"
                                               placeholder="请输入需要搜索的用户真名">
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
                                                <th>头像</th>
                                                <th>操作</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <div id="tableAll">
                                                <c:forEach items="${pageInfoUser.list}" var="user">
                                                    <tr>
                                                        <td>${user.userId}</td>
                                                        <td>${user.userLoginName}</td>
                                                        <td>${user.userLoginPassword}</td>
                                                        <td>${user.userPhone}</td>
                                                        <td>${user.userEmail}</td>
                                                        <td>${user.userRealName}</td>
                                                        <td>${user.userSex}</td>
                                                        <td>${user.userBirthday}</td>
                                                        <td>${user.userEducation}</td>
                                                        <td>${user.userUniversity}</td>
                                                        <td>${user.userMajor}</td>
                                                        <td>${user.userProfile}</td>
                                                        <td>${user.userTechnology}</td>
                                                        <td>${user.userWantMoney}</td>
                                                        <td>${user.userState}</td>
                                                        <td>${user.userCreateTime}</td>
                                                        <td>
                                                            <div class="btn-group">
                                                                <a class="btn btn-xs btn-default"
                                                                   href="${pageContext.request.contextPath}/admin/userUpdate?userId=${user.userId}"
                                                                   onclick="return confirm('确定要修改吗？');"
                                                                   data-toggle="tooltip" data-original-title="编辑">
                                                                    <i class="mdi mdi-pencil"></i></a>
                                                                <a class="btn btn-xs btn-default"
                                                                   href="${pageContext.request.contextPath}/user/deleteByUserId?userId=${user.userId}"
                                                                   onclick="return confirm('确定要删除吗？');"
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
                                                                 href="${path}/admin/user?page=${pageInfoUser.pageNum-1}&size=${pageInfoUser.pageSize}">
                                            <i class="mdi mdi-chevron-left"></i>
                                        </a></li>
                                        <c:forEach begin="1" end="4" var="pageNum">
                                            <li class="page-item "><a class="page-link"
                                                                      href="${path}/admin/user?page=${pageNum}&size=${pageInfoUser.pageSize}">${pageNum}</a>
                                            </li>
                                        </c:forEach>
                                        <li class="page-item"><a class="page-link"
                                                                 href="${path}/admin/user?page=${pageInfoUser.pageNum+1}&size=${pageInfoUser.pageSize}">
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