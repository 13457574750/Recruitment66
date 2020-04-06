<c:forEach items="${job}" var="job">

    <a href="${path}/user/showAJob?jobId=${job.jobId}&companyId=${job.company.companyId}" class="job-list">
        <div class="company-logo col-auto">
            <img src="${path}/assets/images/companies/company-1.png" alt="Company Logo">
        </div>
        <div class="salary-type col-auto order-sm-3">
            <span class="salary-range">$${job.jobSalary}</span>
            <span class="badge badge-success"><trans>${job.jobType}</trans></span>
        </div>
        <div class="content col">
            <h6 class="title"><trans>${job.jobName}</trans></h6>
            <ul class="meta">
                <li><strong class="text-primary"><i class="fa fa-map-marker"></i><trans>${company.companyName}</trans></strong></li>
                <li><strong class="text-primary"><i class="fa fa-map-marker"></i><trans>${job.jobAddress}</trans></strong></li>
                <li><strong class="text-primary"><i class="fa fa-map-marker"></i><trans>${job.jobEr}</trans></strong></li>
                <li><strong class="text-primary"><i class="fa fa-map-marker"></i><trans>${job.jobEducation}</trans></strong></li>
            </ul>
        </div>
    </a>
</c:forEach>

<p><h6 style="text-align: center"><a class="button" name="companyName" value="${company.companyName}" onclick="$('#target').toggle();">招聘职位</a></h6></p>
s