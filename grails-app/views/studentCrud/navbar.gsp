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
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
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
<g:if test = "${flash.message}">
    <div class="alert alert-success">
        <div>${flash.message}</div>
    </div>
</g:if>
<asset:image src="stud1.jpg" class="img"/>
</body>
</html>