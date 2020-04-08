<div class="job-list-details">
    <div class="job-details-head row mx-0">
        <div class="company-logo col-auto">
            <a onclick="show('${applyList_.job.company.companyId}','${applyList_.companyName}','${applyList_.companyCreateTime}','${applyList_.jobId}',
                    '${applyList_.jobName}','${applyList_.jobAddress}','${applyList_.jobSalary}','${applyList_.jobEr}','${applyList_.jobEducation}',
                    '${applyList_.jobReleaseTime}','${applyList_.jobType}','${sessionScope.currUser.userId}','${sessionScope.currUser.userRealName}')">
                <img src="${path}/assets/images/companies/company-1.png" alt="Company Logo"></a>
        </div>
        <div class="salary-type col-auto order-sm-3">
            <span class="badge badge-success"><trans>通知面试</trans></span>
        </div>
        <div class="salary-type col-auto order-sm-3">
                            <span class="badge badge-danger"><trans><a
                                    href="${path}/apply/deleteApply?applyId=${applyList_.applyId}&userId=${sessionScope.currUser.userId}"
                                    onclick="return confirm('确定要拒绝吗？');">拒绝</a></trans></span>
        </div>
        <div class="content col">
            <ul class="meta">
                <li>
                    <h6 class="title">
                        <trans>${user.userRealName}的简历</trans>
                    </h6>
                </li>
                <li><strong class="text-primary"><i class="fa fa-map-marker"></i>
                    <trans>投递时间：</trans>
                </strong></li>
            </ul>
            <ul class="meta">
                <li><strong class="text-primary"><i class="fa fa-map-marker"></i>
                    <trans>${user.userRealName}</trans>
                </strong></li>
                <li><strong class="text-primary"><i class="fa fa-map-marker"></i>
                    <trans>${user.userSex}</trans>
                </strong></li>
                <li><strong class="text-primary"><i class="fa fa-map-marker"></i>
                    <trans>${user.userEducation}</trans>
                </strong></li>
                <li><strong class="text-primary"><i class="fa fa-map-marker"></i>
                    <trans>${user.userUniversity}</trans>
                </strong></li>
                <li><strong class="text-primary"><i class="fa fa-map-marker"></i>
                    <trans>${user.userMajor}</trans>
                </strong></li>
            </ul>
            <ul class="meta">
                <li><strong class="text-primary"><i class="mdi mdi-cellphone"></i>
                    <trans>${user.userPhone}</trans>
                </strong></li>
                <li><strong class="text-primary"><i class="mdi mdi-email-outline"></i>
                    <trans>${user.userEmail}</trans>
                </strong></li>
            </ul>
            <ul class="meta">
                <li><strong class="text-primary"><i class="fa fa-map-marker"></i>
                    <trans>应聘职位：${user.userRealName}</trans>
                </strong></li>
            </ul>
        </div>
    </div>
</div>
