<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Err_Result</title>
<style>
.white-box
{
	height:450px;
	width:300px;
	margin:6% auto;
	background:#fff;
	position:relative;
	padding:5px;
}

</style>
<link rel="stylesheet" href="style.css">
</head>
<body style="background-image:linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7)),url('image7.jpeg');background-size:cover; box-shadow: insert 0 0 5px 2px #282a2d">
<div class="white-box">
	<div class="img-Search">
	<center><img src="result.png" width="200" height="150"></center>
	<center><font color="red" size=5>Invalid Input</font></center> 
	<form class="Search" action="Result.jsp" method="post">
	<input type="text" class="input-field" placeholder=" Enter Branch" name="branch" required><br>
	<input type="text" class="input-field" placeholder="Enter Semester" name="sem" required><br>
	<input type="text" class="input-field" placeholder="Enter Roll No" name="roll" required><br>
	<button type="submit" class="submit-btd">Search</button>
	</form>
	<form class="Search" action="index.html" method="post">
	<button type="submit" class="submit-btd" style="margin:10px 21px">Back</button>
	</form>
	
	</div>
</div>
</body>
</html>