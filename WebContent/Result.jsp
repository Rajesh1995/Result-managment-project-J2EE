<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<style>
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
 border: 2px solid rgba(255,255,255,0.3);
}

td {
  border: 2px solid #726E6D;
  padding: 15px;
  color:black;
  text-align:center;
}

html {
  font-family:arial;
  font-size: 25px;
}

thead{
  font-weight:bold;
  text-align:center;
  background: #625D5D;
  color:white;
}




</style>
<style>
table{
  width:100%;
  table-layout: fixed;
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
 border: 2px solid rgba(255,255,255,0.3);
}



@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}

</style>
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*"%>
<%
try {
	String branch=request.getParameter("branch");
	String sem=request.getParameter("sem");
	String roll=request.getParameter("roll");
	String query="select * from stdDetail inner join StudentResult on stdDetail.roll=StudentResult.Roll and stdDetail.course=StudentResult.branch and StudentResult.Roll='"+roll+"' and StudentResult.Semester='"+sem+"' and StudentResult.branch='"+branch+"'";
			
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from stdDetail inner join StudentResult on stdDetail.roll=StudentResult.Roll and stdDetail.course=StudentResult.branch and StudentResult.Roll='"+roll+"' and StudentResult.Semester='"+sem+"' and StudentResult.branch='"+branch+"'");
	if(rs.equals(null))
		response.sendRedirect("AddResult.jsp");
	if(rs.next()){


%>
<table style="width:100%;height:100px;background:white">
<tr>
<td style="border:none; width:120px"><img src="logo.png" align="left"width="120" height="120"></img></td>
<td style="border:none"><img src="meri.jpeg" align="center"width="180" height="120"></td>
</tr>
</table>


<hr size="3" color="gray">


<table style="border:none;height:5px;background-image:url('meri2.jpeg');background-size:cover">
<tr>
<td style="text-align: left; border:none;"><a href="SearchResult.jsp" style="text-decoration:none;">BACK</a></td>
<td style="text-align: right;border:none"><a href="index.html" style="text-decoration:none;">HOME</a></td></tr>
</table>


<hr size="3" color="gray">


<div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>institution Name: MERI</th>
          <th>Course Name: <%=rs.getString(1)%></th>
          <th>Semester: <%=rs.getString(8)%></th>
          <th><center>RollNo: <%=rs.getString(2)%></center></th>
        </tr>
      </thead>
      <thead>
        <tr>
          <th>Name: <%=rs.getString(3)%></th>
          <th>Father Name: <%=rs.getString(4)%></th>
          <th>Gender: <%=rs.getString(5)%></th>
          <th><a titlt="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;"><center><img src="print.png"></center></a></th>
        </tr>
      </thead>
    </table>
  </div>
<hr size="3" color="gray">
<head>
<meta charset="ISO-8859-1">
<title>Result</title>
</head>
<body>
  <table>
    <thead>
      <tr>
        <td colspan="3">Course</td>
        <td rowspan="2">Full Marks</td>
        <td rowspan="2">Passing Marks</td>
        <td rowspan="2">Obtained Marks</td>
        <td rowspan="2">Grade</td>
        
      </tr>
      <tr>
        <td>Code </td>
        <td colspan="2"> Name </td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>101</td>
        <td colspan="2">Paper 1 </td>
        <td>100</td>
        <td> 30 </td>
        <td><%=rs.getString(10)%></td>
        <td><%
        		int m1=rs.getInt(10);
        		if(m1>=90)
        			out.println("O");
        		else if(m1>=80 && m1<90)
        			out.println("A+");
        		else if(m1>=60 && m1<80)
        			out.println("A");
        		else if(m1>=50 && m1<60)
        			out.println("B+");
        		else if(m1>=40 && m1<50)
        			out.println("B");
        		else if(m1>=30 && m1<40)
        			out.println("C");
        		else
        			out.println("FAIL");
        	%>
        </td>
      </tr>
      <tr>
        <td>102</td>
        <td colspan="2">Paper 2</td>
        <td>100</td>
        <td>30</td>
        <td><%=rs.getString(11)%></td>
        <td>
        <%
        		int m2=rs.getInt(11);
        		if(m2>=90)
        			out.println("O");
        		else if(m2>=80 && m2<90)
        			out.println("A+");
        		else if(m2>=60 && m2<80)
        			out.println("A");
        		else if(m2>=50 && m2<60)
        			out.println("B+");
        		else if(m2>=40 && m2<50)
        			out.println("B");
        		else if(m2>=30 && m2<40)
        			out.println("C");
        		else
        			out.println("FAIL");
        	%>
        </td>
      </tr>
      <tr>
        <td>103</td>
        <td colspan="2">Paper 3</td>
        <td>100</td>
        <td> 30 </td>
        <td><%=rs.getString(12)%></td>
        <td>
        <%
        		int m3=rs.getInt(12);
        		if(m3>=90)
        			out.println("O");
        		else if(m3>=80 && m3<90)
        			out.println("A+");
        		else if(m3>=60 && m3<80)
        			out.println("A");
        		else if(m3>=50 && m3<60)
        			out.println("B+");
        		else if(m3>=40 && m3<50)
        			out.println("B");
        		else if(m3>=30 && m3<40)
        			out.println("C");
        		else
        			out.println("FAIL");
        	%>
        </td>
      </tr>
      <tr>
        <td>104</td>
        <td colspan="2">Paper 4</td>
        <td>100</td>
        <td> 30 </td>
        <td><%=rs.getString(13)%></td>
        <td>
        <%
        		int m4=rs.getInt(13);
        		if(m4>=90)
        			out.println("O");
        		else if(m4>=80 && m4<90)
        			out.println("A+");
        		else if(m4>=60 && m4<80)
        			out.println("A");
        		else if(m4>=50 && m4<60)
        			out.println("B+");
        		else if(m4>=40 && m4<50)
        			out.println("B");
        		else if(m4>=30 && m4<40)
        			out.println("C");
        		else
        			out.println("FAIL");
        	%>
        </td>
      </tr>
      <tr>
        <td>105</td>
        <td colspan="2">Paper 5</td>
        <td>100</td>
        <td> 30 </td>
        <td><%=rs.getString(14)%></td>
        <td>
        <%
        		int m5=rs.getInt(14);
        		if(m5>=90)
        			out.println("O");
        		else if(m5>=80 && m5<90)
        			out.println("A+");
        		else if(m5>=60 && m5<80)
        			out.println("A");
        		else if(m5>=50 && m5<60)
        			out.println("B+");
        		else if(m5>=40 && m5<50)
        			out.println("B");
        		else if(m5>=30 && m5<40)
        			out.println("C");
        		else
        			out.println("FAIL");
        	%>
        </td>
      </tr>
      <tr>
        <td>106</td>
        <td colspan="2">Paper 6</td>
        <td>30</td>
        <td>15</td>
        <td><%=rs.getString(15)%></td>
        <td>
        <%
        		int m6=rs.getInt(15);
        		if(m6>=90)
        			out.println("O");
        		else if(m6>=80 && m6<90)
        			out.println("A+");
        		else if(m6>=60 && m6<80)
        			out.println("A");
        		else if(m6>=50 && m6<60)
        			out.println("B+");
        		else if(m6>=40 && m6<50)
        			out.println("B");
        		else if(m6>=30 && m6<40)
        			out.println("C");
        		else
        			out.println("FAIL");
        	%>
        </td>
      </tr>
    </tbody>
    <tfoot>
      <tr>
        <td colspan="3" class="footer">Total Marks</td>
        <td>600</td>
        <td>180</td>
        <td><%int total=rs.getInt(10)+rs.getInt(11)+rs.getInt(12)+rs.getInt(13)+rs.getInt(14)+rs.getInt(15);out.println(total); %></td>
        <td style="color:Red;">
        <%
        int f=0,m;
        for(int i=10;i<=15;i++)
        {
        	if(rs.getInt(i)<30)
        	{
        		f=1;break;
        	}
        }
        if(f==1)
        	out.println("FAIL");
        else
        	out.println("PASS");
        	
        %>
        </td>
      </tr>
      <tr>
        <td colspan="3" class="footer">Percentage</td>
        <td colspan="4"><%out.println(total*100/600);%>%</td>
      </tr>
  </table>
</body>
<%
	}
	else{
		response.sendRedirect("Err_Result.jsp");
	}
}
catch(Exception e)
{
	
}



%>
</html>