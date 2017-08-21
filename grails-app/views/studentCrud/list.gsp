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
    <meta name="layout" content="studentNav"/>
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
<div class="container">
    <h1>Profile</h1>
    <hr>
    <div class="row">
    <div class="col-md-4">
            <table class="table table-bordered">
              <g:each in = "${stud}">
                <tr>
                    <th>University Roll No</th>
                    <td>${it.universityRoll}</td>
                </tr>
                <tr>
                    <th>College Id</th>
                    <td>${it.clgId}</td>
                </tr>
                <tr>
                    <th>Branch</th>
                    <td>${it.branch}</td>
                </tr>
                <tr>
                    <th>Name Of Stud</th>
                    <td>${it.nameOfStud}</td>
                </tr>
                <tr>
                    <th>Mob No</th>
                    <td>${it.mobno}</td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td>${it.email}</td>
                </tr>
                <tr>
                    <th>Gender</th>
                    <td>${it.gender}</td>
                </tr>
                <tr>
                    <th>Date</th>
                    <td>${it.date}</td>
                </tr>
                <tr>
                    <th>10<sup>th</sup></th>
                    <td>${it.tenth}</td>
                </tr>
                <tr>
                    <th>10<sup>th</sup> Board</th>
                    <td>${it.tenbrd}</td>
                </tr>
              </g:each>
            </table>
    </div>
        <div class="col-md-4">
            <table class="table table-bordered">
                <g:each in = "${stud}">
                    <tr>
                    <th>10<sup>th</sup> Passing Year</th>
                    <td>${it.tenpyr}</td>
                </tr>
                <tr>
                    <th>12<sup>th</sup></th>
                    <td>${it.twelveth}</td>
                </tr>
                <tr>
                    <th>12<sup>th</sup> Board</th>
                    <td>${it.twlbrd}</td>
                </tr>
                <tr>
                    <th>12<sup>th</sup> Passing Year</th>
                    <td>${it.twlpyr}</td>
                </tr>

               <tr>
                    <th>First Sem</th>
                    <td>${it.firsem}</td>
                </tr>
                <tr>
                    <th>Second Sem</th>
                    <td>${it.secsem}</td>
                </tr>
                <tr>
                    <th>Third Sem</th>
                    <td>${it.thisem}</td>
                </tr>
                <tr>
                    <th>Fourth Sem</th>
                    <td>${it.fousem}</td>
                </tr>
                <tr>
                    <th>Fivth Sem</th>
                    <td>${it.fivsem}</td>
                </tr>
                <tr>
                    <th>Sixth Sem</th>
                    <td>${it.sixsem}</td>
                </tr>
                </g:each>
            </table>
        </div>
        <div class="col-md-4">
            <table class="table table-bordered">
                <g:each in = "${stud}">
                    <tr>
                    <th>Average</th>
                    <td>${it.avg}</td>
                </tr>
                <tr>
                    <th>Current Backlog</th>
                    <td>${it.curback}</td>
                </tr>
                <tr>
                    <th>Passing year</th>
                    <td>${it.poy}</td>
                </tr>
                <tr>
                    <th>Home Town</th>
                    <td>${it.hmtown}</td>
                </tr>
                <tr>
                    <th>Father's Name</th>
                    <td>${it.fname}</td>
                </tr>
                <tr>
                    <th>Occupation</th>
                    <td>${it.ocup}</td>
                </tr>
                <tr>
                    <th>Address</th>
                    <td>${it.add}</td>
                </tr>
                <tr>
                    <th>Action</th>
                    <td><g:link action="view" id="${it.id}" class="btn btn-primary">Update</g:link></td>
                </tr>
              </g:each>
            </table>
    </div>
    </div>
</div>
</body>
</html>