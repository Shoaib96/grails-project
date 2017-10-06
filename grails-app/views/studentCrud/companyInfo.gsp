<%--
  Created by IntelliJ IDEA.
  User: shoaib
  Date: 2/8/17
  Time: 11:56 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>companyInfo</title>
    <meta name="layout" content="studentNav"/>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:javascript src="jquery-3.2.0.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <style>
    /*.img {
        position: absolute;
        top: 0px;
        left: 0px;
        z-index: -1;
        width: 100%;
        height: 100%;
    }*/
    .inv {
        display: none;
    }
    .container {
        margin-top: 3%;
    }
    .info {
        color: gray;
        font-size: 20px;
    }
</style>
</head>

<body>
%{--<asset:image src="aboutCompany.jpg" class="img"/>--}%
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <label>Select Company Name</label>
    <select id="target" class="form-control">
        <option value="">Select Company</option>
        <g:each in = "${companyList}">
            <option value="${it.id}">${it.companyName}</option>
        </g:each>
    </select>
                <br>
        <g:each in = "${companyList}">
            <div id="${it.id}" class="inv"><span class="info">${it.about}</span>
            </div>
        </g:each>
                <br>
            </div>
        </div>
    </div>
    <script>
        document
            .getElementById('target')
            .addEventListener('change', function () {
                'use strict';
                var vis = document.querySelector('.vis'),
                    target = document.getElementById(this.value);
                if (vis !== null) {
                    vis.className = 'inv';
                }
                if (target !== null ) {
                    target.className = 'vis';
                }
            });
    </script>
</body>
</html>