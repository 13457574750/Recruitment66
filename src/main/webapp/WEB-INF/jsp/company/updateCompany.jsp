<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <title>企业详细信息</title>
</head>
<body>
<%@include file="../company/head.jsp" %>

<!-- 首页图片 Start -->
<div class="page-heading-section section bg-parallax" data-bg-image="${path}/assets/images/bg/bg-1.jpg"
     data-overlay="50"></div>
<!-- 首页图片 End -->

<!-- 主体内容 Start -->
<div class="section section-padding">
    <form id="companyForm" action="${pageContext.request.contextPath }/company/updateCompanySubmit" method="post"
          onsubmit="return submitForm();">
        <div class="container">
            <div class="row">
                <div class="create-job-form col-lg-10 mx-auto">
                    <form action="#">
                        <div class="row mb-n3">
                            <div class="col-md-6 col-12 mb-3">
                                <label for="companyName">公司名称</label>
                                <input type="text" name="companyName" id="companyName" value="${company.companyName}"
                                       placeholder="请输入公司名称">
                            </div>
                            <div class="col-md-6 col-12 mb-3">
                                <label for="companyType">公司类型</label>
                                <select id="companyType" name="companyType" value="${company.companyType}"
                                        placeholder="请输入公司类型">
                                    <option value="私营企业">私营企业</option>
                                    <option value="国有企业">国有企业</option>
                                    <option value="集体所有制企业">集体所有制企业</option>
                                    <option value="股份制企业">股份制企业</option>
                                    <option value="联营企业">联营企业</option>
                                    <option value="外商投资企业">外商投资企业</option>
                                    <option value="港、澳、台投资企业">港、澳、台投资企业</option>
                                    <option value="股份合作企业">股份合作企业</option>
                                </select>
                            </div>
                            <div class="col-md-6 col-12 mb-3">
                                <label for="companyIndustry">所属行业</label>
                                <select id="companyIndustry" name="companyIndustry" value="${company.companyIndustry}"
                                        placeholder="请选择所属行业">
                                    <option value="移动互联网">移动互联网</option>
                                    <option value="电商">电商</option>
                                    <option value="教育">教育</option>
                                    <option value="医疗">医疗</option>
                                    <option value="软件开发">软件开发</option>
                                    <option value="人工智能">人工智能</option>
                                    <option value="信息安全">信息安全</option>
                                    <option value="社交旅游">社交旅游</option>
                                    <option value="房产家居">房产家居</option>
                                </select>
                            </div>

                            <div class="col-md-6 col-12 mb-3">
                                <label for="companyAddress">公司地址</label>
                                <input type="text" name="companyAddress" id="companyAddress"
                                       value="${company.companyAddress}" placeholder="请输入公司地址">
                            </div>

                            <div class="col-md-6 col-12 mb-3">
                                <label for="companyWeb">公司网址</label>
                                <input type="text" name="companyWeb" id="companyWeb" value="${company.companyWeb}"
                                       placeholder="请输入公司网址">
                            </div>

                            <div class="col-md-6 col-12 mb-3">
                                <label for="companyPhone">公司电话</label>
                                <input type="text" name="companyPhone" id="companyPhone" value="${company.companyPhone}"
                                       placeholder="请输入公司联系电话">
                            </div>

                            <div class="col-md-6 col-12 mb-3">
                                <label for="companyEmail">公司邮箱</label>
                                <input type="text" name="companyEmail" id="companyEmail" value="${company.companyEmail}"
                                       placeholder="请输入公司联系邮箱">
                            </div>

                            <div class="col-md-6 col-12 mb-3">
                                <label for="companyNumber">公司规模</label>
                                <select id="companyNumber" name="companyNumber" value="${company.companyNumber}"
                                        placeholder="请输入公司规模">
                                    <option value="100">100人以下</option>
                                    <option value="200">100-200人</option>
                                    <option value="400">200-400人</option>
                                    <option value="600">400-1000人</option>
                                    <option value="1000">1000人以上</option>
                                </select>
                            </div>

                            <div class="col-md-6 col-12 mb-3">
                                <label for="companyOwner">公司创始人</label>
                                <input type="text" name="companyOwner" id="companyOwner" value="${company.companyOwner}"
                                       placeholder="公司创始人">
                            </div>

                            <div class="col-md-6 col-12 mb-3">
                                <label for="companyRegisterCapital">注册资本</label>
                                <input type="text" name="companyRegisterCapital" id="companyRegisterCapital"
                                       value="${company.companyRegisterCapital}"
                                       placeholder="请输入注册资本">
                            </div>

                            <div class="col-md-6 col-12 mb-3">
                                <label for="companyRegisterCapital">LOGO</label>
                                <input type="file" name="companyCreateTime" id="companyCreateTime"
                                       value="${company.companyCreateTime}"
                                       placeholder="请选择公司Logo">
                            </div>

                            <div class="col-12 mb-3">
                                <label for="companyProfile">公司简介</label>
                                <textarea id="companyProfile" name="companyProfile" rows="5" maxlength="200"
                                          value="${company.companyProfile}"
                                          placeholder="请输入200字以内的公司简介描述"></textarea>
                            </div>

                            <div class="col-12 mb-3">
                                <input type="hidden" name="companyId" id="companyId"
                                       value="${sessionScope.currCompany.companyId}">
                                <input type="hidden" name="companyLoginName" id="companyLoginName"
                                       value="${sessionScope.currCompany.companyLoginName}">
                                <input type="hidden" name="companyLoginPassword" id="companyLoginPassword"
                                       value="${sessionScope.currCompany.companyLoginPassword}">
                                <button type="button" class="btn btn-primary px-5"
                                        href="${pageContext.request.contextPath}/company/showCompany?companyId=${sessionScope.currCompany.companyId}"
                                        onclick="submitForm()">保存
                                </button>
                            </div>
                        </div>
                        <div class="row"></div>
                    </form>
                </div>
            </div>
        </div>
    </form>
</div>
<!-- 主体内容 End -->

<%@include file="../company/foot.jsp" %>

<script language="javascript">
    function submitForm() {
        alert("保存成功");
        document.getElementById("companyForm").submit();
    }
</script>
</body>
</html>