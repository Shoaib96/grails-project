<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>
        <g:layoutTitle default="Admin"/>
    </title>

    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:javascript src="jquery-3.2.0.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <g:layoutHead/>
</head>

<body>
    <div class="navbar navbar-inverse">
        <ul class="nav navbar-nav">
            <li><a href="index">Home</a></li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle navText" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">View<span class="caret"></span></a>
                <ul class="dropdown-menu" style="background-color: #222222;">
                    <li><a href="viewList" style=" color: #9d9d9d;">Student</a></li>
                    <li><a href="companyView" style=" color: #9d9d9d;">Company</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle navText" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Register<span class="caret"></span></a>
                <ul class="dropdown-menu" style="background-color: #222222;">
                    <li><a href="companyRegister" style=" color: #9d9d9d;">Company</a></li>
                </ul>
            </li>

            <li class="dropdown">
                <a href="#" class="dropdown-toggle navText" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Account<span class="caret"></span></a>
                <ul class="dropdown-menu" style="background-color: #222222;">
                    <li><a href="/studentCrud/logout" style=" color: #9d9d9d;">Logout</a></li>
                </ul>
            </li>
        </ul>
    </div>
<g:layoutBody/>
</body>
</html>
