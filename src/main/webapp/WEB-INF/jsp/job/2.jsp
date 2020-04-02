var companyName = document.getElementById("companyName").value;
var companyProfile = document.getElementById("companyProfile").value;
var companyAddress = document.getElementById("companyAddress").value;
var companyWeb = document.getElementById("companyWeb").value;
var companyPhone = document.getElementById("companyPhone").value;
var companyEmail = document.getElementById("companyEmail").value;
var companyOwner = document.getElementById("companyOwner").value;
var companyRegisterCapital = document.getElementById("companyRegisterCapital").value;

// if(companyName.length == 0){
//     alert("公司名称不能为空");
//     return false;
// }
// if(companyProfile.length == 0){
//     alert("公司简介不能为空");
//     return false;
// }
// if(companyAddress.length == 0){
//     alert("公司地址不能为空");
//     return false;
// }
// if(companyWeb.length == 0){
//     alert("公司网址不能为空");
//     return false;
// }
// if(companyPhone.length == 0){
//     alert("公司电话不能为空");
//     return false;
// }
if(companyEmail.length == 0){
alert("邮箱不能为空");
return false;
}else {
var pattern = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
if (!pattern.test(document.getElementById("companyEmail").value)) {
alert('\n请输入正确的邮箱格式!');
return false;
}
}
if(companyOwner.length == 0){
alert("公司创始人不能为空");
return false;
}
if(companyRegisterCapital.length == 0){
alert("请上传公司LOGO");
return false;
}

<div id="tableAll">
    <table class="table table-hover table-bordered" border="1">
        <tr class="info">
            <h3>投递记录</h3>
        </tr>
        <tr>
            <th>职位名称</th>
            <th>工作地址</th>
            <th>薪资</th>
            <th>公司名称</th>
            <th>投递时间</th>
            <th>投递时间</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${applyList_}" var="applyList_">
            <tr class="table table-hover" value="${applyList_.applyId}">
                <td>${applyList_.jobName}</td>
                <td>${applyList_.jobAddress }</td>
                <td>${applyList_.jobSalary}</td>
                <td>${applyList_.companyName}</td>
                <td><fmt:formatDate value="${applyList_.jobReleaseTime}" pattern="yyyy-MM-dd"/></td>
                <td>
                    <a href="${path}/apply/deleteApply?applyId=${applyList_.applyId}&& userId=${sessionScope.currUser.userId}" onclick="return confirm('确定要删除吗？');"
                       class="btn btn-default">删除</a></td>
            </tr>
        </c:forEach>
    </table>
</div>

href="${path}/user/showAJob?jobId=${job.jobId}&companyId=${job.company.companyId}&userId=${sessionScope.currUser.userId}"

<association property="job" resultMap="org.soft.recruitment.dao.JobMapper.BaseResultMap">
    <id column="job_Id" property="jobId"/>
    <result column="job_Name" property="jobName"/>
</association>
<select id="findAllApply" parameterType="java.util.Map" resultMap="BaseResultMap">
    select
    app.apply_Id,
    app.apply_Release_Time,
    app.company_Name,
    app.company_Create_Time,
    app.user_Real_Name,
    app.job_Id,
    j.job_Id,

    from apply app
    inner join job j
    on app.job_Id=j.job_Id
</select>
List<Apply> findAllApply();

private Job job;

public Job getJob() { return job; }

public void setJob(Job job) { this.job = job; }