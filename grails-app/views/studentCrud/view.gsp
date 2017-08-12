<%--
  Created by IntelliJ IDEA.
  User: shoaib
  Date: 1/8/17
  Time: 2:10 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <style>
        .bgColor {
            background-color: transparent;
        }
        .container {
            margin-top: 2%;
        }
    </style>

</head>

<body style="background-color: #f8ceff ">
<div class="container">
<div class="row">
    <div class="col-md-6">
        <form action="/studentCrud/update/${studentInstance?.id}">
            <div class="form-group">
                <label>University Roll Number:</label>
                <input type="tel" class="form-control bgColor" value="${studentInstance?.universityRoll}" name="universityRoll">
            </div>
            <div class="form-group">
                <label>College ID</label>
                <input type="text" class="form-control bgColor" value="${studentInstance?.clgId}" name="clgId">
            </div>
            <div class="form-group">
                <label>Branch</label>
                <input type="text" class="form-control bgColor" value="${studentInstance?.branch}" name="branch">
            </div>
            <div class="form-group">
                <label>Name Of Student</label>
                <input type="text" class="form-control bgColor" value="${studentInstance?.nameOfStud}" name="nameOfStud">
            </div>
            <div class="form-group">
                <label>Mob no</label>
                <input type="tel" class="form-control bgColor" value="${studentInstance?.mobno}" name="mobno">
            </div>
            <div class="form-group">
                <label>email</label>
                <input type="email" class="form-control bgColor" value="${studentInstance?.email}" name="email">
            </div>
            <div class="form-group">
                <label>Gender</label>
                <input type="text" class="form-control bgColor" value="${studentInstance?.gender}" name="gender">
            </div>
            <div class="form-group">
                <label>DATE OF BIRTH (DD/MM/YYYY)</label>
                <input type="text" class="form-control bgColor" value="${studentInstance?.date}" name="date">
            </div>
            <div class="form-group">
                <label>10th %</label>
                <input type="tel" class="form-control bgColor" value="${studentInstance?.tenth}" name="tenth">
            </div>
            <div class="form-group">
                <label>Board</label>
                <input type="text" class="form-control bgColor" value="${studentInstance?.tenbrd}" name="tenbrd">
            </div>
            <div class="form-group">
                <label>Pass Year</label>
                <input type="tel" class="form-control bgColor" value="${studentInstance?.tenpyr}" name="tenpyr">
            </div>
            <div class="form-group">
                <label>12th %</label>
                <input type="tel" class="form-control bgColor" value="${studentInstance?.twelveth}" name="twelveth">
            </div>
            <div class="form-group">
                <label>Board</label>
                <input type="text" class="form-control bgColor" value="${studentInstance?.twlbrd}" name="twlbrd">
            </div>
            <div class="form-group">
                <label>Pass Year</label>
                <input type="tel" class="form-control bgColor" value="${studentInstance?.twlpyr}" name="twlpyr">
            </div>
            <div class="form-group">
                <label>1st Sem Percentage</label>
                <input type="tel" class="form-control bgColor" value="${studentInstance?.firsem}" name="firsem">
            </div>
            <div class="form-group">
                <label>2nd Sem Percentage</label>
                <input type="tel" class="form-control bgColor" value="${studentInstance?.secsem}" name="secsem">
            </div>
            <div class="form-group">
                <label>3rd Sem Percentage</label>
                <input type="tel" class="form-control bgColor" value="${studentInstance?.thisem}" name="thisem">
            </div>
            <div class="form-group">
                <label>4th Sem Percentage</label>
                <input type="tel" class="form-control bgColor" value="${studentInstance?.fousem}" name="fousem">
            </div>
            <div class="form-group">
                <label>5th Sem Percentage</label>
                <input type="tel" class="form-control bgColor" value="${studentInstance?.fivsem}" name="fivsem">
            </div>
            <div class="form-group">
                <label>6th Sem Percentage</label>
                <input type="tel" class="form-control bgColor" value="${studentInstance?.sixsem}" name="sixsem">
            </div>
            <div class="form-group">
                <label>Overall Percentage{(((1+2)/2)+3+4+5+6)/5</label>
                <input type="tel" class="form-control bgColor" value="${studentInstance?.avg}" name="avg">
            </div>
            <div class="form-group">
                <label>Current Backlogs</label>
                <input type="tel" class="form-control bgColor" value="${studentInstance?.curback}" name="curback">
            </div>
            <div class="form-group">
                <label>Pass Out Year</label>
                <input type="tel" class="form-control bgColor" value="${studentInstance?.poy}" name="poy">
            </div>
            <div class="form-group">
                <label>Home Town</label>
                <input type="text" class="form-control bgColor" value="${studentInstance?.hmtown}" name="hmtown">
            </div>
            <div class="form-group">
                <label>Father's Name</label>
                <input type="text" class="form-control bgColor" value="${studentInstance?.fname}" name="fname">
            </div>
            <div class="form-group">
                <label>Occupation</label>
                <input type="text" class="form-control bgColor" value="${studentInstance?.ocup}" name="ocup">
            </div>
            <div class="form-group">
                <label>Corresponding Address</label>
                <input type="text" class="form-control bgColor" value="${studentInstance?.add}" name="add">
            </div>
            <button type="submit" class="btn btn-success">Update</button>

        </form>
    </div>
</div>
</div>
</body>
</html>