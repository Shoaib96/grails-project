<%--
  Created by IntelliJ IDEA.
  User: shoaib
  Date: 31/7/17
  Time: 12:30 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta name="layout" content="navbar">

    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:javascript src="jquery-3.2.0.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>

</head>

<body>
<g:if test = "${flash.message}">
    <div class="alert alert-success">
        <div>${flash.message}</div>
    </div>
</g:if>
<asset:image src="Picture1.png" style="width:100%; position: absolute; top: 0px; left: 0px; z-index: -1; height: 100%;" />
</body>
</html>