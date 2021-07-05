<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/register.css">
<style>
body {
  background-image: url('images/ems1.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
  overflow-y: hidden;
  overflow-x: hidden;
}

</style>
<title>Insert title here</title>
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
</head>
<body>

		<div class="head2">
			<p>Event Zone<p>
		</div>
		<div class="subhead1">
			<p><i>Enjoy Your Life...</i>
		</div>
	
		<form action="insert" method="post" class="form1 ">
			<br>
			<div class="head1">
			<h1>SIGN UP</h1>
			</div>
    		
			<div class="margin1">
			<table class="table1">
			<tr>
			<td>
				First Name &nbsp;
					<input  type="text" name="firstname" placeholder="First Name" class="input-field2" required><br><br>
			</td>
			<td>
				Last Name &nbsp;
					<input  type="text" name="lastname" placeholder="Last Name" class="input-field2" required><br><br>
			</td>
			</tr>
			<tr>
			<td>
				Date Of Birth &nbsp;
					<input  type="date" name="bdate" placeholder="dd/mm/yyyy" class="input-field2" required><br>
					
			</td>
			<td>
				Phone Number &nbsp;
					<input  type="text" name="phone" placeholder="+94 xxxxxxxxxx" class="input-field2" required><br>
			</td>
			</tr>		
			</table><br>
				Email 
					<input  type="text" name="email" placeholder="example@gmail.com" class="input-field" required><br><br>
				Account Number 
					<input  type="text" name="accno" placeholder="xxx xxx xxx xxx" class="input-field" required><br><br>
					
				<table class="table1">
				<tr>
				<td>
				User Name 
					<input  type="text" name="uid" placeholder="username" class="input-field2" required><br><br>
				</td>
				<td>
				Password 
					<input  type="password" name="psw" id = "pw1" placeholder="password" class="input-field2" required><br>
					<input type="checkbox" onclick="showpass()"><span style="font-size:12px ;">Show Password</span>
				</td>
				</tr>
				</table>
    				<p><input type="checkbox" required><span style="font-size:15px ;"><i>By creating an account you agree to our <a href="#">Terms & Privacy</a></i></span>.</p>
			
					<input type="submit" name="submit"  value="Sign Up" class="btn">
		

			<hr>
			<br>
	
			<div>
    			<p style="text-align: center;">Already have an account? <a href="login.jsp">Sign in</a>.</p>
    		</div>
    		</div>
    		<br><br>
	</form>

</body>
</html>