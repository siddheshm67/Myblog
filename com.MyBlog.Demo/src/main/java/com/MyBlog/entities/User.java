package com.MyBlog.entities;

public class User {
	private int id;
	private String nameString;
	private String email;
	private String passString;
	private String genderString;
	private java.sql.Timestamp dateTimestamp;
	private String aboutString;
	private String profileString;

	

	public User(int id, String nameString, String email, String passString, String genderString,
			java.sql.Timestamp dateTimestamp, String aboutString) {

		this.id = id;
		this.nameString = nameString;
		this.email = email;
		this.passString = passString;
		this.genderString = genderString;
		this.dateTimestamp = dateTimestamp;
		this.aboutString = aboutString;
	}

	public User() {
	
	}

	public User(String nameString, String email, String passString, String genderString,String aboutString) {
		this.nameString = nameString;
		this.email = email;
		this.passString = passString;
		this.genderString = genderString;
		this.aboutString = aboutString;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNameString() {
		return nameString;
	}

	public void setNameString(String nameString) {
		this.nameString = nameString;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassString() {
		return passString;
	}

	public void setPassString(String passString) {
		this.passString = passString;
	}

	public String getGenderString() {
		return genderString;
	}

	public void setGenderString(String genderString) {
		this.genderString = genderString;
	}

	public java.sql.Timestamp getDateTimestamp() {
		return dateTimestamp;
	}

	public void setDateTimestamp(java.sql.Timestamp dateTimestamp) {
		this.dateTimestamp = dateTimestamp;
	}

	public String getAboutString() {
		return aboutString;
	}

	public void setAboutString(String aboutString) {
		this.aboutString = aboutString;
	}
	
	public String getProfileString() {
		return profileString;
	}

	public void setProfileString(String profileString) {
		this.profileString = profileString;
	}
	
	
	
	
	
	

}
