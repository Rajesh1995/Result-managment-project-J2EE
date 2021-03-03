<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin_Home</title>
<style>
a{
text-decoration:none;

}
</style>
</head>
<body style="background:cyan;"> 
<%

if(session.getAttribute("uname")==null)
{
	response.sendRedirect("AdminLogin.html");
}

%>
<table style="width:100%;height:100px;background:white">
<tr>
<td><img src="logo.png" align="left"width="100" height="100"></img></td>
<td><img src="meri.jpeg" align="center"width="150" height="100"></td>
</tr>
</table>
<br>
<table style="width:100%;background:blue;border-collapse:collapse">
<tr>
<td style="background:red;color:white;text-align:center;height:30px">Add New Student</td>
<td><a href="AddResult.jsp"><font color="white" size="4"><center>Insert New Result</center></a></font></td>
<td><a href="RegStd.jsp"><font color="white" size="3"><center>Registered Student</center></font></a></td>
<td><a href="AllStdResult.jsp"><font color="white" size="3"><center>All Student Result</center></font></a></td>
<td><a href="AdminLogin.html"><font color="white" size="3"><center><b>Logout</b></center></font></a></td>
</tr>
</table>
<br>
<form action="addStudent" method="post">
<table style="width:100%;border-collapse:collapse">
<tr style="color:white;background:red"><th><font size="7"><center>Add New Student</center></font></th></tr>
</table>
<table style="width:100%;border-collapse:collapse;border:5px solid red;">
<tr><td>
<table style="width:60%;border-collapse:collapse;margin-left:auto;margin-right:auto;">
<tr style="color:white;border:15px"><td style="text-align:center;"><font size=6><b>Course Name</b></font></td><td style="padding:10px 12px"><input type="text" name="course" style="width:300px;height:30px"></td></tr>
<tr style="color:white"><td><b><center><font size=6>Roll Number</font></center></b></td><td style="padding:10px 12px"><input type="text" name="roll" style="width:300px;height:30px"></td></tr>
<tr style="color:white"><td><b><center><font size=6>Studen's Name</font></center></b></td><td style="padding:10px 12px"><input type="text" name="name" style="width:300px;height:30px"></td></tr>
<tr style="color:white"><td><b><center><font size=6>Father's Name</font></center></b></td><td style="padding:10px 12px"><input type="text" name="fname" style="width:300px;height:30px"></td></tr>
<tr style="color:white"><td><b><center><font size=6>Gender</font></center></b></td><td style="padding:10px 12px"><input type="text" name="gender" style="width:300px;height:30px"></td></tr>
<tr style="color:white"><td><b><center><font size=6>Birth of Date</font></center></b></td><td style="padding:10px 12px"><input type="text" name="dob" style="width:300px;height:30px"></td></tr>
<tr style="color:white;"><td></td><td style="padding:10px 80px"><input type="submit" value="SUBMIT" style="width:150px;height:50px;background:blue;color:white"></td></tr>
</table>
</td></tr>
</table>
</form>


</body>
</html>