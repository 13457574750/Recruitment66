<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <title>关于我们</title>
</head>
<body>
<%@include file="../user/head.jsp"%>

<!-- 首页图片 Start -->
<div class="page-heading-section section bg-parallax" data-bg-image="${path}/assets/images/bg/bg-1.jpg"
     data-overlay="50"></div>
<!-- 首页图片 End -->

<div class="section section-padding">
    <div class="container">

        <div class="row mb-n5">

            <!-- 左边 Start-->
            <div class="col-lg-8 col-12 mb-5 pr-lg-5">
                <!-- 企业列表 Start -->

                <div class="company-list-wrap row">
                    <c:forEach items="${pageInfo.list}" var="company">
                    <!-- 1 -->
                    <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col-12">
<%--                        <c:forEach items="" var="job">--%>
                        <a href="${path}/user/showACompany?companyId=${company.companyId}&jobId=${job.jobId}" class="company-list">
                            <span class="company-logo"><img src="${path}/assets/images/companies/company-1.png" alt="company-1"></span>
                            <h6 class="title">${company.companyName}</h6>
                            <span>${company.companyType}/${company.companyIndustry}/${company.companyNumber}人</span></br>
                            <span>${company.companyProfile}</span></br>
                            <span><i class="fa fa-map-o"></i>${company.companyAddress}</span>
                        </a>
<%--                        </c:forEach>--%>

                    </div>
                    <!-- 1 -->
                        </c:forEach>
                </div>
                <!-- 企业列表 Start -->
                <!-- 分页 Start -->
                <ul class="pagination pagination-center mt-5">
                    <li class="page-item"><a class="page-link" href="${path}/user/findAllCompany?page=${pageInfo.pageNum-1}&size=${pageInfo.pageSize}"><i class="fa fa-angle-left"></i></a></li>
                    <%--                        <li class="page-item"><a class="page-link" href="${path}/user/findAllCompany?page=1&size=${pageInfo.pageSize}">首页</a></li>--%>
                    <c:forEach begin="1" end="4" var="pageNum">
                        <li class="page-item "><a class="page-link" href="${path}/user/findAllCompany?page=${pageNum}&size=${pageInfo.pageSize}">${pageNum}</a></li>
                    </c:forEach>
                    <%--                        <li class="page-item"><a class="page-link" href="${path}/user/findAllCompany?page=${pageInfo.pages}&size=${pageInfo.pageSize}">尾页</a></li>--%>
                    <li class="page-item"><a class="page-link" href="${path}/user/findAllCompany?page=${pageInfo.pageNum+1}&size=${pageInfo.pageSize}"><i class="fa fa-angle-right"></i></a></li>
                </ul>
                <!-- 分页 End -->
            </div>
            <!-- 左边 End -->

            <!-- 右边 Start-->
            <div class="col-lg-4 col-12 mb-5">
                <form action="${path}/user/findAllCompany" method="post">
                <div class="sidebar-wrap">
                    <!-- 搜索 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <h6 class="title"><trans>搜索公司</trans></h6>
                            <form action="#">
                                <input type="text" name="companyName" placeholder="请输入要搜索的公司">
                            </form>
                        </div>
                    </div>
                    <!-- 搜索 End -->

                    <!-- 2 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <a class="banner" target="_blank"><img src="${path}/assets/images/banner/banner-1.jpg" alt="Banner"></a>
                        </div>
                    </div>
                    <!-- 2 End -->
                </div>
                </form>
            </div>
            <!-- 右边 End -->

        </div>

    </div>
</div>


<%@include file="../user/foot.jsp"%>

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

    function search() {
        $("#searchForm").submit();
    }
</script>
</html>