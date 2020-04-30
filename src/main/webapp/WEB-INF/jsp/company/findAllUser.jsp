<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <title>求职者列表</title>
</head>
<body>
<%@include file="../company/head.jsp"%>

<!-- 首页图片 Start -->
<div class="page-heading-section section bg-parallax" data-bg-image="${path}/assets/images/bg/bg-1.jpg"
     data-overlay="50"></div>
<!-- 首页图片 End -->

<!-- 职位列表 Start -->
<div class="section section-padding">
    <div class="container">
        <form action="${path}/company/findAllUser" id="searchForm" method="post">

            <div class="row mb-n5">

                <!-- 左边 Start -->
                <div class="col-lg-8 col-12 mb-5 pr-lg-5">

                    <!-- 工作列表 Start -->
                    <div class="job-list-wrap">
                        <c:forEach items="${pageInfoUser.list}" var="user">

                            <a class="job-list" onclick="showUser('${user.userRealName}')">
                                <div class="company-logo col-auto">
                                    <img src="${path}/images/${user.userCreateTime}" width="70px" height="70px">
                                </div>
                                <div class="salary-type col-auto order-sm-3">
                                    <span class="salary-range">$${user.userWantMoney}</span>
                                    <span class="badge badge-success"><trans>${user.userState}</trans></span>
                                </div>
                                <div class="content col">
                                    <ul class="meta">
                                        <li>
                                            <h6 class="title">
                                                <trans>${user.userRealName}</trans>
                                            </h6>
                                        </li>
                                    </ul>
                                    <ul class="meta">
                                        <li><strong class="text-primary"><i class="mdi mdi-account-card-details"></i>
                                            <trans>${user.userUniversity}</trans>
                                        </strong></li>
                                        <li><strong class="text-primary"><i class="fa fa-map-marker"></i>
                                            <trans>${user.userEducation}</trans>
                                        </strong></li>
                                        <li><strong class="text-primary"><i class="mdi mdi-pen"></i>
                                            <trans>${user.userMajor}</trans>
                                        </strong></li>
                                        <li><strong class="text-primary"><i class="mdi mdi-library"></i>
                                            <trans>${user.userSex}</trans>
                                        </strong></li>
                                    </ul>
                                </div>
                            </a>
                        </c:forEach>
                    </div>
                    <!-- 工作列表 End -->

                    <!-- 分页 Start -->
                    <ul class="pagination pagination-center mt-5">
                        <li class="page-item"><a class="page-link" href="${path}/company/findAllUser?page=${pageInfoUser.pageNum-1}&size=${pageInfoUser.pageSize}"><i class="fa fa-angle-left"></i></a></li>
                        <c:forEach begin="1" end="4" var="pageNum">
                            <li class="page-item "><a class="page-link" href="${path}/company/findAllUser?page=${pageNum}&size=${pageInfoUser.pageSize}">${pageNum}</a></li>
                        </c:forEach>
                        <li class="page-item"><a class="page-link" href="${path}/company/findAllUser?page=${pageInfoUser.pageNum+1}&size=${pageInfoUser.pageSize}"><i class="fa fa-angle-right"></i></a></li>
                    </ul>
                    <!-- 分页 End -->
                </div>
                <!-- 左边 End -->


                <!-- 右边 Start -->
                <div class="col-lg-4 col-12 mb-5">

                    <div class="sidebar-wrap">
                        <!-- 右1 Start -->
                        <div class="sidebar-widget">
                            <div class="inner">
                                <h6 class="title">
                                    <trans>搜索精英</trans>
                                </h6>
                                <form action="#">
                                    <input type="text" name="userRealName" placeholder="请输入要搜索的求职者真名">
                                </form>
                            </div>
                        </div>
                        <!-- 右1 End -->
                    </div>
                </div>
                <!-- 右边 End -->
            </div>
        </form>
    </div>
</div>
<!-- 职位列表 End -->


<%@include file="../company/foot.jsp"%>
</body>
<script type="text/javascript">
    function showUser(userRealName){
        var url="${path}/user/findUserByUserRealName?userRealName=" + userRealName;
        window.location.href=url;
    }

    function search() {
        $("#searchForm").submit();
    }
</script>
</html>