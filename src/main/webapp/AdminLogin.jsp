<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<link rel="stylesheet" href="style.css" >
</head>
<body >

<form action="Adminlogin" method="post">

<h1>Admin Login</h1>

<label>Email</label>
<input type="text" name="email" placeholder="Email">
<br>
<label>Password</label>

<input type="text" name="password" placeholder="Password">

<input type="submit"  value="Login">

</form>

<%
	String msg = request.getParameter("msg");
	if("notexist".equals(msg))
	{
		%>
		<h1>Password Invalid/User Not Exist</h1>
<%}%>




</body>
</html>