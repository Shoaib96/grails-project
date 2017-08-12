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

        .table {
            background-color: #98A9BB;
        }
    </style>
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1 style="text-align: center;">About Student</h1>
            <hr>
            <div style="background-color: white">
            <table class="table table-bordered table-striped">
                <tr>
                    <th>University Roll No</th>
                    <td>${studentInstance?.universityRoll}</td>
                </tr>
                <tr>
                    <th>College Id</th>
                    <td>${studentInstance?.clgId}</td>

                </tr>
                <tr>
                    <th>Branch</th>
                    <td>${studentInstance?.branch}</td>

                </tr>
                <tr>
                    <th>Name Of Stud</th>
                    <td>${studentInstance?.nameOfStud}</td>
                </tr>
                <tr>
                    <th>Mob No</th>
                    <td>${studentInstance?.mobno}</td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td>${studentInstance?.email}</td>
                </tr>
                <tr>
                    <th>Gender</th>
                    <td>${studentInstance?.gender}</td>
                </tr>
                <tr>
                    <th>Date</th>
                    <td>${studentInstance?.date}</td>
                </tr>
                <tr>
                    <th>Tenth</th>
                    <td>${studentInstance?.tenth}</td>
                </tr>
                <tr>
                    <th>Tenth Board</th>
                    <td>${studentInstance?.twlbrd}</td>
                </tr>
                <tr>
                    <th>Tenth Passing Year</th>
                    <td>${studentInstance?.tenpyr}</td>
                </tr>
                <tr>
                    <th>Twelve</th>
                    <td>${studentInstance?.twelveth}</td>
                </tr>
                <tr>
                    <th>Twelve Board</th>
                    <td>${studentInstance?.twlbrd}</td>
                </tr>
                <tr>
                    <th>Twelve Passing Year</th>
                    <td>${studentInstance?.twlpyr}</td>
                </tr>
                <tr>
                    <th>Fir Sem</th>
                    <td>${studentInstance?.firsem}</td>
                </tr>
                <tr>
                    <th>Sec Sem</th>
                    <td>${studentInstance?.secsem}</td>
                </tr>
                <tr>
                    <th>Thi Sem</th>
                    <td>${studentInstance?.thisem}</td>
                </tr>
                <tr>
                    <th>Fou Sem</th>
                    <td>${studentInstance?.fousem}</td>
                </tr>
                <tr>
                    <th>Fiv Sem</th>
                    <td>${studentInstance?.fivsem}</td>
                </tr>
                <tr>
                    <th>Six Sem</th>
                    <td>${studentInstance?.sixsem}</td>
                </tr>
                <tr>
                    <th>Average</th>
                    <td>${studentInstance?.avg}</td>
                </tr>
                <tr>
                    <th>Current Backlog</th>
                    <td>${studentInstance?.curback}</td>
                </tr>
                <tr>
                    <th>Passing year</th>
                    <td>${studentInstance?.poy}</td>
                </tr>
                <tr>
                    <th>Home Town</th>
                    <td>${studentInstance?.hmtown}</td>
                </tr>
                <tr>
                    <th>Father's Name</th>
                    <td>${studentInstance?.fname}</td>
                </tr>
                <tr>
                    <th>Occupation</th>
                    <td>${studentInstance?.ocup}</td>
                </tr>
                <tr>
                    <th>Address</th>
                    <td>${studentInstance?.add}</td>
                </tr>
                <tr>
                    <th>Company Name</th>
                    <td>${studentInstance?.companyName}</td>
                </tr>
                <tr>
                    <th>Action</th>
                    <td><g:link action="delete" id="${studentInstance?.id}" class="btn btn-danger">Delete</g:link></td>
                </tr>
            </table>
            </div>
            <div style="margin-left: 2%">
                <g:link action="viewList"  class="btn btn-primary" style="width: 80px">Done</g:link>
            </div>
        </div>
    </div>
</div>
</body>
</html>