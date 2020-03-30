<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <title>职位列表</title>
</head>
<body>
<%@include file="../user/head.jsp" %>

<!-- 首页图片 Start -->
<div class="page-heading-section section bg-parallax" data-bg-image="${path}/assets/images/bg/bg-1.jpg"
     data-overlay="50"></div>
<!-- 首页图片 End -->

<!-- 职位列表 Start -->
<div class="section section-padding">
    <div class="container">
        <form action="${path}/user/findAllJob" id="searchForm" method="post">

        <div class="row mb-n5">

            <!-- 左边 Start -->
            <div class="col-lg-8 col-12 mb-5 pr-lg-5">

                <!-- 左1--工作列表头 Start -->
                <div class="job-list-toolbar">
                    <p><trans>显示34项结果中的1-10项</trans></p>
                    <p><trans>按下列顺序分类：</trans><select>
                        <option><trans>最近</trans></option>
                        <option><trans>最热</trans></option>
                    </select>
                    </p>
                </div>
                <!-- 左1--工作列表头 End -->

                <!-- 工作列表 Start -->
                <div class="job-list-wrap">
                    <c:forEach items="${jobList}" var="job">

                    <a href="${path}/user/showAJob?jobId=${job.jobId}&&companyId=${job.company.companyId}&&userId=${sessionScope.currUser.userId}" class="job-list">
                        <div class="company-logo col-auto">
                            <img src="${path}/assets/images/companies/company-1.png" alt="Company Logo">
                        </div>
                        <div class="salary-type col-auto order-sm-3">
                            <span class="salary-range">$${job.jobSalary}</span>
                            <span class="badge badge-success"><trans>${job.jobType}</trans></span>
                        </div>
                        <div class="content col">
                            <h6 class="title"><trans>${job.jobName}</trans></h6>
                            <ul class="meta">
                                <li><strong class="text-primary"><i class="fa fa-map-marker"></i><trans>${job.company.companyName}</trans></strong></li>
                                <li><strong class="text-primary"><i class="fa fa-map-marker"></i><trans>${job.jobAddress}</trans></strong></li>
                                <li><strong class="text-primary"><i class="fa fa-map-marker"></i><trans>${job.jobEr}</trans></strong></li>
                                <li><strong class="text-primary"><i class="fa fa-map-marker"></i><trans>${job.jobEducation}</trans></strong></li>
                            </ul>
                        </div>
                    </a>
                    </c:forEach>
                </div>
                <!-- 工作列表 End -->

                <!-- 分页 Start -->
                <ul class="pagination pagination-center mt-5">
                    <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-left"></i></a></li>
                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                    <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-right"></i></a></li>
                </ul>
                <!-- 分页 End -->
            </div>
            <!-- 左边 End -->


            <!-- 右边 Start -->
            <div class="col-lg-4 col-12 mb-5">
                <form action="${path}/user/findAllJob" method="post">

                <div class="sidebar-wrap">
                    <!-- 右1 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <h6 class="title"><trans>搜索职位</trans></h6>
                            <form action="#">
                                <input type="text" name="jobName" placeholder="请输入要搜索的职位名称">
                            </form>
                        </div>
                    </div>
                    <!-- 右1 End -->

                    <!-- 右2 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <h6 class="title"><trans>搜索位置</trans></h6>
                            <form action="#">
                                <input type="text" name="jobAddress" placeholder="请输入要搜索的工作地点">
                            </form>
                        </div>
                    </div>
                    <!-- 右2 End -->

                    <!-- 右3 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <h6 class="title"><trans>搜索公司</trans></h6>
                            <form action="#">
                                <input type="text" name="companyName" placeholder="请输入要搜索的公司">
                            </form>
                        </div>
                    </div>
                    <!-- 右3 End -->

                    <!-- 右4 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <h6 class="title"><trans>重置条件</trans></h6>
                            <form action="#">
                                <button type="button" class="btn btn-primary w-100" onclick="search()">重置</button>
                            </form>
                        </div>
                    </div>
                    <!-- 右4 End -->
                </div>
                </form>
            </div>
            <!-- 右边 End -->

        </div>
        </form>
    </div>
</div>
<!-- 职位列表 End -->


<%@include file="../user/foot.jsp" %>

<script type="text/javascript">
    function search() {
        $("#searchForm").submit();
    }
</script>
</body>
</html>