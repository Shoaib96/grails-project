<%--
  Created by IntelliJ IDEA.
  User: shoaib
  Date: 2/8/17
  Time: 1:50 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:javascript src="jquery-3.2.0.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <style>
    .table {
        margin-top: 3%;
    }
    /*.img {
        position: absolute;
        top: 0px;
        left: 0px;
        z-index: -1;
        width: 100%;
        height: 100%;
     }*/
</style>
</head>

<body>
%{--<asset:image src="bg-3-full.jpg" class="img"/>--}%
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1 style="text-align: center;">Company List</h1>
            <hr>
            <div style="background-color: white;">
            <table class="table table-bordered table-striped">
                <tr>
                    <th>Company Id</th>
                    <th>Company Name</th>
                    <th>Percentage Criteria</th>
                    <th>Date Of Recruitment</th>
                    <th>Number Of Recruitment</th>
                    <th>Branch</th>
                </tr>
                <g:each in = "${companyList}">
                    <tr>
                        <td>${it.companyId}</td>
                        <td>${it.companyName}</td>
                        <td>${it.percentCriteria}</td>
                        <td>${it.dateOfRecruitment}</td>
                        <td>${it.numOfRecruitment}</td>
                        <td>${it.branch}</td>
                    </tr>
                </g:each>
            </table>
                <div style="text-align: center;">
            <g:link action="navbar"  class="btn btn-primary">OK</g:link>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>