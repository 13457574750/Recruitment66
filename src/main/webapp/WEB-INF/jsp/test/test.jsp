<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <title>测试</title>
</head>
<body>
<%@include file="../user/head.jsp"%>

<!-- 首页图片 Start -->
<div class="page-heading-section section bg-parallax" data-bg-image="${path}/assets/images/bg/bg-1.jpg"
     data-overlay="50"></div>
<!-- 首页图片 End -->


<!-- 职位列表 Start -->
<div class="section section-padding">
    <div class="container">

            <div class="row mb-n5">

                <!-- 左边 Start -->
                <div class="col-lg-8 col-12 mb-5 pr-lg-5">

                    <!-- 工作列表 Start -->
                        <c:forEach items="${pageInfo.list}" var="testList">

                            <a class="testList-list">
                                <div class="salary-type col-auto order-sm-3">
                                    <img src="${path}/images/${testList.testName}" width="200px" height="180px">
                                    <span class="salary-range">${testList.testId}</span>
                                    <span class="salary-range">${testList.testName}</span>
                                    <span class="salary-range">${testList.testSex}</span>
                                </div>
                            </a>
                        </c:forEach>
                    <!-- 工作列表 End -->

                    <!-- 分页 Start -->
                    <ul class="pagination pagination-center mt-5">
                        <li class="page-item"><a class="page-link" href="${path}/test/test?page=${pageInfo.pageNum-1}&size=${pageInfo.pageSize}"><i class="fa fa-angle-left"></i></a></li>
                        <li class="page-item"><a class="page-link" href="${path}/test/test?page=1&size=${pageInfo.pageSize}">首页</a></li>

                       <c:forEach begin="1" end="4" var="pageNum">
                        <li class="page-item "><a class="page-link" href="${path}/test/test?page=${pageNum}&size=${pageInfo.pageSize}">${pageNum}</a></li>
                       </c:forEach>
                        <li class="page-item"><a class="page-link" href="${path}/test/test?page=${pageInfo.pages}&size=${pageInfo.pageSize}">尾页</a></li>
                        <li class="page-item"><a class="page-link" href="${path}/test/test?page=${pageInfo.pageNum+1}&size=${pageInfo.pageSize}"><i class="fa fa-angle-right"></i></a></li>
                    </ul>
                    <!-- 分页 End -->
                </div>
                <!-- 左边 End -->

                <form action="${path}/test/add" method="post" enctype="multipart/form-data">
                    <label>名字图片：</label><input type="file" name="file" accept="image/*"><br>
                    <label>性别：</label><input type="text" name="testSex"><br>
                    <input type="submit">
                </form>
            </div>
    </div>
</div>
<!-- 职位列表 End -->


<%@include file="../user/foot.jsp"%>
</body>
</html>