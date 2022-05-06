<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
	<%@page import="com.MyBlog.entities.*"%>
	<%
	User user = (User) session.getAttribute("currentUser");
	if (user == null) {
		response.sendRedirect("Login.jsp");
	}
	%>
	<nav class="navbar navbar-expand-lg navbar-dark primary-background">
		<a class="navbar-brand" href="Home.jsp"> <span
			class="fa fa-asterisk"></span> MyBlog
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#"> <span
						class="	fa fa-home"></span>Home <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#"> <span
						class="	fa fa-address-card-o"></span> Contact
				</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <span class="	fa fa-sort"></span>
						Catogery
				</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">programming Language</a> <a
							class="dropdown-item" href="#">Project</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Data Structure</a>
					</div></li>
			</ul>
			<ul class="navbar-nav mr-right">

				<li class="nav-item">
					<div class="container text-center">
						<a class="btn nav-link text-white" href="#!" data-toggle="modal"
							data-target="#exampleModal"> <span class="fa fa-user-circle">
						</span> &nbsp;<%=user.getNameString()%></a>
					</div>
				</li>

				<li class="nav-item">
					<div class="container text-center">
						<a class="btn btn-primary" href="LogoutServ">Logout</a>
					</div>
				</li>

			</ul>
		</div>
	</nav>

	<!-- profile model -->
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header primary-background text-white">
					<h5 class="modal-title" id="exampleModalLabel">MyBlog</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container text-center">
						<img alt="" src="img/default.png" class="img-fluid "
							style="border-radius: 50%; max-width: 75px">
						<h6 class="modal-title" id="exampleModalLabel"><%=user.getNameString()%></h6>
						<table class="table table-striped">
			
							<tbody>
								<tr>
									<th scope="row">ID : </th>
									<td><%= user.getId() %></td>
								
								</tr>
								<tr>
									<th scope="row">Name : </th>
									<td><%= user.getNameString() %></td>
							
								</tr>
								<tr>
									<th scope="row">Email : </th>
									<td><%= user.getEmail() %></td>
									
								</tr>
									<tr>
									<th scope="row">Gender : </th>
									<td><%= user.getGenderString() %></td>
									
								</tr>
									<tr>
									<th scope="row">Signup Date : </th>
									<td><%= user.getDateTimestamp() %></td>
									
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
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