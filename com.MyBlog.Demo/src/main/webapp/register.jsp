<%@page import="com.MyBlog.entities.message"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="css/myStyle.css" type="text/css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style type="text/css">
.banner-background {

}
</style>
<title>Insert title here</title>
</head>
<body> 
<%@include file="normal_NAvBar.jsp"%>
	<main class="d-flex align-items-center primary-background p-5 banner-background" style="padding-bottom: 50px">
		<div class="container">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header text-center  primary-background text-white">
						<span class="fa fa-drivers-license-o fa-2x"></span> <br>
						<p>Register here</p>
						
						<%
						 message m2 = (message)session.getAttribute("msg");
						if(m2!=null){
							%>
							
							<div class="alert alert-danger" role="alert">
  							<%=m2.getContentString() %>
							</div>
							
							<% 
							session.removeAttribute("msg");
						}
						%>	
						
					</div>
					
					<div class="card-body">
						<form action="RegisterServ" method="post">
						<div class="form-group">
								<label for="User_Name">User Name</label> <input name="user_name"
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter User Name">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input name="user_email"
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email">
								<small id="emailHelp" class="form-text text-muted">We'll
									never share your email with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input name="user_password"
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password">
							</div>
							
							<div class="form-group">
								<label for="Gender">Select Gender :</label> 
								<br>
							<input type="radio"  id="gender" name="user_gender" value="male"> male 
							<input type="radio"  id="gender" name="user_gender" value="female"> Female
							</div>
							
							<div class="form-group">
							<textarea name="user_AboutMe" rows="2" cols="20" placeholder="Enter something about yourSelf here."></textarea>
							</div>
							
							<div class="form-check">
								<input type="checkbox" class="form-check-input" name="user_check"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Agree Terms and Conditions</label>
									<br>
							</div>
							<br>
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</main>
	
		</body>
		</html>
	