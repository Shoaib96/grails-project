<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>
        <g:layoutTitle default="Admin"/>
    </title>

    <g:layoutHead/>
    <style>
    .navbar {
        border-radius: 0;
    }
</style>
</head>

<body>
    <div class="navbar navbar-inverse">
        <ul class="nav navbar-nav">
            <li><a href="index">Home</a></li>
            <li><a href="viewList">Student</a></li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle navText" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Company<span class="caret"></span></a>
                <ul class="dropdown-menu" style="background-color: #222222;">
                    <li><a href="companyView" style=" color: #9d9d9d;">Company View</a></li>
                    <li><a href="companyRegister" style=" color: #9d9d9d;">Company Register</a></li>
                </ul>
            </li>
            <li><a href="/studentCrud/logout">Logout</a></li>
        </ul>
    </div>
<g:layoutBody/>
</body>
</html>
