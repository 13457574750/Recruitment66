<div id="tableAll">
    <c:forEach items="${companyList}" var="company">
        <tr>
            <td><input type="text" readonly="readonly" name="companyId" value="${company.companyId}"/></td>
            <td><input type="text" name="companyLoginName" value="${company.companyLoginName}"/></td>
            <td><input type="text" name="companyLoginPassword" value="${company.companyLoginPassword}"/></td>
            <td><input type="text" name="companyName" value="${company.companyName}"/></td>
            <td><input type="text" name="companyType" value="${company.companyType}"/></td>
            <td><input type="text" name="companyIndustry" value="${company.companyIndustry}"/></td>
            <td><input type="text" name="companyProfile" value="${company.companyProfile}"/></td>
            <td><input type="text" name="companyAddress" value="${company.companyAddress}"/></td>
            <td><input type="text" name="companyWeb" value="${company.companyWeb}"/></td>
            <td><input type="text" name="companyPhone" value="${company.companyPhone}"/></td>
            <td><input type="text" name="companyEmail" value="${company.companyEmail}"/></td>
            <td><input type="text" name="companyProfile" value="${company.companyNumber}"/></td>
            <td><input type="text" name="companyNumber" value="${company.companyOwner}"/></td>
            <td><input type="text" name="companyRegisterCapital" value="${company.companyRegisterCapital}"/></td>
            <td><input type="file" name="companyCreateTime" value="${company.companyCreateTime}"/></td>
            <td>
                <div class="btn-group">
                    <a class="btn btn-xs btn-default" href="${pageContext.request.contextPath}/admin/companyUpdate?companyId=${company.companyId}" onclick="return confirm('确定要修改吗？');"
                       data-toggle="tooltip" data-original-title="编辑"></a>
                </div>
            </td>
        </tr>
    </c:forEach>
</div>


<hr class="divider_type_3 m_bottom_30">



<div class="col-12">
    <div class="blog blog-single">
        <div class="content">
            <img src="${path}/images/banner_img1_6.jpg" style="width: 150px">
        </div>
    </div>
</div>
<hr class="divider_type_3 m_bottom_30">
</div>



<img src="${path}/images/banner_img1_6.jpg" style="width: 150px">











