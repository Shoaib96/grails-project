<%--
  Created by IntelliJ IDEA.
  User: shoaib
  Date: 26/7/17
  Time: 12:26 AM
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

<div class="container">

<g:if test = "${message}">
        <div class="alert alert-info">
            <div><h1>${message}</h1></div>
        </div>
    </g:if>

<g:else>
    <h1>STUDENT DETAILS</h1>
    <hr>
    <div class="row">
        <form action="/studentCrud/dataSave" method="post">

        <div class="col-md-2">
                <div class="form-group">
                    <label>University Roll Number:</label>
                    <input type="tel" class="form-control bgColor" name="universityRoll"  required>
                </div>
                <div class="form-group">
                    <label>College ID</label>
                    <input type="text" class="form-control bgColor" name="clgId" required>
                </div>
                <div class="form-group">
                    <label>Branch</label>
                    <input type="text" class="form-control bgColor" name="branch" required>
                </div>
                <div class="form-group">
                    <label>Name Of Student</label>
                    <input type="text" class="form-control bgColor" name="nameOfStud" required>
                </div>
                <div class="form-group">
                    <label>Mob no</label>
                    <input type="tel" class="form-control bgColor" name="mobno" required>
                </div>
                <div class="form-group">
                    <label>Email</label>
                    <input type="email" class="form-control bgColor" name="email" required>
                </div>
        </div>
            <div class="col-md-2">

                <div class="form-group">
                    <label>Gender</label>
                    <input type="text" class="form-control bgColor" name="gender" required>
                </div>

                <div class="form-group">
                    <label>DATE OF BIRTH</label>
                    <input type="date" class="form-control bgColor" name="date" required>
                </div>
                <div class="form-group">
                    <label>10th %</label>
                    <input type="tel" class="form-control bgColor" name="tenth" required>
                </div>


                <div class="form-group">
                    <label>Board</label>
                    <input type="text" class="form-control bgColor" name="tenbrd" required>
                </div>

                <div class="form-group">
                    <label>Pass Year</label>
                    <input type="tel" class="form-control bgColor" name="tenpyr" required>
                </div>
                <div class="form-group">
                    <label>12th %</label>
                    <input type="tel" class="form-control bgColor" name="twelveth" required>
                </div>
            </div>
            <div class="col-md-2">

                <div class="form-group">
                    <label>Board</label>
                    <input type="text" class="form-control bgColor" name="twlbrd" required>
                </div>
                <div class="form-group">
                    <label>Pass Year</label>
                    <input type="tel" class="form-control bgColor" name="twlpyr" required>
                </div>
                <div class="form-group">
                    <label>1st Sem Percentage</label>
                    <input type="tel" class="form-control bgColor" name="firsem" required>
                </div>
                <div class="form-group">
                    <label>2nd Sem Percentage</label>
                    <input type="tel" class="form-control bgColor" name="secsem" required>
                </div>
                <div class="form-group">
                    <label>3rd Sem Percentage</label>
                    <input type="tel" class="form-control bgColor" name="thisem" required>
                </div>
                <div class="form-group">
                    <label>4th Sem Percentage</label>
                    <input type="tel" class="form-control bgColor" name="fousem" required>
                </div>
            </div>
            <div class="col-md-2">

                <div class="form-group">
                    <label>5th Sem Percentage</label>
                    <input type="tel" class="form-control bgColor" name="fivsem" required>
                </div>

                <div class="form-group">
                    <label>6th Sem Percentage</label>
                    <input type="tel" class="form-control bgColor" name="sixsem" required>
                </div>

                <div class="form-group">
                    <label>Overall Percentage</label>
                    <input type="tel" class="form-control bgColor" name="avg" required>
                </div>
                <div class="form-group">
                    <label>Current Backlogs</label>
                    <input type="text" class="form-control bgColor" name="curback" required>
                </div>
                <div class="form-group">
                    <label>Pass Out Year</label>
                    <input type="tel" class="form-control bgColor" name="poy" required>
                </div>
                <div class="form-group">
                    <label>Home Town</label>
                    <input type="text" class="form-control bgColor" name="hmtown" required>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <label>Father's Name</label>
                    <input type="text" class="form-control bgColor" name="fname" required>
                </div>
                <div class="form-group">
                    <label>Occupation</label>
                    <input type="text" class="form-control bgColor" name="ocup" required>
                </div>
                <div class="form-group">
                    <label>Corresponding Address</label>
                    <input type="text" class="form-control bgColor" name="add" required>
                </div>
                <div class="form-group">
                    <label>Enter Company Name</label>
                    <select name="cmp" class="form-control bgColor" required>
                        <option></option>
                        <g:each in = "${companyList}">
                        <option value="${it.id}">${it.companyName}</option>
                        </g:each>
                    </select>
                </div>
            </div>
            <div class="col-md-2">
                <button type="submit" class="btn btn-success">Submit</button>
            </div>
        </form>

        </div>
</div>
</g:else>
    </div>
</body>
</html>