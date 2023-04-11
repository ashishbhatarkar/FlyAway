<%@page import="java.sql.*"%>
 <%@ page import="com.servlets.*" %>   
 <%@ page import="com.DBconnect.*" %> 


<%

	String id = request.getParameter("id");
	try{
	Connection con = DBconnection.GetConnection();
	PreparedStatement ps = con.prepareStatement("delete from flight where Airport='"+ id+"';");
	ps.executeUpdate();
	response.sendRedirect("ViewAllFlight.jsp");
	
	}catch(Exception ex)
	{
		
		System.out.print(ex);
	}
%>
