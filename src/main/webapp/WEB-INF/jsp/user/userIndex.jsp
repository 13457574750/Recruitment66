<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js" lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>用户首页</title>
    <meta name="robots" content="noindex, follow"/>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>

<body>
<%@include file="../user/head.jsp"%>
<!-- 首页图片 Start -->
<div class="slider-section section">
    <div class="slide-item bg-parallax" data-bg-image="${path}/assets/images/slider/slider-1.jpg" data-overlay="50">
        <div class="container">
            <div class="slider-content text-center">

            </div>
        </div>
    </div>
</div>
<!-- 首页图片 End -->

<!-- 搜索栏 Start -->
<div class="job-search-section section">
    <div class="container">
        <div class="job-search-wrap">

            <!-- 搜索 Start -->
            <div class="job-search-form">
                <form action="${path}/user/findAllJob" id="searchForm" method="post">
                    <div class="row mb-n4">
                        <div class="col-lg-auto col-sm-6 col-12 flex-grow-1 mb-4">
                            <input type="text" name="jobName" style="width: 150%;" placeholder="软件工程师">
                        </div>
                        <div class="col-lg-auto col-sm-6 col-5 flex-grow-1 mb-4">
                            <button type="button" style="float: right;" class="btn btn-primary" onclick="search()">搜索</button>
                        </div>
                    </div>
                </form>
            </div>
            <!-- 搜索 End -->

        </div>
    </div>
</div>
<!-- 搜索栏 End -->

<!-- 最新的职位 Start -->
<div class="section section-padding">
    <div class="container">
        <div class="section-title">
            <h2 class="title">最新工作</h2>
            <p>以下是网站上列出的最新工作.</p>
        </div>

        <!-- 工作列表 Start -->
        <div class="job-list-wrap">
            <c:forEach items="${pageInfo.list}" var="job">

                <a class="job-list"
                   onclick="show('${job.company.companyId}','${job.company.companyName}','${job.company.companyCreateTime}','${job.jobId}',
                           '${job.jobName}','${job.jobAddress}','${job.jobSalary}','${job.jobEr}','${job.jobEducation}',
                           '${job.jobReleaseTime}','${job.jobType}','${sessionScope.currUser.userId}','${sessionScope.currUser.userRealName}')">
                    <div class="company-logo col-auto">
                        <img src="${path}/images/${job.company.companyCreateTime}" width="70px" height="70px">
                    </div>
                    <div class="salary-type col-auto order-sm-3">
                        <span class="salary-range">$${job.jobSalary}</span>
                        <span class="badge badge-success"><trans>${job.jobType}</trans></span>
                    </div>
                    <div class="content col">
                        <ul class="meta">
                            <li>
                                <h6 class="title">
                                    <trans>${job.jobName}</trans>
                                </h6>
                            </li>
                            <li><strong class="text-primary"><i class="mdi mdi-alarm-multiple"></i>
                                <trans>发布时间：${job.jobReleaseTime}</trans>
                            </strong></li>
                        </ul>
                        <ul class="meta">
                            <li><strong class="text-primary"><i class="mdi mdi-account-card-details"></i>
                                <trans>${job.company.companyName}</trans>
                            </strong></li>
                            <li><strong class="text-primary"><i class="fa fa-map-marker"></i>
                                <trans>${job.jobAddress}</trans>
                            </strong></li>
                            <li><strong class="text-primary"><i class="mdi mdi-pen"></i>
                                <trans>${job.jobEr}</trans>
                            </strong></li>
                            <li><strong class="text-primary"><i class="mdi mdi-library"></i>
                                <trans>${job.jobEducation}</trans>
                            </strong></li>
                        </ul>
                    </div>
                </a>
            </c:forEach>
        </div>
        <!-- 工作列表 End -->

        <div class="text-center mt-4 mt-lg-5">
            <a href="${path}/user/findAllJob" class="btn btn-primary">查看所有职位</a>
        </div>

    </div>
</div>
<!-- 最新的职位 End -->

<!-- 统计数据 Start -->
<div class="section section-padding bg-parallax" data-bg-image="${path}/assets/images/bg/bg-1.jpg" data-overlay="50">
    <div class="container">
        <div class="funfact-wrap row">

            <!-- Funfact Start -->
            <div class="funfact col-md-3 col-sm-6 col-12">
                <span class="counter">1354</span>
                <span class="title">Job Post</span>
            </div>
            <!-- Funfact Start -->

            <!-- Funfact Start -->
            <div class="funfact col-md-3 col-sm-6 col-12">
                <span class="counter">1741</span>
                <span class="title">Members</span>
            </div>
            <!-- Funfact Start -->

            <!-- Funfact Start -->
            <div class="funfact col-md-3 col-sm-6 col-12">
                <span class="counter">1204</span>
                <span class="title">Resume</span>
            </div>
            <!-- Funfact Start -->

            <!-- Funfact Start -->
            <div class="funfact col-md-3 col-sm-6 col-12">
                <span class="counter">142</span>
                <span class="title">Company</span>
            </div>
            <!-- Funfact Start -->

        </div>
    </div>
</div>
<!-- 统计数据 End -->

<!-- 名企 Start -->
<div class="section section-padding">
    <form action="${path}/user/findAllCompany" method="post">

        <div class="container">
            <div class="section-title">
                <h2 class="title">名企</h2>
            </div>

            <!-- Company List Wrap Start -->
            <div class="company-slider row">
                <button class="slick-prev slick-arrow" style=""><i class="fa fa-angle-left"></i></button>
                <!-- Company List Start -->
                <c:forEach items="${pageInfoCompany.list}" var="company">
                    <div class="col">
                        <a href="${path}/company/showACompany?companyId=${company.companyId}" class="feature-company"
                           value="${company.companyId}">
                        <span class="company-logo"><img src="${path}/images/${company.companyCreateTime}" width="70px"
                                                        height="70px"></span>
                            <h6 class="title">${company.companyName}</h6>
                        </a>
                    </div>
                </c:forEach>
                <!-- Company List Start -->
                <button class="slick-next slick-arrow" style=""><i class="fa fa-angle-right"></i></button>
            </div>
            <!-- Company List Wrap Start -->

        </div>
    </form>

</div>
<!-- 名企 End -->

<!-- 名人名言 Start -->
<div class="section section-padding bg-parallax" data-bg-image="${path}/assets/images/bg/bg-2.jpg" data-overlay="65">
    <div class="container">

        <!-- Testimonial Slider Start -->
        <div class="testimonial-slider row">

            <!-- Testimonial Start -->
            <div class="col">
                <div class="testimonial text-center text-white">
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Obcaecati, modi sed praesentium
                        necessitatibus tenetur neque, veritatis esse voluptatem</p>
                    <img src="${path}/assets/images/authors/author-1.jpg" alt="">
                    <h6 class="name">Sharon Harper</h6>
                    <span class="title">Marketer of Hastech</span>
                </div>
            </div>
            <!-- Testimonial End -->

            <!-- Testimonial Start -->
            <div class="col">
                <div class="testimonial text-center text-white">
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Obcaecati, modi sed praesentium
                        necessitatibus tenetur neque, veritatis esse voluptatem</p>
                    <img src="${path}/assets/images/authors/author-2.jpg" alt="">
                    <h6 class="name">Harold McCoy</h6>
                    <span class="title">CEO of Hastech</span>
                </div>
            </div>
            <!-- Testimonial End -->

            <!-- Testimonial Start -->
            <div class="col">
                <div class="testimonial text-center text-white">
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Obcaecati, modi sed praesentium
                        necessitatibus tenetur neque, veritatis esse voluptatem</p>
                    <img src="${path}/assets/images/authors/author-3.jpg" alt="">
                    <h6 class="name">Ronald Wright</h6>
                    <span class="title">Admin of Hastech</span>
                </div>
            </div>
            <!-- Testimonial End -->

        </div>
        <!-- Testimonial Slider End -->

    </div>
</div>
<!-- 名人名言 End -->

<!-- 底部空白区 Start -->
<div class="section section-padding"></div>
<!-- 底部空白区 End -->

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