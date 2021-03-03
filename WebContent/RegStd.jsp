<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reg_Student</title>
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
<td><a href="AddResult.jsp"><font color="white" size="4"><center>Insert New Result</center></font></a></td>
<td style="background:red;color:white;text-align:center;height:30px">Registered Students</td>
<td><a href="AllStdResult.jsp"><font color="white" size="3"><center>All Student Result</center></font></a></td>
<td><a href="AdminLogin.html"><font color="white" size="3"><center><b>Logout</b></center></font></a></td>
</tr>
</table>
<br>

<table style="width:100%;border-collapse:collapse">
<tr style="color:white;background:red"><th><font size="7"><center>Registered Students</center></font></th></tr>
</table>
<table style="width:100%;border:5px solid red;">
<tr style="background:blue;color:white">
	<th>Branch</th>
	<th>Roll No</th>
	<th>Name</th>
	<th>Father's Name</th>
	<th>Gender</th>
	<th>Date of Birth</th>
</tr>
<%@page import="java.sql.*" %>
<%@page import="project.ConnectionProvider" %>
<%
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from stdDetail");
	while(rs.next())
	{
%>
<tr>
	<td><%=rs.getString(1) %></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getString(3) %></td>
	<td><%=rs.getString(4) %></td>
	<td><%=rs.getString(5) %></td>
	<td><%=rs.getString(6) %></td>
</tr>
<%}
	}
catch(Exception e)
{
	System.out.println("Exception !!!!!!");
}
%>
</table>

</body>
</html>