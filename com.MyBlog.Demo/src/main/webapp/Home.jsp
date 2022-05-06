<%@page import="com.MyBlog.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/myStyle.css" type="text/css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style type="text/css">
.banner-background {
	clip-path: polygon(0 0, 100% 0, 100% 83%, 0% 100%);
}
</style>

<title>Insert title here</title>
</head>
<body>

	<%@include file="normal_NAvBar.jsp"%>
	<div class="container-fluid p-0 m-0">
		<div class="jumbotron primary-background text-white banner-background">
			<div class="container">

				<h2 class="display-3">Welcome...</h2>
				<h4>To the World of programming</h4>
				<p>Best platform to help you enhance your skills and expand your knowledge</p>
				<a href="register.jsp" class="btn btn-outline-light btn-lg"> <span
					class="fa fa-paper-plane"></span> start..its free
				</a> <a href="Login.jsp" class="btn btn-outline-light btn-lg"> <span
					class="fa fa-user-circle-o"></span> Login
				</a>

			</div>
		</div>

		<!-- cards -->

		<div class="container">
			<div class="row mb-2">
				<div class="col-md-4">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">JAVA</h5>
							<p class="card-text">Java is a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible.</p>
							<a href="https://www.java.com/" class="btn btn-primary primary-background text-white">Read
								more..</a>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">MYSQL</h5>
							<p class="card-text">MySQL is an open-source relational database management system. Its name is a combination of "My", the name of co-founder Michael Widenius's daughter, and "SQL", the abbreviation for Structured Query Language.</p>
							<a href="https://www.mysql.com/" class="btn btn-primary primary-background text-white">Read
								more..</a>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">HTML</h5>
							<p class="card-text">The HyperText Markup Language or HTML is the standard markup language for documents designed to be displayed in a web browser.</p>
							<a href="https://www.w3schools.com/html/" class="btn btn-primary primary-background text-white">Read
								more..</a>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">CSS</h5>
						<p class="card-text">Cascading Style Sheets is a style sheet language used for describing the presentation of a document written in a markup language such as HTML.</p>
						<a href="https://developer.mozilla.org/en-US/docs/Web/CSS" class="btn btn-primary primary-background text-white">Read
							more..</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">SPRING</h5>
						<p class="card-text">The Spring Framework is an application framework and inversion of control container for the Java platform.</p>
						<a href="https://spring.io/" class="btn btn-primary primary-background text-white">Read
							more..</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">MAVEN</h5>
						<p class="card-text">Maven is a build automation tool used primarily for Java projects. Maven can also be used to build and manage projects written in C#, Ruby, Scala, and other languages.</p>
						<a href="https://maven.apache.org/" class="btn btn-primary primary-background text-white">Read
							more..</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>



	<!--  java Script -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script>
		
	</script>
</body>
</html>