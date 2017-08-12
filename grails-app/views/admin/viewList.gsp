<%--
  Created by IntelliJ IDEA.
  User: shoaib
  Date: 31/7/17
  Time: 12:51 AM
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
    th {
        text-align: center;
    }
    tr {
        text-align: center;
    }
    </style>
</head>

<body>
<g:if test = "${flash.message}">
    <div class="alert alert-danger">
        <div>${flash.message}</div>
    </div>
</g:if>

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 style="text-align: center;">Student List</h1>
                <hr>
                <table class="table table-bordered table-striped">
                    <tr>
                        <th>University Roll No</th>
                        <th>College Id</th>
                        <th>Branch</th>
                        <th>Name Of Stud</th>
                        <th>Action</th>
                    </tr>
                    <g:each in = "${stud}">
                        <tr>
                            <td>${it.universityRoll}</td>
                            <td>${it.clgId}</td>
                            <td>${it.branch}</td>
                            <td>${it.nameOfStud}</td>
                              <td>
                            <g:link action="viewCompleteList" id="${it.id}" class="btn btn-primary">View</g:link>
                              </td>
                        </tr>
                    </g:each>
                </table>
                <g:link action="download" class="btn btn-primary">Download</g:link>
                 </div>
        </div>
    </div>
</body>
</html>