<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/useraccount.css">
<link rel="stylesheet" href="css/update.css">
</head>
<body>
	<div class="sidenav">
		<a href="#" style="font-size:50px">Event Zone</a>
  		<a href="#">Home</a>
  		<a href="#">Request Event</a>
 		<a href="#">Events</a>
  		<a href="#">About Us</a>
  		<a href="#">Contact Us</a>
  		<a href="complaint.jsp">Give Feedback</a>
  		<a href="readcomplaint.jsp">All Comments</a>
	</div>

	<div>
	 	<img src="images/ems3.png" alt="My Profile" class="myicon">
	</div>
	<div class="para">
	<p>User Profile</p>
	</div>

	<%
		String id = request.getParameter("id");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String bdate = request.getParameter("bdate");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String accno = request.getParameter("accno");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
	
	%>
	
	<form action="delete" method="post" style="width: 15cm; border:transparent; height:13cm; margin-left:18cm;">
	<table>
		<tr>
			<td>Customer ID</td>
			<td><input type="text" name="id" value="<%= id %>" readonly class="input-field"></td>
		</tr>
		<tr>
			<td>First Name</td>
			<td><input type="text" name="firstname" value="<%= firstname %>" class="input-field" readonly></td>
		</tr>
		<tr>
			<td>Last Name</td>
			<td><input type="text" name="lastname" value="<%= lastname %>"  class="input-field" readonly></td>
		</tr>
		<tr>
			<td>Date Of Birth</td>
			<td><input type="text" name="bdate" value="<%= bdate %>" class="input-field" readonly></td>
		</tr>
		<tr>
			<td>Phone number</td>
			<td><input type="text" name="phone" value="<%= phone %>" class="input-field" readonly></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="text" name="email" value="<%= email %>" class="input-field" readonly></td>
		</tr>
		<tr>
			<td>Account Number</td>
			<td><input type="text" name="accno" value="<%= accno %>" class="input-field" readonly></td>
		</tr>
		<tr>
			<td>User name</td>
			<td><input type="text" name="username" value="<%= userName %>" class="input-field" readonly></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="text" name="password" value="<%= password %>" class="input-field" readonly></td>
		</tr>
		
	</table>
	<br>
	<input type="submit" name="submit" value="Delete My Account" class="btn2">
	</form>
	

</body>
</html>