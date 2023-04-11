<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
 <%@ page import="com.servlets.*" %>   
 <%@ page import="com.DBconnect.*" %> 


<%

	String email = request.getParameter("email");
	String password = request.getParameter("pass");
	try{
	Connection con = DBconnection.GetConnection();
	PreparedStatement ps = con.prepareStatement("update adminlogin set adpwd='"+ password+"' where ademail='"+ email +"'; ");
	ps.executeUpdate();
	response.sendRedirect("AdminDashboard.jsp");
	
	}catch(Exception ex)
	{
		
		System.out.print(ex);
	}
%>
