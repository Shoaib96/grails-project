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
            <h1>Download</h1>
            <hr>
            <form action="downloadList" method="post">
                <label>Select Company Name</label>
                <select class="form-control" name="id">
                    <option>Select Company</option>
                    <g:each in="${companyList}">
                        <option value="${it.id}">${it.companyName}</option>
                    </g:each>
                </select>
                <br>
                <div class="form-group"><label>Enter file name with csv extension</label>
                    <input type="text" class="form-control" name="filename">
                </div>
                <br>
                <button class="btn btn-primary">Ok</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>