<%--
  Created by IntelliJ IDEA.
  User: shoaib
  Date: 26/7/17
  Time: 12:18 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:javascript src="jquery-2.2.0.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <h1>New User</h1>
            <hr>
            <form action="/login/newuser" method="post">
                <div class="form-group">
                    <label>First Name</label>
                    <input type="text" class="form-control" name="firstName" autofocus required>
                </div>
                <div class="form-group">
                    <label>Last Name</label>
                    <input type="text" class="form-control" name="lastName" required>
                </div>
                <div class="form-group">
                    <label>Email</label>
                    <input type="email" class="form-control" name="email" required>
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" class="form-control" name="password" required>
                </div>
                <div class="form-group">
                    <label>College Name</label>
                    <input type="text" class="form-control" value="SSGI" name="clgname" required>
                </div>
                <button type="submit" class="btn btn-success">SignUp</button>
                &nbsp;
                <g:link action="index"  class="btn btn-danger">Cancel</g:link>
            </form>
        </div>
    </div>
</div>

</body>
</html>