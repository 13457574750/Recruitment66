<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@include file="../admin/css.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>后台左部</title>
</head>
<body data-logobg="color_8" data-sidebarbg="color_8">
<div class="lyear-layout-web">
    <div class="lyear-layout-container">
        <!--左侧导航-->
        <aside class="lyear-layout-sidebar">
            <!-- logo -->
            <div id="logo" class="sidebar-header"><a href="${path}/admin/adminIndex">
                <img src="${path}/images/logo-sidebar.png" title="LightYear" alt="LightYear"/></a>
            </div>
            <div class="lyear-layout-sidebar-scroll">
                <nav class="sidebar-main">
                    <ul class="nav nav-drawer">
                        <li class="nav-item active">
                            <a href="${path}/admin/adminIndex"><i class="mdi mdi-home"></i>后台首页</a>
                        </li>
                        <li class="nav-item nav-item-has-subnav">
                            <a href="javascript:void(0)"><i class="mdi mdi-account"></i>用户管理</a>
                            <ul class="nav nav-subnav">
                                <li><a href="${path}/user/userIndex">用户首页</a></li>
                                <li><a href="${path}/admin/user">用户</a></li>
                            </ul>
                        </li>
                        <li class="nav-item nav-item-has-subnav">
                            <a href="javascript:void(0)"><i class="mdi mdi-format-align-justify"></i>企业管理</a>
                            <ul class="nav nav-subnav">
                                <li><a href="${path}/company/companyIndex">企业首页</a></li>
                                <li><a href="${path}/admin/company">企业</a></li>
                            </ul>
                        </li>
                        <li class="nav-item nav-item-has-subnav">
                            <a href="${path}/board/Board"><i class="mdi mdi-format-align-justify"></i>留言管理</a>
                        </li>
                    </ul>
                </nav>
                <div class="sidebar-footer"><p class="copyright">小羊会跳舞制作</p></div>
            </div>
        </aside>
        <!--End 左侧导航-->
    </div>
</div>
<script type="text/javascript" src="${path}/js/main.js"></script>
</body>
</html>
