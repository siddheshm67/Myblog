<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="css/myStyle.css" type="text/css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style type="text/css">
.banner-background {
	clip-path: polygon(0 0, 100% 0, 100% 83%, 0% 100%);
}
</style>
<title>Sorry something went Wrong</title>
</head>
<body>
<div class="container text-center mt-3">
<img alt="" src="img/warning.png">
</div>
<div class="container text-center mt-3 Display-3">
<h3 class="">Something went Wrong !......</h3>
<%= exception %>
<hr>
<a href="Home.jsp" class="btn primary-background text-white">Home</a>
</div>


</body>
</html>