package com.DBconnect;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnection {

		
		public static Connection GetConnection()
		{
			Connection con =  null;
			try
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyawayp", "root", "Vishu@687");
				
			}
			catch(Exception ex)
			{
				System.out.println(ex);
			}
			return con;
		}

}
