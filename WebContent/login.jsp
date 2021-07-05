<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/login.css">
<style>
body {
  background-image: url('images/ems1.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
  overflow-y: hidden;
  overflow-x: hidden;
}
.form1 {
    margin-left: 21cm;
    font-size:18px ;
    margin-top: -6cm;
    position: absolute;
    background-color: transparent;
    width: 40%;
    border: transparent;
  }
  .head2 {
	font-size:90px;
	color: white;
	margin-top:4cm;
	margin-left:1.2cm;
}
.subhead1{
	font-size:20px;
	color: silver;
	margin-top:-2.5cm;
	margin-left:1.3cm;
}
.input-field {
  width: 100%;
  padding: 13px;
  border: 1px solid #c0c0c0;
  border-radius: 4px;
  background-color: #eaeaea;
}

</style>

</head>
<body>
	<div class="head2">
			<p>Event Zone<p>
		</div>
		<div class="subhead1">
			<p><i>Enjoy Your Life...</i>
		</div>
	
	<form action="log" method="post" class="form1">
	<br>
	<h1 style = "text-align:center;color: #00004f;">Sign In</h1>

	<div class="margin1">
	User Name
   	<br><br>
	<div class="input-container">

    <i class="fa fa-user icon"></i> 
    &nbsp;
	<input type="text" name="username" placeholder="Username"  class="input-field" required><br>
	</div>
	Password
    <br><br>
	<div class="input-container">
    <i class="fa fa-key icon"></i>
    &nbsp;
	<input type="password" name="password" placeholder="Password" class="input-field"  required><br>
	</div>
	<div>
	<a href="resetpassword.jsp">Forgot Password ?</a>
	</div>
	<br>
	<input type="submit" name="submit" value="Sign In"  class="btn" style=" width:14.38cm"><br><br>
	
	<div>
	<a href="register.jsp">Sign Up</a>
	<br><br>
	</div>
	</div>
	<br>
	</form>
	

</body>
</html>