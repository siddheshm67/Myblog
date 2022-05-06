package com.MyBlog.helper;
import java.sql.*;

public class ConnectionProvider {
	
	private static Connection con;
	public static Connection getConnection() {
		try {
			if (con == null) {
				
				Class.forName("com.mysql.jdbc.Driver");
				String urlString = "jdbc:mysql://localhost:3306/myblog";
				String userString = "root";
				String passwString = "1234";
				con = DriverManager.getConnection(urlString,userString,passwString);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
		
	}

}
