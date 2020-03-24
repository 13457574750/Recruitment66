<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@include file="../admin/css.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>后台头部</title>
</head>
<body data-logobg="color_8" data-sidebarbg="color_8">
<div class="lyear-layout-web">
    <div class="lyear-layout-container">
        <!--头部信息-->
        <header class="lyear-layout-header">
            <nav class="navbar navbar-default">
                <div class="topbar">
                    <div class="topbar-left">
                        <div class="lyear-aside-toggler"><span class="lyear-toggler-bar"></span><span
                                class="lyear-toggler-bar"></span><span class="lyear-toggler-bar"></span></div>
                        <span class="navbar-page-title"></span></div>
                    <ul class="topbar-right">
                        <li class="dropdown dropdown-profile"><a href="javascript:void(0)" data-toggle="dropdown">
                            <img class="img-avatar img-avatar-48 m-r-10" src="${path}/images/avatar.jpg"/>
                            <span>管理员<span class="caret"></span></span></a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li><a href="${path}/admin/admin"><i class="mdi mdi-lock-outline"></i>修改密码</a></li>
                                <li class="divider"></li>
                                <li><a href="${path}/admin/adminLogin"><i class="mdi mdi-logout-variant"></i>退出登录</a></li>
                            </ul>
                        </li>
                        <!--切换主题配色-->
                        <li class="dropdown dropdown-skin">
                            <span data-toggle="dropdown" class="icon-palette"><i class="mdi mdi-palette"></i></span>
                            <ul class="dropdown-menu dropdown-menu-right" data-stopPropagation="true">
                                <li class="drop-title"><p>主题</p></li>
                                <li class="drop-skin-li clearfix">
                                    <span class="inverse">
                                    <input type="radio" name="site_theme" value="default" id="site_theme_1" checked><label
                                            for="site_theme_1"></label></span><span><input type="radio" name="site_theme" value="dark" id="site_theme_2"><label
                                        for="site_theme_2"></label></span><span><input type="radio" name="site_theme" value="translucent" id="site_theme_3"><label
                                        for="site_theme_3"></label></span></li>
                                <li class="drop-title"><p>LOGO</p></li>
                                <li class="drop-skin-li clearfix"><span class="inverse"><input type="radio" name="logo_bg" value="default" id="logo_bg_1" checked><label
                                        for="logo_bg_1"></label></span><span><input type="radio" name="logo_bg" value="color_2" id="logo_bg_2"><label
                                        for="logo_bg_2"></label></span><span><input type="radio" name="logo_bg" value="color_3" id="logo_bg_3"><label
                                        for="logo_bg_3"></label></span><span><input type="radio" name="logo_bg" value="color_4" id="logo_bg_4"><label
                                        for="logo_bg_4"></label></span><span><input type="radio" name="logo_bg" value="color_5" id="logo_bg_5"><label
                                        for="logo_bg_5"></label></span><span><input type="radio" name="logo_bg" value="color_6" id="logo_bg_6"><label
                                        for="logo_bg_6"></label></span><span><input type="radio" name="logo_bg" value="color_7" id="logo_bg_7"><label
                                        for="logo_bg_7"></label></span><span><input type="radio" name="logo_bg" value="color_8" id="logo_bg_8"><label
                                        for="logo_bg_8"></label></span></li>
                                <li class="drop-title"><p>头部</p></li>
                                <li class="drop-skin-li clearfix"><span class="inverse"><input type="radio" name="header_bg" value="default" id="header_bg_1" checked><label
                                        for="header_bg_1"></label></span><span><input type="radio" name="header_bg" value="color_2" id="header_bg_2"><label
                                        for="header_bg_2"></label></span><span><input type="radio" name="header_bg" value="color_3" id="header_bg_3"><label
                                        for="header_bg_3"></label></span><span><input type="radio" name="header_bg" value="color_4" id="header_bg_4"><label
                                        for="header_bg_4"></label></span><span><input type="radio" name="header_bg" value="color_5" id="header_bg_5"><label
                                        for="header_bg_5"></label></span><span><input type="radio" name="header_bg" value="color_6" id="header_bg_6"><label
                                        for="header_bg_6"></label></span><span><input type="radio" name="header_bg" value="color_7" id="header_bg_7"><label
                                        for="header_bg_7"></label></span><span><input type="radio" name="header_bg" value="color_8" id="header_bg_8"><label
                                        for="header_bg_8"></label></span></li>
                                <li class="drop-title"><p>侧边栏</p></li>
                                <li class="drop-skin-li clearfix"><span class="inverse"><input type="radio" name="sidebar_bg" value="default" id="sidebar_bg_1" checked><label
                                        for="sidebar_bg_1"></label></span><span><input type="radio" name="sidebar_bg" value="color_2" id="sidebar_bg_2"><label
                                        for="sidebar_bg_2"></label></span><span><input type="radio" name="sidebar_bg" value="color_3" id="sidebar_bg_3"><label
                                        for="sidebar_bg_3"></label></span><span><input type="radio" name="sidebar_bg" value="color_4" id="sidebar_bg_4"><label
                                        for="sidebar_bg_4"></label></span><span><input type="radio" name="sidebar_bg" value="color_5" id="sidebar_bg_5"><label
                                        for="sidebar_bg_5"></label></span><span><input type="radio" name="sidebar_bg" value="color_6" id="sidebar_bg_6"><label
                                        for="sidebar_bg_6"></label></span><span><input type="radio" name="sidebar_bg" value="color_7" id="sidebar_bg_7"><label
                                        for="sidebar_bg_7"></label></span><span><input type="radio" name="sidebar_bg" value="color_8" id="sidebar_bg_8"><label
                                        for="sidebar_bg_8"></label></span></li>
                            </ul>
                        </li>
                        <!--切换主题配色-->
                    </ul>
                </div>
            </nav>
        </header>
        <!--End 头部信息-->
    </div>
</div>
<script type="text/javascript">
    // 设置主题配色
    setTheme = function (input_name, data_name) {
        $("input[name='" + input_name + "']").click(function () {
            $('body').attr(data_name, $(this).val());
        });
    }
    setTheme('site_theme', 'data-theme');
    setTheme('logo_bg', 'data-logobg');
    setTheme('header_bg', 'data-headerbg');
    setTheme('sidebar_bg', 'data-sidebarbg');

</script>
</body>
</html>
