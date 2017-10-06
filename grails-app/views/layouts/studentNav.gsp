<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>
        <g:layoutTitle default="Student"/>
    </title>

    <g:layoutHead/>
    <style>
    .navbar {
        border-radius: 0;
    }
</style>
</head>

<body>
<div class="navbar" style="background-color: #0093C1;">
    <ul class="navbar-nav nav">
        <li><a href="/studentCrud/navbar" style="color: black;">Home</a></li>
        <li><a href="list"style="color: black;">Profile</a></li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="color: black;">Placement<span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="companyView">Qualified Company</a></li>
                <li><a href="companyInfo">Company Information</a></li>
                <li><a href="index">Register</a></li>
            </ul>
        </li>
        <li><a href="logout" style="color: black;">Logout</a></li>
    </ul>

</div>
<g:layoutBody/>
</body>
</html>
