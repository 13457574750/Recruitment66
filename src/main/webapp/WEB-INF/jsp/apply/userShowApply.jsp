<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="${path}/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="${path}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${path}/js/bootstrap.js"></script>
</head>
<body>
<input type="hidden">
<div id="tableAll">
    <table class="table table-hover table-bordered" border="1">
        <tr class="info">
            <h3>投递记录</h3>
        </tr>
        <tr>
            <th>职位名称</th>
            <th>工作地址</th>
            <th>薪资</th>
            <th>学历要求</th>
            <th>公司名称</th>
            <th>公司ID</th>
            <th>投递时间</th>
        </tr>
        <c:forEach items="${applyList_}" var="apply">
            <tr class="table table-hover">
                <td>${apply.jobName }</td>
                <td>${apply.jobAddress }</td>
                <td>${apply.jobSalary}</td>
                <td>${apply.jobEducation}</td>
                <td>${apply.companyName}</td>
                <td>${apply.companyId}</td>
                <td><fmt:formatDate value="${apply.jobReleaseTime}" pattern="yyyy-MM-dd"/></td>
                <td>
                    <a href="${pageContext.request.contextPath }/apply/deleteById?applyId=${apply.applyId }"
                       class="btn btn-default" id="del">删除</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $("#del").click(function () {
            return confirm("确定删除吗？");
        });
    });
</script>
</body>

</html>