<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <title>添加职位</title>
</head>
<body>
<%@include file="../company/head.jsp"%>

<!-- 首页图片 Start -->
<div class="page-heading-section section bg-parallax" data-bg-image="${path}/assets/images/bg/bg-1.jpg"
     data-overlay="50"></div>
<!-- 首页图片 End -->

<!-- 主体内容 Start -->
<div class="section section-padding">
    <div class="container">
        <div class="row">
            <div class="create-job-form col-lg-10 mx-auto">
                <form action="#">
                    <div class="row mb-n3">
                        <div class="col-md-6 col-12 mb-3">
                            <label for="jobName">职位名称</label>
                            <input type="text" name="jobName" id="jobName" placeholder="请输入职位名称">
                        </div>
                        <div class="col-md-6 col-12 mb-3">
                            <label for="jobSalary">月薪</label>
                            <select id="jobSalary" name="jobSalary" placeholder="请选择月薪范围">
                                <option value="">请选择月薪范围</option>
                                <option value="不限">不限</option>
                                <option value="3k以下">3k以下</option>
                                <option value="3k-5k">3k-5k</option>
                                <option value="5k-10k">5k-10k</option>
                                <option value="10k-15k">10k-15k</option>
                                <option value="15k-20k">15k-20k</option>
                                <option value="25k-50k">25k-50k</option>
                                <option value="50k以上">50k以上</option>
                                <option value="面议">面议</option>
                            </select>
                        </div>
                        <div class="col-md-6 col-12 mb-3">
                            <label for="jobAddress">工作地点</label>
                            <select id="jobAddress" name="jobAddress">
                                <option value="不限">不限</option>
                                <option value="北京市">北京</option>
                                <option value="上海">上海</option>
                                <option value="广州">广州</option>
                                <option value="深圳">深圳</option>
                                <option value="杭州">杭州</option>
                                <option value="苏州">苏州</option>
                                <option value="成都">成都</option>
                                <option value="厦门">厦门</option>
                            </select>
                        </div>
                        <div class="col-md-6 col-12 mb-3">
                            <label for="jobEr">工作经验</label>
                            <select id="jobEr" name="jobEr">
                                <option value="不限">不限</option>
                                <option value="应届毕业生">应届毕业生</option>
                                <option value="3年以下">3年以下</option>
                                <option value="3-5年">3-5年</option>
                                <option value="5-10年">5-10年</option>
                                <option value="10年以上">10年以上</option>
                                <option value="无经验要求">无经验要求</option>
                            </select>
                        </div>
                        <div class="col-md-6 col-12 mb-3">
                            <label for="jobEducation">学历要求</label>
                            <select id="jobEducation" name="jobEducation">
                                <option value="不限">不限</option>
                                <option value="大专">大专</option>
                                <option value="本科">本科</option>
                                <option value="硕士">硕士</option>
                                <option value="博士">博士</option>
                                <option value="无学历要求">无学历要求</option>
                            </select>
                        </div>

                        <div class="col-md-6 col-12 mb-3">
                            <label for="jobType">工作性质</label>
                            <select id="jobType" name="jobType">
                                <option value="不限">不限</option>
                                <option value="全职">全职</option>
                                <option value="兼职">兼职</option>
                                <option value="实习">实习</option>
                            </select>
                        </div>

                        <div class="col-md-6 col-12 mb-3">
                            <label for="jobReleaseTime">职位发布时间</label>
                            <input type="date" name="jobReleaseTime" id="jobReleaseTime">
                        </div>

                        <div class="col-md-6 col-12 mb-3">
                            <label for="jobNumber">招聘人数</label>
                            <select id="jobNumber" name="jobNumber">
                                <option value="10人以下">10人以下</option>
                                <option value="10-50人">10-50人</option>
                                <option value="50-100人">50-100人</option>
                                <option value="100-200人">100-200人</option>
                                <option value="200人以上">200人以上</option>
                            </select>
                        </div>


                        <div class="col-12 mb-3">
                            <label for="jobWelfare">职位福利</label>
                            <textarea id="jobWelfare" name="jobWelfare" rows="5" maxlength="100" placeholder="请输入100字以内的职位福利描述"></textarea>
                        </div>

                        <div class="col-12 mb-3">
                            <label for="jobContent">职位内容</label>
                            <textarea id="jobContent" name="jobContent" rows="5" maxlength="100" placeholder="请输入100字以内的职位内容描述"></textarea>
                        </div>

                        <div class="col-12 mb-3">
                            <label for="jobRequirements">职位要求</label>
                            <textarea id="jobRequirements" name="jobRequirements" rows="5" maxlength="100" placeholder="请输入100字以内的职位要求描述"></textarea>
                        </div>

                        <div class="col-12 mb-3">
                            <input type="hidden" name="companyId" id="companyId" value="${sessionScope.currCompany.companyId}">
                            <button id="saveBtn"  onclick="check()" type="button" class="btn btn-primary px-5">发布职位</button>
                        </div>
                    </div>
                    <div class="row"></div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- 主体内容 End -->

<%@include file="../company/foot.jsp"%>
<script type="text/javascript">
    function check(){

        var jobName = document.getElementById("jobName").value;//工作名称
        var jobAddress = document.getElementById("jobAddress").value;//工作地址
        var jobSalary = document.getElementById("jobSalary").value;//月薪
        var jobEr = document.getElementById("jobEr").value;//经验要求
        var jobEducation = document.getElementById("jobEducation").value;//学历
        var jobType = document.getElementById("jobType").value;//工作类型
        var jobReleaseTime = document.getElementById("jobReleaseTime").value;//发布时间
        var jobNumber = document.getElementById("jobNumber").value;//招聘人数
        var jobWelfare = document.getElementById("jobWelfare").value;//职位福利
        var jobContent = document.getElementById("jobContent").value;//职位内容
        var jobRequirements = document.getElementById("jobRequirements").value;//职位要求
        var companyId = document.getElementById("companyId").value;//公司ID

        if(jobName.length==0){
            alert("职位名称不能为空");
            return false;
        }
        if(jobAddress.length==0){
            alert("工作地址不能为空");
            return false;
        }

        $.ajax({
            url:"${path}/job/toAddPost",
            data:{
                jobName:jobName,
                jobSalary:jobSalary,
                jobAddress:jobAddress,
                jobEr:jobEr,
                jobEducation:jobEducation,
                jobType:jobType,
                jobReleaseTime:jobReleaseTime,
                jobNumber:jobNumber,
                jobWelfare:jobWelfare,
                jobContent:jobContent,
                jobRequirements:jobRequirements,
                companyId:companyId,
            },
            type:"POST",
            dataType:"json",
            success:function(data){
                if("No" == data.str){
                    alert("您还没有登录，请先登录！");
                }else if("Yes" == data.str){
                    alert("发布职位成功");
                    var url="${path}/job/allJob?companyId=${sessionScope.currCompany.companyId}";
                    window.location.href=url;
                }else if("发布的职位名称已存在" == data.str){
                    alert("发布失败,发布的职位名称不可以重复");
                    return false;
                }else if("发布失败"==data.str){
                    alert("发布失败");
                    return false;
                }else{
                    alert("发布失败");
                  return false;
                }
            }
        });
    }
</script>

</body>
</html>