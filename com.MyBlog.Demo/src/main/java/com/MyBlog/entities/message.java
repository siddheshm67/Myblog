package com.MyBlog.entities;

public class message {
	 
private String contentString;
private String typeString;
private String cssClassString;

public message(String contentString, String typeString, String cssClassString) {
	this.contentString = contentString;
	this.typeString = typeString;
	this.cssClassString = cssClassString;
}

public String getContentString() {
	return contentString;
}

public void setContentString(String contentString) {
	this.contentString = contentString;
}

public String getTypeString() {
	return typeString;
}

public void setTypeString(String typeString) {
	this.typeString = typeString;
}

public String getCssClassString() {
	return cssClassString;
}

public void setCssClassString(String cssClassString) {
	this.cssClassString = cssClassString;
}





}
