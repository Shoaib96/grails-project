<%--
  Created by IntelliJ IDEA.
  User: shoaib
  Date: 2/8/17
  Time: 1:07 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>companyRegister</title>
    <meta name="layout" content="navbar">

    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:javascript src="jquery-3.2.0.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>

</head>

<body>
<br>
<div class="container">
    <div class="row">

            <form action="/admin/companySave" method="post">
                <div class="col-md-4">
                <div class="form-group">
                    <label>Company ID</label>
                    <input type="text" class="form-control" name="companyId">
                </div>
                <div class="form-group">
                    <label>Company Name</label>
                    <input type="text" class="form-control" name="companyName">
                </div>
                <div class="form-group">
                    <label>Percentage Criteria</label>
                    <input type="tel" class="form-control" name="percentCriteria">
                </div>
                <div class="form-group">
                    <label>Date of Recruitment</label>
                    <input type="date" class="form-control" name="dateOfRecruitment">
                </div>
                <div class="form-group">
                    <label>Number of Recruitment</label>
                    <input type="tel" class="form-control"  name="numOfRecruitment">
                </div>
                <div class="form-group">
                    <label>Branch</label>
                    <input type="text" class="form-control"  name="branch">
                </div>
                </div>
                <div class="col-md-4">
                <div class="form-group">
                    <label>About</label>
                    <textarea class="form-control" name="about" rows="10" cols="10"></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
                &nbsp;
                <button type="reset" class="btn btn-danger">Cancel</button>
                </div>
               </form>
    </div>
</div>

</body>
</html>