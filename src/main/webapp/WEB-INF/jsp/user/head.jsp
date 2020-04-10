<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@include file="../user/css.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <%-- 清除浏览器缓存--%>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <%-- 搜索关键字--%>
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!-- Main Style CSS -->
    <link type="text/css" rel="stylesheet" href="${path}/assets/css/style.css">
</head>
<body>
<!-- 首页顶部导航 Start -->
<header class="header">
    <div class="container">
        <c:choose>
        <c:when test="${empty sessionScope.currUser}">

        <div class="row justify-content-between align-items-center">

            <div class="col">
                <div class="header-logo">
                    <a href="${path}/user/userIndex?userId=${sessionScope.currUser.userId}">
                        <img src="${path}/assets/images/logo/logo-light.png" alt="Site Logo"
                             target="_parent"></a>
                </div>
            </div>


            <div class="col-auto d-lg-none d-flex align-items-center">
                <button class="offcanvas-toggle">
                    <span></span>
                </button>
            </div>

            <nav id="main-menu" class="main-menu col-lg-auto order-lg-2">
                <ul>
                    <li class="has-children"><a href="${path}/user/userIndex?userId=${sessionScope.currUser.userId}" target="_parent">首页</a></li>
                    <li class="has-children"><a href="${path}/user/findAllJob?userId=${sessionScope.currUser.userId}" target="_parent">职位</a></li>
                    <li><a href="${path}/user/findAllCompany?userId=${sessionScope.currUser.userId}" target="_parent">公司</a></li>
                    <li><a href="${path}/user/blog?userId=${sessionScope.currUser.userId}" target="_parent">博客</a></li>
                    <li><a href="${path}/user/aboutUs?userId=${sessionScope.currUser.userId}" target="_parent">关于我们</a>
                        <ul class="sub-menu">
                            <li><a href="${path}/user/contactUs?userId=${sessionScope.currUser.userId}" target="_parent">联系我们</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>

            <div class="header-links col-auto order-lg-3">

                <a href="#" data-toggle="modal" data-target="#loginSignupModal" data-target-sub="#login"
                   target="_parent">登录</a>
                <span>or</span>
                <a href="#" data-toggle="modal" data-target="#loginSignupModal" data-target-sub="#signup"
                   target="_parent">注册</a>

            </div>

            <div class="header-links col-auto order-lg-3">
                <a href="${path}/company/companyIndex" target="_parent">企业版</a>
            </div>

        </div>

        </c:when>
        <c:when test="${not empty sessionScope.currUser}">

        <div class="row justify-content-between align-items-center">

            <div class="col">
                <div class="header-logo">
                    <a href="${path}/user/userIndex?userId=${sessionScope.currUser.userId}">
                        <img src="${path}/assets/images/logo/logo-light.png" alt="Site Logo"
                             target="_parent"></a>
                </div>
            </div>

            <div class="col-auto d-lg-none d-flex align-items-center">
                <button class="offcanvas-toggle">
                    <span></span>
                </button>
            </div>

            <nav id="main-menu" class="main-menu col-lg-auto order-lg-2">
                <ul>
                    <li class="has-children"><a href="${path}/user/userIndex?userId=${sessionScope.currUser.userId}" target="_parent">首页</a></li>
                    <li class="has-children"><a href="${path}/user/findAllJob?userId=${sessionScope.currUser.userId}" target="_parent">职位</a></li>
                    <li><a href="${path}/user/findAllCompany?userId=${sessionScope.currUser.userId}" target="_parent">公司</a></li>
                    <li><a href="${path}/user/blog?userId=${sessionScope.currUser.userId}" target="_parent">博客</a></li>
                    <li><a href="${path}/user/aboutUs?userId=${sessionScope.currUser.userId}" target="_parent">关于我们</a>
                        <ul class="sub-menu">
                            <li><a href="${path}/user/contactUs?userId=${sessionScope.currUser.userId}" target="_parent">联系我们</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>

            <div class="header-links col-auto order-lg-3">

                <nav id="main-menu" class="main-menu col-lg-auto order-lg-2">
                    <ul>
                        <li class="has-children"><a href="javascript:void(0)">用户：${sessionScope.currUser.userLoginName}</a>
                            <ul class="sub-menu">
                                <li><a href="${path}/user/showUser?userId=${sessionScope.currUser.userId}" target="_parent">我的信息</a></li>
                                <li><a href="${path}/user/updateUserPassword?userId=${sessionScope.currUser.userId}" target="_parent">修改密码</a></li>
                                <li><a href="${path}/user/showResume?userId=${sessionScope.currUser.userId}" target="_parent">个人简历</a></li>
                                <li><a href="${path}/favorites/userShowFavorites?userId=${sessionScope.currUser.userId}&userRealName=${sessionScope.currUser.userRealName}" target="_parent">收藏夹</a></li>
                                <li><a href="${path}/apply/userShowApply?userId=${sessionScope.currUser.userId}&userRealName=${sessionScope.currUser.userRealName}" target="_parent">投递箱</a></li>
                                <li><a href="${path}/user/exit" target="_parent">退出</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>


            </div>

            <div class="header-links col-auto order-lg-3">
                <a href="${path}/company/companyIndex" target="_parent">企业版</a>
            </div>

        </div>

    </div>
</header>
</c:when>
</c:choose>
</div>
</header>
<!-- 首页顶部导航 End -->

<!--OffCanvas Overlay-->
<div class="offcanvas-overlay"></div>

<!-- 登录注册弹窗 Start -->
<div class="loginSignupModal modal fade" id="loginSignupModal" tabindex="-1" role="dialog" aria-labelledby="loginSignupModal" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">

                <ul class="loginSignupNav nav">
                    <li><a class="nav-link active" data-toggle="tab" href="#login">登录</a></li>
                    <li><a class="nav-link" data-toggle="tab" href="#signup">注册</a></li>
                </ul>

                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>

            </div>
            <div class="modal-body">
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="login">
                        <form>
                            <div class="row mb-n3">
                                <div class="col-12 mb-3"><input type="text" id="userLoginName" name="userLoginName" placeholder="请输入账号"></div>
                                <div class="col-12 mb-3"><input type="password" id="userLoginPassword" name="userLoginPassword" placeholder="请输入密码"></div>
                                <div class="col-12 mb-3">
                                    <div class="row justify-content-between mb-n2">
                                        <div class="col-auto mb-2">
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" name="remember-me" id="remember-me" value="checkedValue" class="custom-control-input">
                                                <label class="custom-control-label" for="remember-me">记住我</label>
                                            </div>
                                        </div>
                                        <div class="col-auto mb-2"><a href="#">忘记密码?</a></div>
                                    </div>
                                </div>
                                <div class="col-12 mb-3"><input id="submitBtn" class="btn btn-primary w-100" type="button" value="登录" onclick="CheckForm()"></div>
                            </div>
                        </form>
                    </div>
                    <div class="tab-pane fade" id="signup">
                        <form>
                            <div class="row mb-n3">
                                <div class="col-12 mb-3"><input type="text" id="userLoginName2" name="userLoginName"  placeholder="请输入账号"></div>
                                <div class="col-12 mb-3"><input type="text" id="userEmail" name="userEmail"  placeholder="请输入邮箱"></div>
                                <div class="col-12 mb-3"><input type="password" id="userLoginPassword2" name="userLoginPassword"  placeholder="请输入密码"></div>
                                <div class="col-12 mb-3"><input type="text" id="userRealName" name="userRealName"  placeholder="请输入名字，确认注册后不可更改"></div>
                                <div class="col-12 mb-3"><input id="submitBtn2" class="btn btn-primary w-100" type="button" value="注册" onclick="Check()"></div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 登录注册弹窗 End -->
</body>
<!-- Main Activation JS -->
<script type="text/javascript" src="${path}/assets/js/main.js"></script>

<!-- 登录注册脚本 Start -->
<script type="text/javascript">
    //登录
    function CheckForm(){
        var userLoginName=document.getElementById("userLoginName").value;
        var userLoginPassword=document.getElementById("userLoginPassword").value;
        if(userLoginName.length==0){
            alert("请输入用户名称");
            return false;
        }else
        {
            var pattern = /^[0-9a-zA-Z]+$/;
            if(!pattern.test(document.getElementById("userLoginName").value))
            {
                alert('\n用户名只可输入数字或者字母!');
                return false;
            }
        }
        if(userLoginPassword.length==0){
            alert("请输入用户密码");
            return false;
        }
        $.ajax({
            url:"${pageContext.request.contextPath}/user/toUserLogin",
            data:{
                userLoginName:userLoginName,
                userLoginPassword:userLoginPassword,

            },//给服务器的参数
            type:"POST",
            dataType:"json",
            success:function(data){
                if("success"==data.str){
                    alert("登录成功，请先完善个人简历信息");
                    var url="${pageContext.request.contextPath}/user/showResume?userId=${sessionScope.currUser.userId}";
                    window.location.href=url;
                }else{
                    alert("登录失败,请输入正确的用户名和密码");
                }
            }
        });
    }
    //注册
    function Check(){
        var userLoginName=document.getElementById("userLoginName2").value;//用户名
        var userLoginPassword=document.getElementById("userLoginPassword2").value;//用户密码
        var userEmail=document.getElementById("userEmail").value;//用户邮箱
        var userRealName=document.getElementById("userRealName").value;//用户名字

        if(userLoginName.length==0){
            alert("用户名为空");
            return false;
        }else{
            var pattern = /^[0-9a-zA-Z]+$/;
            if(!pattern.test(document.getElementById("userLoginName2").value))
            {
                alert('\n用户名只可输入数字或者字母!');
                return false;
            }
        }
        if(userLoginPassword.length==0){
            alert("请输入密码");
            return false;
        }
        if(userRealName.length==0){
            alert("请输入名字");
            return false;
        }
        if(userEmail.length==0){
            alert("邮箱为空");
            return false;
        }else{
            var pattern = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
            if (!pattern.test(document.getElementById("userEmail").value)) {
                alert('\n请输入正确的邮箱格式!');
                return false;
            }
        }
        $.ajax({
            url:"${path}/user/toUserRegister",
            data:{
                userLoginName:userLoginName,//用户登录名
                userLoginPassword:userLoginPassword,//密码
                userEmail:userEmail,//邮箱
                userRealName:userRealName,//名字
            },
            type:"POST",
            dataType:"json",
            success:function(data){
                if("success"==data.str){
                    alert("注册成功");
                    var url="${pageContext.request.contextPath}/user/userIndex";
                    window.location.href=url;
                }else if("用户名已经存在"==data.str){
                    alert("注册失败,用户名已经存在");
                }
            }
        });
    }
</script>
<!-- 登录注册脚本 End -->

</html>