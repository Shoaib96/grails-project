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
<ul class="nav nav-tabs">
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">My Information<span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="list">View</a></li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Placement<span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="companyView">Qualified Company</a></li>
            <li><a href="companyInfo">Company Information</a></li>
            <li><a href="index">Register</a></li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Account<span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="logout">Logout</a></li>
        </ul>
    </li>
</ul>

<asset:image src="stud1.jpg" class="img"/>
</body>
</html>