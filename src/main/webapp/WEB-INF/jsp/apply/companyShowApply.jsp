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
<%@include file="../company/head.jsp" %>
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
                <c:forEach items="${pageInfo.list}" var="applyList">

                    <div class="job-list-details">
                        <div class="job-details-head row mx-0">
                            <div class="company-logo col-auto">
                                <a onclick="show('${applyList.job.company.companyId}','${applyList.companyName}','${applyList.companyCreateTime}','${applyList.jobId}',
                                        '${applyList.jobName}','${applyList.jobAddress}','${applyList.jobSalary}','${applyList.jobEr}','${applyList.jobEducation}',
                                        '${applyList.jobReleaseTime}','${applyList.jobType}','${sessionScope.currUser.userId}','${sessionScope.currUser.userRealName}')">
                                    <img src="${path}/images/${applyList.companyCreateTime}" width="70px" height="70px"></a>
                            </div>
                            <div class="salary-type col-auto order-sm-3">
                                <span class="salary-range">$${applyList.jobSalary}</span>
                                <span class="badge badge-success"><trans>${applyList.jobType}</trans></span>
                            </div>
                            <div class="salary-type col-auto order-sm-3">
                            <span class="badge badge-danger"><trans><a
                                    href="${path}/apply/deleteApply2?applyId=${applyList.applyId}&userId=${sessionScope.currUser.userId}&
                                    companyId=${sessionScope.currCompany.companyId}&companyName=${sessionScope.currCompany.companyName}"
                                    onclick="return confirm('确定要删除吗？');">删除</a></trans></span>
                            </div>
                            <div class="content col">
                                <ul class="meta">
                                    <li>
                                        <h6 class="title">
                                            <trans>${applyList.jobName}</trans>
                                            <trans><a onclick="showUser('${applyList.userRealName}')">${applyList.userRealName}</a></trans>
                                        </h6>
                                    </li>
                                    <li><strong class="text-primary"><i class="fa fa-map-marker"></i>
                                        <trans>发布时间：${applyList.jobReleaseTime}</trans>
                                    </strong></li>
                                </ul>
                                <ul class="meta">
                                    <li><i class="fa fa-map-marker"></i><strong class="text-primary">
                                        <trans>${applyList.companyName}</trans>
                                    </strong></li>
                                    <li><i class="fa fa-map-marker"></i><strong class="text-primary">
                                        <trans>${applyList.jobAddress}</trans>
                                    </strong></li>
                                    <li><i class="fa fa-map-marker"></i><strong class="text-primary">
                                        <trans>${applyList.jobEr}</trans>
                                    </strong></li>
                                    <li><i class="fa fa-map-marker"></i><strong class="text-primary">
                                        <trans>${applyList.jobEducation}</trans>
                                    </strong></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <!-- 分页 Start -->
                <ul class="pagination pagination-center mt-5">
                    <li class="page-item">
                        <a class="page-link"
                           href="${path}/apply/companyShowApply?companyId=${sessionScope.currCompany.companyId}&companyName=${sessionScope.currCompany.companyName}&page=${pageInfo.pageNum-1}&size=${pageInfo.pageSize}">
                            <i class="fa fa-angle-left"></i></a></li>
                    <c:forEach begin="1" end="4" var="pageNum">
                        <li class="page-item ">
                            <a class="page-link"
                               href="${path}/apply/companyShowApply?companyId=${sessionScope.currCompany.companyId}&companyName=${sessionScope.currCompany.companyName}&page=${pageNum}&size=${pageInfo.pageSize}">${pageNum}</a>
                        </li>
                    </c:forEach>
                    <li class="page-item">
                        <a class="page-link"
                           href="${path}/apply/companyShowApply?companyId=${sessionScope.currCompany.companyId}&companyName=${sessionScope.currCompany.companyName}&page=${pageInfo.pageNum+1}&size=${pageInfo.pageSize}"><i
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
                                <button type="button" class="btn btn-primary w-100">⬅企业信箱</button>
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


<%@include file="../company/foot.jsp" %>
</body>
<script type="text/javascript">
    //加载参数并传递数据给url
    function show(companyId, companyName, companyCreateTime, jobId, jobName, jobAddress,
                  jobSalary, jobEr, jobEducation, jobReleaseTime, jobType, userId, userRealName) {
        var url = "${path}/job/showAJob?companyId=" + companyId + "&companyName=" + companyName + "&companyCreateTime="
            + companyCreateTime + "&jobId=" + jobId + "&jobName=" + jobName + "&jobAddress=" + jobAddress + "&jobSalary="
            + jobSalary + "&jobSalary=" + jobSalary + "&jobEr=" + jobEr + "&jobEducation=" + jobEducation + "&jobReleaseTime="
            + jobReleaseTime + "&jobType=" + jobType + "&userId=" + userId + "&userRealName=" + userRealName;
        window.location.href = url;
    }
    function showUser(userRealName){
        var url="${path}/user/findUserByUserRealName?userRealName=" + userRealName;
        window.location.href=url;
    }
</script>
</html>