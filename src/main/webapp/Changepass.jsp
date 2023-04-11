<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@include file="AdminDashboard.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
<link rel="stylesheet" href="style.css" >
</head>
<body>


<form action="ChangeFun.jsp" method="post">

<label>Your Email</label>
<input type="text" name="email" value="<%=session.getAttribute("email").toString() %>">

<label>Password</label>
<input type="text" name="pass" placeholder="Enter New Password">

<input type="submit" value="Submit">



</form>

</body>
</html>