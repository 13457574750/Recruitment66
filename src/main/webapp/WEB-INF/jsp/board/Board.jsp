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
            <div class="container-flcompanyId">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <form class="pull-right search-bar" method="post" id="searchForm" action="${path}/board/Board">
                            <div class="card-toolbar clearfix">
                                    <div class="input-group">
                                        <div class="input-group-btn">
                                            <button class="btn btn-default dropdown-toggle" id="search-btn" onclick="search()"
                                                    data-toggle="dropdown" type="button">搜索
                                            </button>
                                        </div>
                                        <input type="text" class="form-control" name="boardContent" placeholder="请输入需要搜索的留言内容">
                                    </div>
                            </div>
                            <div class="card-body">

                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                        <tr>
                                            <th>留言ID</th>
                                            <th>留言者</th>
                                            <th>留言内容</th>
                                            <th>留言时间</th>
                                            <th>操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <div id="tableAll">
                                            <c:forEach items="${pageInfo.list}" var="board">
                                                <tr>
                                                    <td>${board.boardId}</td>
                                                    <td>${board.boardName}</td>
                                                    <td>${board.boardContent}</td>
                                                    <td>${board.boardTime}</td>
                                                    <td>
                                                        <div class="btn-group">
                                                            <a class="btn btn-xs btn-default" href="${pageContext.request.contextPath}/board/deleteBoard?boardId=${board.boardId}" onclick="return confirm('确定要删除吗？');"
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
                                                             href="${path}/board/Board?page=${pageInfo.pageNum-1}&size=${pageInfo.pageSize}">
                                        <i class="mdi mdi-chevron-left"></i>
                                    </a></li>
                                    <c:forEach begin="1" end="4" var="pageNum">
                                        <li class="page-item "><a class="page-link"
                                                                  href="${path}/board/Board?page=${pageNum}&size=${pageInfo.pageSize}">${pageNum}</a>
                                        </li>
                                    </c:forEach>
                                    <li class="page-item"><a class="page-link"
                                                             href="${path}/board/Board?page=${pageInfo.pageNum+1}&size=${pageInfo.pageSize}">
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