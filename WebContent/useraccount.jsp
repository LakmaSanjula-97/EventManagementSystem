<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/useraccount.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
<style>
body {
  background-color: #d9d9d9;
}
</style>
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
	<div class="container">
	<table class="table  table-active table-hover" style="width: 15cm; border:2px solid #f2f2f2; height:13cm; margin-left:12cm;">
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="firstname" value="${cus.firstname}"/>
	<c:set var="lastname" value="${cus.lastname}"/>
	<c:set var="bdate" value="${cus.bdate}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="accno" value="${cus.accno}"/>
	<c:set var="username" value="${cus.userName}"/>
	<c:set var="password" value="${cus.password}"/>
	
	
	<tr>
		<td>Customer ID :</td>
		<td>${cus.id}</td>
	</tr>
	<tr>
		<td>First Name :</td>
		<td>${cus.firstname}</td>
	</tr>
	<tr>
		<td>Last Name :</td>
		<td>${cus.lastname}</td>
	</tr>
	
	<tr>
		<td>Date Of Birth :</td>
		<td>${cus.bdate}</td>
	</tr>
	<tr>
		<td>Customer Phone :</td>
		<td>${cus.phone}</td>
	</tr>
	<tr>
		<td>Customer Email :</td>
		<td>${cus.email}</td>
	</tr>
	<tr>
		<td>Account Number:</td>
		<td>${cus.accno}</td>
	</tr>
	<tr>
		<td>Customer UserName :</td>
		<td>${cus.userName}</td>
	</tr>
	

	</c:forEach>
	</table>
	</div>
	
		<c:url value="updatecustomer.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="firstname" value="${firstname}"/>
		<c:param name="lastname" value="${lastname}"/>
		<c:param name="bdate" value="${bdate}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="accno" value="${accno}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
	<br>
	<a href="${cusupdate}">
	<input type="button" name="update" value="Update My Data" class="btn">
	</a>
	
	<br>
		<c:url value="deletecustomer.jsp" var="cusdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="firstname" value="${firstname}"/>
		<c:param name="lastname" value="${lastname}"/>
		<c:param name="bdate" value="${bdate}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="accno" value="${accno}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
	<br>
	<a href="${cusdelete}">
	<input type="button" name="delete" value="Delete My Account" class="btn">
	</a>

</body>
</html>