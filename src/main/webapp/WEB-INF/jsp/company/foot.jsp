<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@include file="../company/css.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<body>
<!-- 底部 Start -->
<div class="footer-top-section section">
    <div class="container">
        <div class="footer-widget-wrap row">

            <!-- Footer Widget Start -->
            <div class="col-lg-3 col-sm-6 col-12">
                <div class="footer-widget">
                    <div class="footer-widget-about">
                        <img src="${path}/assets/images/logo/logo-light.png">
                        <p>分享我们的快乐，传播正能量.</p>

                        <ul class="footer-socail">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-pinterest-p"></i></a></li>
                        </ul>
                    </div>
                    </br><a href="${path}/admin/adminLogin">管理员传送</a>
                </div>
            </div>
            <!-- Footer Widget End -->

            <!-- Footer Widget Start -->
            <div class="col-lg-3 col-sm-6 col-12">
                <div class="footer-widget">
                    <h6 class="title">传送门</h6>
                    <div class="footer-widget-link">
                        <ul>
                            <li><a href="${path}/company/aboutUs">关于我们</a></li>
                            <li><a href="${path}/company/contactUs">联系我们</a></li>
                            <li><a href="#">加入我们</a></li>
                            <li><a href="#">友情链接</a></li>
                            <li><a href="#">服务声明</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- Footer Widget End -->

            <!-- Footer Widget Start -->
            <div class="col-lg-3 col-sm-6 col-12">
                <div class="footer-widget">
                    <h6 class="title">任意门</h6>
                    <div class="footer-widget-link">
                        <ul>
                            <li><a href="#">最新消息</a></li>
                            <li><a href="#">热门岗位</a></li>
                            <li><a href="#">岗位分析</a></li>
                            <li><a href="#">职场干货</a></li>
                            <li><a href="#">面试帮助</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- Footer Widget End -->

            <!-- Footer Widget Start -->
            <div class="col-lg-3 col-sm-6 col-12">
                <div class="footer-widget">
                    <h6 class="title">关注我们</h6>
                    <div class="footer-widget-newsletter">
                        <p>请把你的邮箱发送给我们,当有最新招聘信息时会及时通知您.</p>
                        <form id="mc-form" class="mc-form" novalidate="true">
                            <input id="mc-email" autocomplete="off" type="email" placeholder="Enter your e-mail address" name="EMAIL">
                            <button id="mc-submit" class="btn"><i class="fa fa-envelope-o"></i></button>
                        </form>
                        <!-- mailchimp-alerts Start -->
                        <div class="mailchimp-alerts text-centre">
                            <div class="mailchimp-submitting"></div><!-- mailchimp-submitting end -->
                            <div class="mailchimp-success text-success"></div><!-- mailchimp-success end -->
                            <div class="mailchimp-error text-danger"></div><!-- mailchimp-error end -->
                        </div><!-- mailchimp-alerts end -->
                    </div>
                </div>
            </div>
            <!-- Footer Widget End -->

        </div>
    </div>
</div>
<!-- 底部 End -->

<!-- 最底部 Start -->
<div class="footer-bottom-section section">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <p class="footer-copyright text-center">本网站由小羊会跳舞制作.</p>
            </div>
        </div>
    </div>
</div>
<!-- 最底部 End -->
</body>
</html>