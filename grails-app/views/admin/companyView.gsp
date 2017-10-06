<%--
  Created by IntelliJ IDEA.
  User: shoaib
  Date: 2/8/17
  Time: 1:26 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="navbar">
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:javascript src="jquery-3.2.0.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <style>
    .table>tbody>tr>th, .table>tbody>tr>td {
        text-align: center;
        vertical-align: middle;
        padding: 6px;
    }
    .table {
         margin-top: 3%;
     }

</style>
</head>

<body>
<g:if test = "${flash.message}">
    <div class="alert alert-success">
        <div>${flash.message}</div>
    </div>
</g:if>
<g:if test = "${flash.foo}">
    <div class="alert alert-danger">
        <div>${flash.foo}</div>
    </div>
</g:if>

<div class="container">
<g:if test = "${companyList}">
    <div class="row">
        <div class="col-md-12">
            <h1 style="text-align: center;">Company List</h1>
            <hr>
            <div style="background-color: white;">
                <table class="table table-bordered table-striped">
                    <tr>
                        <th>Company Name</th>
                        <th>Tenth % Criteria</th>
                        <th>Twelfth % Criteria</th>
                        <th>Percentage Criteria</th>
                        <th>Date Of Recruitment</th>
                        <th>Number Of Recruitment</th>
                        <th>Branch</th>
                        <th>Action</th>
                    </tr>
                    <g:each in = "${companyList}">
                        <tr>
                            <td>${it.companyName}</td>
                            <td>${it.tenthCriteria}</td>
                            <td>${it.twelfthCriteria}</td>
                            <td>${it.percentCriteria}</td>
                            <td>${it.dateOfRecruitment}</td>
                            <td>${it.numOfRecruitment}</td>
                            <td>${it.branch}</td>
                            <td>
                                <g:link action="view" id="${it.id}" class="btn btn-primary btn-sm">Update</g:link>

                                <g:link action="deleteCompany" id="${it.id}" class="btn btn-danger btn-sm">Delete</g:link>
                            </td>
                        </tr>
                    </g:each>
                </table>
            </div>
        </div>
    </div>
</g:if>
    <g:else>
        <h1>No Company List to display</h1>
    </g:else>

</div>
</body>
</html>