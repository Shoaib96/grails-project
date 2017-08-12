<%--
  Created by IntelliJ IDEA.
  User: shoaib
  Date: 4/8/17
  Time: 2:35 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="navbar">

    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:javascript src="jquery-3.2.0.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>

</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <form action="downloadList" method="post">
                <div class="form-group"><label>Enter file name</label>
                    <input type="text" class="form-control" name="filename">
                </div>
                <input type="submit" class="btn btn-primary" value="Submit">
            </form>
        </div>
    </div>
</div>
</body>
</html>