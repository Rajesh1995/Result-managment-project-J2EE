<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddResult</title>
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
<td><a href="AdminHome.jsp"><font color="white" size="3"><center>Add New Student</center></font></a></td>
<td style="background:red;color:white;text-align:center;height:30px"><font color="white" size="4"><center>Insert New Result</center></font></td>
<td><a href="RegStd.jsp"><font color="white" size="3"><center>Registered Student</center></font></a></td>
<td><a href="AllStdResult.jsp"><font color="white" size="3"><center>All Student Result</center></font></a></td>
<td><a href="AdminLogin.html"><font color="white" size="3"><center><b>Logout</b></center></font></a></td>
</tr>
</table>
<br>

<table style="width:100%;border-collapse:collapse">
<tr style="color:white;background:red"><th><font size="7"><center>Insert New Result</center></font></th></tr>
</table>



<form action="AddResult" method="post">
<table style="width:100%;border-collapse:collapse;border:5px solid red;">
<tr style="border:5px solid red">
<td>
<table style="width:50%;border-collapse:collapse;margin-left:auto;margin-right:auto;">
<tr><td><font size=6>Branch</font></td><td style="padding:10px 12px"><input type="text" name="branch" required style="width:300px;height:30px"></td></tr>
<tr><td><font size=6>Semester</font></td><td style="padding:10px 12px"><input type="text" name="sem" required style="width:300px;height:30px"></td></tr>
<tr><td><font size=6>Roll No</font></td><td style="padding:10px 12px"><input type="text" name="roll" required style="width:300px;height:30px"></td></tr>
</table>
</td>
</tr>
<tr><td>
<table style="width:50%;border-collapse:collapse;margin-left:auto;margin-right:auto;">
<tr style="color:white;border:15px"><td style="text-align:center;"><font size=6><b>Paper 1</b></font></td><td style="padding:10px 12px"><input type="text" name="paper1" style="width:300px;height:30px"></td></tr>
<tr style="color:white"><td><b><center><font size=6>Paper 2</font></center></b></td><td style="padding:10px 12px"><input type="text" name="paper2" style="width:300px;height:30px"></td></tr>
<tr style="color:white"><td><b><center><font size=6>Paper 3</font></center></b></td><td style="padding:10px 12px"><input type="text" name="paper3" style="width:300px;height:30px"></td></tr>
<tr style="color:white"><td><b><center><font size=6>Paper 4</font></center></b></td><td style="padding:10px 12px"><input type="text" name="paper4" style="width:300px;height:30px"></td></tr>
<tr style="color:white"><td><b><center><font size=6>Paper 5</font></center></b></td><td style="padding:10px 12px"><input type="text" name="paper5" style="width:300px;height:30px"></td></tr>
<tr style="color:white"><td><b><center><font size=6>Paper 6</font></center></b></td><td style="padding:10px 12px"><input type="text" name="paper6" style="width:300px;height:30px"></td></tr>
<tr style="color:white;"><td></td><td style="padding:10px 80px"><input type="submit" value="SUBMIT" style="width:150px;height:50px;background:blue;color:white"></td></tr>
</table>
</td></tr>
</table>
</form>


</body>
</html>