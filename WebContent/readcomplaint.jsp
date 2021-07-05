<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/feedback.css">
<title>Records</title>
<!-- table -->
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
  table, td, th {  
  border: 1px solid #ddd;
  text-align: left;
}
  </style>
</head>
<body>
    <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/event?characterEncoding=utf8"
        user="root" password="lakma123"
    />
     
    <sql:query var="comDetails"   dataSource="${myDS}">
        SELECT * FROM complaints;
    </sql:query>
     <div style="margin-left:8cm;"><br><br>
     	<caption><h1>FeedBack</h1></caption>
     </div>
    <div class="container"><br>
        <table  class="table table-active table-hover table-striped">
            <tr style="background-color: #4CAF50;">
                <th>Complain ID</th>
                <th>Email</th>
                <th>Subject</th>
                <th>Description</th>
                
            </tr>
            <c:forEach var="complaints" items="${comDetails.rows}">
                <tr>
                    <td><c:out value="${complaints.comid}" /></td>
                    <td><c:out value="${complaints.email}" /></td>
                    <td><c:out value="${complaints.type}" /></td>
                    <td><c:out value="${complaints.message}" /></td>
                </tr>
            </c:forEach>
        </table>
        <div>
	<a href="complaint.jsp">Give Me Feedback</a>
	</div>
    </div>
</body>
</html>