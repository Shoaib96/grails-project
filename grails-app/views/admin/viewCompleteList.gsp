<%--
  Created by IntelliJ IDEA.
  User: shoaib
  Date: 4/8/17
  Time: 12:32 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="navbar">
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:javascript src="jquery-3.2.0.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>

    <style>
        th, tr {
        text-align: center;
    }

    </style>
</head>

<body>
<div class="container">
            <h1 style="text-align: center;">About Student</h1>
            <hr>
    <div class="col-md-4">
            <table class="table table-bordered table-striped">
                <tr>
                    <th>University Roll No</th>
                    <td>${studentInstance?.studentref.universityRoll}</td>
                </tr>
                <tr>
                    <th>College Id</th>
                    <td>${studentInstance?.studentref.clgId}</td>

                </tr>
                <tr>
                    <th>Branch</th>
                    <td>${studentInstance?.studentref.branch}</td>

                </tr>
                <tr>
                    <th>Name Of Student</th>
                    <td>${studentInstance?.studentref.nameOfStud}</td>
                </tr>
                <tr>
                    <th>Mobile No</th>
                    <td>${studentInstance?.studentref.mobno}</td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td>${studentInstance?.studentref.email}</td>
                </tr>
                <tr>
                    <th>Gender</th>
                    <td>${studentInstance?.studentref.gender}</td>
                </tr>
                    <tr>
                    <th>Date</th>
                    <td>${studentInstance?.studentref.date}</td>
                </tr>
                <tr>
                    <th>10<sup>th</sup> %</th>
                    <td>${studentInstance?.studentref.tenth}</td>
                </tr>
                <tr>
                    <th>10<sup>th</sup> Board</th>
                    <td>${studentInstance?.studentref.twlbrd}</td>
                </tr>
            </table>
    </div>
    <div class="col-md-4">
    <table class="table table-bordered table-striped">

        <tr>
                    <th>10<sup>th</sup> Passing Year</th>
                    <td>${studentInstance?.studentref.tenpyr}</td>
                </tr>
                <tr>
                    <th>12<sup>th</sup></th>
                    <td>${studentInstance?.studentref.twelveth}</td>
                </tr>
                <tr>
                    <th>12<sup>th</sup> Board</th>
                    <td>${studentInstance?.studentref.twlbrd}</td>
                </tr>
                <tr>
                    <th>12<sup>th</sup> Passing Year</th>
                    <td>${studentInstance?.studentref.twlpyr}</td>
                </tr>

                <tr>
                    <th>1<sup>st</sup> Sem</th>
                    <td>${studentInstance?.studentref.firsem}</td>
                </tr>
                <tr>
                    <th>2<sup>nd</sup> Sem</th>
                    <td>${studentInstance?.studentref.secsem}</td>
                </tr>
                <tr>
                    <th>3<sup>rd</sup> Sem</th>
                    <td>${studentInstance?.studentref.thisem}</td>
                </tr>
                <tr>
                    <th>4<sup>th</sup> Sem</th>
                    <td>${studentInstance?.studentref.fousem}</td>
                </tr>
                <tr>
                    <th>5<sup>th</sup> Sem</th>
                    <td>${studentInstance?.studentref.fivsem}</td>
                </tr>
                <tr>
                    <th>6<sup>th</sup> Sem</th>
                    <td>${studentInstance?.studentref.sixsem}</td>
                </tr>
    </table>
    </div>
    <div class="col-md-4">
            <table class="table table-bordered table-striped">

                <tr>
                    <th>Average</th>
                    <td>${studentInstance?.studentref.avg}</td>
                </tr>


                <tr>
                    <th>Current Backlog</th>
                    <td>${studentInstance?.studentref.curback}</td>
                </tr>
                <tr>
                    <th>Passing year</th>
                    <td>${studentInstance?.studentref.poy}</td>
                </tr>
                <tr>
                    <th>Home Town</th>
                    <td>${studentInstance?.studentref.hmtown}</td>
                </tr>
                <tr>
                    <th>Father's Name</th>
                    <td>${studentInstance?.studentref.fname}</td>
                </tr>
                <tr>
                    <th>Occupation</th>
                    <td>${studentInstance?.studentref.ocup}</td>
                </tr>
                <tr>
                    <th>Address</th>
                    <td>${studentInstance?.studentref.add}</td>
                </tr>
                <tr>
                    <th>Company Name</th>
                    <td>${studentInstance?.companyref.companyName}</td>
                </tr>
                </table>
</div>
    <g:link action="delete" id="${studentInstance?.id}" class="btn btn-danger" style="margin-left: 15px;">Delete</g:link>
</div>
</body>
</html>