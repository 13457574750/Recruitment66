<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <title>投递箱</title>
</head>
<body>
<%@include file="../user/head.jsp" %>
<!-- 首页图片 Start -->
<div class="page-heading-section section bg-parallax" data-bg-image="${path}/assets/images/bg/bg-1.jpg"
     data-overlay="50"></div>
<!-- 首页图片 End -->

<!-- 主体内容 Start -->
<div class="section section-padding">
    <div class="container">
        <div class="row mb-n5">

            <!-- 左边 Start -->
            <div class="col-lg-8 col-12 mb-5 pr-lg-5">
                <c:forEach items="${pageInfo.list}" var="favoritesList">

                    <div class="job-list-details">
                        <div class="job-details-head row mx-0">
                            <div class="company-logo col-auto">
                                <a onclick="show('${favoritesList.job.companyId}','${favoritesList.companyName}','${favoritesList.companyCreateTime}','${favoritesList.jobId}',
                                        '${favoritesList.jobName}','${favoritesList.jobAddress}','${favoritesList.jobSalary}','${favoritesList.jobEr}','${favoritesList.jobEducation}',
                                        '${favoritesList.jobReleaseTime}','${favoritesList.jobType}','${sessionScope.currUser.userId}','${sessionScope.currUser.userRealName}')">
                                    <img src="${path}/assets/images/companies/company-1.png" alt="Company Logo"></a>
                            </div>
                            <div class="salary-type col-auto order-sm-3">
                                <span class="salary-range">$${favoritesList.jobSalary}</span>
                                <span class="badge badge-success"><trans>${favoritesList.jobType}</trans></span>
                            </div>
                            <div class="salary-type col-auto order-sm-3">
                            <span class="badge badge-danger"><trans><a
                                    href="${path}/favorites/deleteFavorites?favoriteId=${favoritesList.favoriteId}&userId=${sessionScope.currUser.userId}"
                                    onclick="return confirm('确定要取消吗？');">取消收藏</a></trans></span>
                            </div>
                            <div class="content col">
                                <ul class="meta">
                                    <li>
                                        <h6 class="title">
                                            <trans>${favoritesList.jobName}</trans>
                                        </h6>
                                    </li>
                                    <li><strong class="text-primary"><i class="mdi mdi-alarm-multiple"></i>
                                        <trans>发布时间：${favoritesList.jobReleaseTime}</trans>
                                    </strong></li>
                                </ul>
                                <ul class="meta">
                                    <li><strong class="text-primary"><i class="mdi mdi-account-card-details"></i>
                                        <trans>${favoritesList.companyName}</trans>
                                    </strong></li>
                                    <li><strong class="text-primary"><i class="fa fa-map-marker"></i>
                                        <trans>${favoritesList.jobAddress}</trans>
                                    </strong></li>
                                    <li><strong class="text-primary"><i class="mdi mdi-pen"></i>
                                        <trans>${favoritesList.jobEr}</trans>
                                    </strong></li>
                                    <li><strong class="text-primary"><i class="mdi mdi-library"></i>
                                        <trans>${favoritesList.jobEducation}</trans>
                                    </strong></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </c:forEach>

                <!-- 分页 Start -->
                <ul class="pagination pagination-center mt-5">
                    <li class="page-item"><a class="page-link"
                                             href="${path}/favorites/userShowFavorites?page=${pageInfo.pageNum-1}&size=${pageInfo.pageSize}"><i
                            class="fa fa-angle-left"></i></a></li>
                    <c:forEach begin="1" end="4" var="pageNum">
                        <li class="page-item "><a class="page-link"
                                                  href="${path}/favorites/userShowFavorites?page=${pageNum}&size=${pageInfo.pageSize}">${pageNum}</a>
                        </li>
                    </c:forEach>
                    <li class="page-item"><a class="page-link"
                                             href="${path}/favorites/userShowFavorites?page=${pageInfo.pageNum+1}&size=${pageInfo.pageSize}"><i
                            class="fa fa-angle-right"></i></a></li>
                </ul>
                <!-- 分页 End -->
            </div>
            <!-- 左边 End -->

            <!-- 右边 Start -->
            <div class="col-lg-4 col-12 mb-5">

                <div class="sidebar-wrap">

                    <!-- 右3 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <form action="#">
                                <button type="button" class="btn btn-primary w-100">⬅我的收藏记录</button>
                            </form>
                        </div>
                    </div>
                    <!-- 右3 End -->
                </div>
            </div>
            <!-- 右边 End -->
        </div>
    </div>
</div>
<!-- 主体内容 End -->


<%@include file="../user/foot.jsp" %>
</body>
<script type="text/javascript">
    //加载参数并传递数据给url
    function show(companyId, companyName, companyCreateTime, jobId, jobName, jobAddress,
                  jobSalary, jobEr, jobEducation, jobReleaseTime, jobType, userId, userRealName) {
        var url = "${path}/user/showAJob?companyId=" + companyId + "&companyName=" + companyName + "&companyCreateTime="
            + companyCreateTime + "&jobId=" + jobId + "&jobName=" + jobName + "&jobAddress=" + jobAddress + "&jobSalary="
            + jobSalary + "&jobSalary=" + jobSalary + "&jobEr=" + jobEr + "&jobEducation=" + jobEducation + "&jobReleaseTime="
            + jobReleaseTime + "&jobType=" + jobType + "&userId=" + userId + "&userRealName=" + userRealName;
        window.location.href = url;
    }
</script>
</html>