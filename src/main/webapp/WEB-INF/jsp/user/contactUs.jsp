<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <title>联系我们</title>
</head>
<body>
<%@include file="../user/head.jsp"%>

<!-- 首页图片 Start -->
<div class="page-heading-section section bg-parallax" data-bg-image="${path}/assets/images/bg/bg-1.jpg" data-overlay="50"></div>
<!-- 首页图片 End -->

<div class="section section-padding">
    <div class="container">
        <div class="row mb-n5">

            <%--联系信息 start--%>
            <div class="col-lg-5 col-12 mb-5">
                <div class="contact-information">
                    <h5 class="title mb-4">
                        <trans oldtip="Contact Information" newtip="Contact Information">联系信息</trans>
                    </h5>
                    <ul>
                        <li><i class="fa fa-map-o"></i>
                            <span><trans oldtip="address" newtip="address">桂林</trans><br></span></li>
                        <li><i class="fa fa-phone-square"></i><span>+123 456 789</span></li>
                        <li><i class="fa fa-fax"></i><span>+123 456 789</span></li>
                        <li><i class="fa fa-envelope-o"></i>
                            <span><trans oldtip="keller@email.com" newtip="keller@email.com">keller@email.com</trans></span>
                        </li>
                    </ul>
                    <div class="contact-social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <%--联系信息 start--%>

            <%--留言板 start--%>
            <div class="col-lg-7 col-12 mb-5">
                <div class="contact-form">
                    <h5 class="title mb-4">
                        <trans oldtip="Get in Touch" newtip="Get in Touch">留言</trans>
                    </h5>
                    <form id="contact-form" action="${path}/board/insertBoard" method="post">
                        <div class="row mb-n3">
                            <div class="col-md-6 col-12 mb-3"><input type="text" id="boardName" name="boardName" placeholder="你的名字">
                            </div>
                            <div class="col-md-6 col-12 mb-3"><input type="email" id="boardEmail" name="boardEmail" placeholder="你的邮箱"></div>
                            <div class="col-12 mb-3"><textarea id="boardContent" name="boardContent" placeholder="你的内容" rows="4"></textarea></div>
                            <div class="col-12 mb-3"><input class="btn btn-primary px-5" type="button" value="提交留言" onclick="LY()"></div>
                        </div>
                    </form>
                    <div class="form-messege"></div>
                </div>
            </div>
            <%--留言板 end--%>
        </div>
    </div>
</div>

<%@include file="../user/foot.jsp"%>
</body>
<script type="text/javascript">
    //留言
    function LY() {
        var boardName = document.getElementById("boardName").value;//留言的名字
        var boardEmail = document.getElementById("boardEmail").value;//留言的邮箱
        var boardContent = document.getElementById("boardContent").value;//留言内容
        var boardTime = new Date();//收藏时间

        if (boardName.length == 0) {
            alert("名字不能为空");
            return false;
        }
        if (boardEmail.length == 0) {
            alert("邮箱不能为空");
            return false;
        } else {
            var pattern = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
            if (!pattern.test(document.getElementById("boardEmail").value)) {
                alert('\n请输入正确的邮箱格式!');
                return false;
            }
        }
        if (boardContent.length == 0) {
            alert("留言内容不能为空");
            return false;
        }
        $.ajax({
            url: "${path}/board/insertBoard",
            data: {
                boardName: boardName,//留言的名字
                boardEmail: boardEmail,//留言的邮箱
                boardContent: boardContent,//留言内容
                boardTime: boardTime,//留言内容
            },
            type: "POST",
            dataType: "json",
            success:function(data){
                if ("感谢您的留言，谢谢" == data.str) {
                    alert("感谢您的留言，谢谢");
                    var url = "${pageContext.request.contextPath}/company/companyIndex";
                    window.location.href = url;
                }
            }
        });
    }
</script>
</html>