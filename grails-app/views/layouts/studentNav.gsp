<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>
        <g:layoutTitle default="Student"/>
    </title>

    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:javascript src="jquery-3.2.0.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>

    <g:layoutHead/>
</head>

<body>
<div class="navbar" style="background-color: #0093C1;">
    <ul class="navbar-nav nav">
        <li><a href="/studentCrud/navbar" style="color: black;">Home</a></li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="color: black;">My Information<span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="list">View</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="color: black;">Placement<span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="companyView">Qualified Company</a></li>
                <li><a href="companyInfo">Company Information</a></li>
                <li><a href="index">Register</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="color: black;">Account<span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="logout">Logout</a></li>
            </ul>
        </li>
    </ul>

</div>
<g:layoutBody/>
</body>
</html>
