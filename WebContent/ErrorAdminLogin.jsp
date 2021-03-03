<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ErrAdminLogin</title>
<link rel="stylesheet" href="style.css">
<style>


</style>
</head>
<body style="background-image:linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7)),url('image7.jpeg');background-size:cover; box-shadow: insert 0 0 5px 2px #282a2d">
<!div class="form-box">
<div style="height:450px;width:320px;margin:6% auto;background:#fff;position:relative;padding:5px;">
	<img src="user.png" style="width:120px;height:120px;position:absolute;margin: 0px 80px;">
	
	<!div class="button-box">
	<div style="width:280px;position:relative;box-shadow:0 0 20px 9px #ff61241f;border-radius:30px;margin:58px auto;">
	<form class="input-group2" action="AdminLogin" method="post">
	<font color="red" size=5 style="margin: 500px 0px;">Incorrect UserName/Password</font>
	<input type="text" class="input-field" placeholder="User Id" name="uname" required><br>
	<input type="Password" class="input-field" placeholder="Enter Password" name="pass" required><br>
	<input type="checkbox" class="check-box"><span>Remember Password</span><br>
	<button type="submit" class="submit-btd">Login</button>
	</form><br>
	<form class="input-group" action="index.html" method="post">
	<button type="submit" class="submit-btd" style="width:250px;margin:0 28px;">Back</button>
	</form>
	
	</div>
</div>
</body>
</html>