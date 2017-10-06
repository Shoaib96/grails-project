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
    .navbar {
        height: 10%;
        background-color: #00224A;
        border-radius: 0;
        margin-bottom: 0;
    }
    .logo {
        height: 40px;
        width: 40px;
    }

    .footer {
        width: 100%;
        height: 13%;
        padding-top: 1px;
        background-color: #00224A;

    }
    p {
        text-align: center;
        color: white;
        margin-top: 37px;
    }
    .navbar-right {
        margin-top: 1%;
    }
</style>
</head>
<body>
    <nav class="navbar">
        <div class="container-fluid">

        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand">
                <asset:image src="collegeLogo.jpg" class="logo"/>
            </a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <div class="navbar-left">
                <h1 style="margin-bottom: 0; color: white;"><em>Training & Placement Cell</em></h1>
            </div>
        <form class="navbar-form navbar-right" action="/login/register" method="post">
            <div class="form-group">
                <input type="email" placeholder="Email" class="form-control" name="email" autofocus>
            </div>
            <div class="form-group">
                <input type="password" placeholder="Password" class="form-control" name="password">
            </div>
            <button type="submit" class="btn btn-primary">Login</button>
            <button type="submit" class="btn btn-success" formaction="/login/signup">SignUp</button>
        </form>
        </div>
        </div>
</nav>


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
            <p>Copyright &copy; 2017. Shoaib & Arpit All Rights Reserved</p>
    </div>
</body>
</html>