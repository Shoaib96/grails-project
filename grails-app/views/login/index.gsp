<%--
  Created by IntelliJ IDEA.
  User: shoaib
  Date: 26/7/17
  Time: 12:21 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>

    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:javascript src="jquery-3.2.0.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">

    <style>

    .nav {
        height: 10%;
        background-color: #00224A;
        position: relative;
    }
    .logo {
        margin-bottom: 1px;
        margin-left: 20px;
        height: 40px;
        width: 40px;
    }
    em {
        position: absolute;
        margin-top: 12px;
        margin-left: 10%;
    }
    .form-inline {
        position: absolute;
        margin-top: 15px;
        margin-left: 55%;
    }
    .footer {
        width: 100%;
        height: 10%;
        padding-top: 1px;
        background-color: #00224A;

    }
    p {
        text-align: center;
        color: white;
        margin-top: 20px;
    }

</style>
</head>
<body>
<div class="nav navbar-default">
        <span class="h1"><em style="color: white;">Training & Placement Cell</em></span>
    <div class="navbar-brand">
        <asset:image src="collegeLogo.jpg" class="logo"/>
    </div>

    <form class="form-inline" action="/login/register" method="post">
        <div class="form-group">
            <input type="email" placeholder="Email" class="form-control" name="email" autofocus>
        </div>
        &nbsp;
        <div class="form-group">
            <input type="password" placeholder="Password" class="form-control" name="password">
        </div>
        &nbsp;
        <button type="submit" class="btn btn-primary">Login</button>
        &nbsp;
        <button type="submit" class="btn btn-success" formaction="/login/signup">SignUp</button>

    </form>

</div>


<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <asset:image src="college.jpg" class="img"/>
        </div>
        <div class="item">
            <asset:image src="s2.jpg" class="img"/>
        </div>
    <div class="item">
        <asset:image src="s3.jpg" class="img"/>
    </div>
    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
    <div class="footer">
            <p>Copyright &copy; 2017. EduPanda All Rights Reserved</p>
    </div>
</body>
</html>