<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
<style>
.white-box{
	height:520px;
	width:320px;
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
<form class="contact" action="mailto:rajeshjha.nana@gmail.com" method="post">
<center><img src="meri.jpeg" align="center"width="150" height="100"></center>
<br>
<input type="text" class="input-field" placeholder="Enter Your Name" name="uname" required><br>
<input type="text" class="input-field" placeholder="Your Email Id" name="uEmail" required><br>
<label for="">Your Message:-</label>
<textarea name="Message" rows="8" cols="35" required style="margin:10px 0px"></textarea>
<button type="submit" class="submit-btd">SEND</button>
</form>
<form class="contact" action="index.html" method="post">
<br>
<button type="submit" class="submit-btd">BACK</button>
</form>
</div>


</div>
</body>
</html>