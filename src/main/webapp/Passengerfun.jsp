<%@page import="java.util.HashMap"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.servlets.*" %>   
 <%@ page import="com.DBconnect.*" %> 

<% 
																		
				String pname = request.getParameter("pname");
				String gender = request.getParameter("gender");
				String locae = request.getParameter("Location");
				String phone = request.getParameter("Phone");
				String travel = request.getParameter("traveld");
				String nofp = request.getParameter("nofp");
				String email = request.getParameter("Email");
				String passwd = request.getParameter("pwd");
												
		try{
			Connection con = DBconnection.GetConnection();
			PreparedStatement ps = con.prepareStatement("insert into passenger(pname, gender, location, phoneno, datee, noofperson, email, passwd)value('"+pname+"','"+gender+"', '"+locae+"','"+phone+"','"+travel+"','"+nofp+"','"+email+"','"+passwd+"')");
			ps.executeUpdate();
			response.sendRedirect("Carddetails.jsp");
			
			
			
			HashMap<String, String> personde = new HashMap<String, String>();
			personde.put("pername", pname);
			personde.put("gende", gender);
			personde.put("locash", locae);
			personde.put("phn", phone);
			personde.put("trac", travel);
			personde.put("notr", nofp);
			personde.put("emili", email);
			
			session.setAttribute("persondata", personde);
			RequestDispatcher dispatcher = request.getRequestDispatcher("FinalPage.jsp");
			
			
			
		}
		catch(Exception ex)
		{
			
		}
		

		
		
	



%>