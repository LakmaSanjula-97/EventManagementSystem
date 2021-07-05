<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

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
.form1 {
    margin-left: 20cm;
    font-size:18px ;
    margin-top: -7cm;
    position: absolute;
    background-color: transparent;
    width: 40%;
    border: transparent;
  }
  .input-field {
  width: 100%;
  padding: 13px;
  border: 1px solid #c0c0c0;
  border-radius: 4px;
  background-color: #eaeaea;
}

</style>
<title>Insert title here</title>

</head>
<body>
	<div class="head2">
			<p>Event Zone<p>
		</div>
		<div class="subhead1">
			<p><i>Enjoy Your Life...</i>
		</div>
	
    <form action="forgotpassword" method="post" class="form1"><br><br>
    <h1 style = "text-align:center;color: #00004f;">FORGOT PASSWORD</h1>
    <div class="margin1">
    Email Address<br><br>
    <div class="input-container">
    
    	<i class="fa fa-envelope icon"></i>
    	&nbsp;<input type="text" name="email"  class="input-field" placeholder="email" required /><br><br>
    </div>
    New Password
    	<br><br>
    <div class="input-container">
   		<i class="fa fa-key icon"></i>
 
    	&nbsp;<input type="password" name="newpassword"  class="input-field" id="pw1"  placeholder="new password"  required/><br><br>
    	</div>
    	<div>	
    	<input type="checkbox" onclick="showpass()">Show Password
    			<script type="text/javascript">
				function showpass() {
			 		 var x = document.getElementById("pw1");
			 		 if (x.type === "password") {
			   		 x.type = "text";
			  		} else {
			   			 x.type = "password";
			  		}
				}
			
			</script> 
    	</div>
    	<br><br>
    	<div>
    	<input type="submit" value="reset password" class="btn"/>
    	</div>
    	<br><br>
    </div>
	</form>

</body>
</html>