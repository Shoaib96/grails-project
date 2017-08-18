<%--
  Created by IntelliJ IDEA.
  User: shoaib
  Date: 1/8/17
  Time: 2:05 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="studentNav"/>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:javascript src="jquery-2.2.0.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>

<style>

    .img {
        width: 100%;
        height: 100%;
        position: absolute;
        left: 0px;
        top: 0px;
        z-index: -1;
    }
</style>

</head>
<body>
<div class="row">
    <div class="col-md-3">
<g:if test = "${flash.message}">
    <div class="alert alert-success">
        <div>${flash.message}</div>
    </div>
</g:if>
    </div>
</div>
<asset:image src="stud1.jpg" class="img"/>
</body>
</html>