<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/login.css">
<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>

.icon {
  padding: 10px;
  background: rgb(184, 0, 230);
  color: white;
  min-width: 50px;
  text-align: center;
}


/* Set a style for the submit button */
.btn {
  background-color: rgb(184, 0, 230);
  color: white;
  padding: 15px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
  font-size:18px ;
}

.btn:hover {
  background-color: rgb(143, 0, 179);
}

a:link, a:visited {
  background-color: rgb(184, 0, 230);
  color: white;
  padding: 15px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  width:100%;
}

a:hover, a:active {
  background-color: rgb(143, 0, 179);
}

</style>
</head>
<body>
	<form action="adminlog" method="post" style="max-width:500px;margin:auto" id="form1">
		<br>
		<h1 style = "text-align:center;">ADMIN LOGIN</h1>
		<div class="margin1">
		<div class="input-container">
    	<i class="fa fa-user icon"></i> 
   		&nbsp;
		<input type="text" name="adminemail" placeholder="Enter Email" class="input-field"  required><br>
		</div>
		
		<div class="input-container">
   		<i class="fa fa-key icon"></i>
    	&nbsp;
		<input type="password" name="adminpassword" placeholder="Enter your password" class="input-field"  required><br>
		</div>
		
		<input type="submit" name="submit" value="Login" class="btn">
		<br><br>
		<div>
		<a href="resetpassword.jsp">Forgot Password ?</a>
		<br>
		</div>
		</div>
		<br><br>
	</form>
</body>
</html>