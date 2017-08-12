<%--
  Created by IntelliJ IDEA.
  User: shoaib
  Date: 2/8/17
  Time: 1:41 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>view</title>
    <meta name="layout" content="navbar">
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:javascript src="jquery-3.2.0.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
</head>

<body>


<div class="row">
    <div class="col-md-6">
        <form action="/admin/update/${companyInstance?.id}">
            <div class="form-group">
                <label>Company Id</label>
                <input type="text" class="form-control" value="${companyInstance?.companyId}" name="companyId">
            </div>
            <div class="form-group">
                <label>Company Name </label>
                <input type="text" class="form-control" value="${companyInstance?.companyName}" name="companyName">
            </div>
            <div class="form-group">
                <label>Percentage Criteria</label>
                <input type="tel" class="form-control" value="${companyInstance?.percentCriteria}" name="percentCriteria">
            </div>
            <div class="form-group">
                <label>Date Of Recruitment</label>
                <input type="date" class="form-control" value="${companyInstance?.dateOfRecruitment}" name="dateOfRecruitment">
            </div>
            <div class="form-group">
                <label>Number Of Recruitment</label>
                <input type="tel" class="form-control" value="${companyInstance?.numOfRecruitment}" name="numOfRecruitment">
            </div>
            <div class="form-group">
                <label>Branch</label>
                <input type="text" class="form-control" value="${companyInstance?.branch}" name="branch">
            </div>
            <button type="submit" class="btn btn-success">Update</button>
        </form>
    </div>
</div>
</body>
</html>