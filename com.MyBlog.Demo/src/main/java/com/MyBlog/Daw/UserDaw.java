package com.MyBlog.Daw;
import java.sql.*;


public class UserDaw {
private Connection con;

public UserDaw(Connection con) {
	this.con = con;
}

// method to insert user to database

public boolean saveUser(com.MyBlog.entities.User user) {

	boolean f=false;
try {
	String queryString = "insert into user2(name,email,password,gender,about) values(?,?,?,?,?)";
	PreparedStatement pst = con.prepareStatement(queryString);
	pst.setString(1,user.getNameString());
	pst.setString(2,user.getEmail());
	pst.setString(3,user.getPassString());
	pst.setString(4,user.getGenderString());
	pst.setString(5,user.getAboutString());
	pst.executeUpdate();
	f= true;
} catch (Exception e) {
	e.printStackTrace();
}
return f;
}

public com.MyBlog.entities.User getUserByEMailAndPassword(String email,String password) {
	com.MyBlog.entities.User user = null;
	
	try {
		
		String qString= "select * from user2 where email=? and password=?";
		PreparedStatement pStatement = con.prepareStatement(qString);
		pStatement.setString(1,email);
		pStatement.setString(2,password);
		ResultSet set = pStatement.executeQuery();
		
		if (set.next()) {
			user = new com.MyBlog.entities.User();
			String nameString = set.getString("name");
			user.setNameString(nameString);
			user.setPassString(set.getString("password"));
			user.setId(set.getInt("id"));
			user.setEmail(set.getString("email"));
			user.setGenderString(set.getString("gender"));
			user.setAboutString(set.getString("about"));
			user.setDateTimestamp(set.getTimestamp("rdate"));
			user.setProfileString(set.getString("profile"));
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return user;
	

}

}
