<%--
  Created by IntelliJ IDEA.
  User: shoaib
  Date: 30/7/17
  Time: 4:01 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    %{--<meta name="layout" content="studentNav"/>--}%
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:javascript src="jquery-2.2.0.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
</head>
<body>
<g:if test = "${flash.message}">
    <div class="alert alert-success">
        <div>${flash.message}</div>
    </div>
</g:if>
    <div class="row">
        <div class="col-md-12">
            <table class="table table-bordered">
                <tr>
                    <th>University Roll No</th>
                    <th>College Id</th>
                    <th>Branch</th>
                    <th>Name Of Stud</th>
                    <th>Mob No</th>
                    <th>Email</th>
                    <th>Gender</th>
                    <th>Date</th>
                    <th>10<sup>th</sup></th>
                    <th>10<sup>th</sup> Board</th>
                    <th>10<sup>th</sup> Passing Year</th>
                    <th>12<sup>th</sup></th>
                    <th>12<sup>th</sup> Board</th>
                    <th>12<sup>th</sup> Passing Year</th>
                    <th>First Sem</th>
                    <th>Second Sem</th>
                    <th>Third Sem</th>
                    <th>Fourth Sem</th>
                    <th>Fivth Sem</th>
                    <th>Sixth Sem</th>
                    <th>Average</th>
                    <th>Current Backlog</th>
                    <th>Passing year</th>
                    <th>Home Town</th>
                    <th>Father's Name</th>
                    <th>Occupation</th>
                    <th>Address</th>
                    <th>Company Name</th>
                    <th>Action</th>
                </tr>
                <g:each in = "${stud}">
                    <tr>
                        <td>${it.universityRoll}</td>
                        <td>${it.clgId}</td>
                        <td>${it.branch}</td>
                        <td>${it.nameOfStud}</td>
                        <td>${it.mobno}</td>
                        <td>${it.email}</td>
                        <td>${it.gender}</td>
                        <td>${it.date}</td>
                        <td>${it.tenth}</td>
                        <td>${it.tenbrd}</td>
                        <td>${it.tenpyr}</td>
                        <td>${it.twelveth}</td>
                        <td>${it.twlbrd}</td>
                        <td>${it.twlpyr}</td>
                        <td>${it.firsem}</td>
                        <td>${it.secsem}</td>
                        <td>${it.thisem}</td>
                        <td>${it.fousem}</td>
                        <td>${it.fivsem}</td>
                        <td>${it.sixsem}</td>
                        <td>${it.avg}</td>
                        <td>${it.curback}</td>
                        <td>${it.poy}</td>
                        <td>${it.hmtown}</td>
                        <td>${it.fname}</td>
                        <td>${it.ocup}</td>
                        <td>${it.add}</td>
                        <td>${it.companyref.companyName}</td>
                        <td><g:link action="view" id="${it.id}" class="btn btn-primary">Update</g:link></td>
                    </tr>
                </g:each>
            </table>

                <g:link action="navbar" class="btn btn-primary" style="margin-left: 3%">Ok</g:link>
            </table>
                    </div>
    </div>
</body>
</html>