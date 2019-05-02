<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Navigation Bar</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="MyCss.css">
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<%
    String uri = request.getRequestURI();
    String pageName = uri.substring(uri.lastIndexOf("/")+1);
%>
			<% if(pageName.equals("loginpage.jsp")){ %>
			<a class="navbar-brand" href="loginpage.jsp">Employee Detail</a>
			<% }else{ %>
			<a class="navbar-brand" href="home.jsp">Employee Detail</a>
			<%} %>
		</div>

		<% if(!pageName.equals("loginpage.jsp")){ %>
		<ul class="nav navbar-nav">
			<li class=""><a href="home.jsp">Home</a></li>
			<li class=""><a href="profile.jsp">Profile</a></li>
		</ul>
		<% } %>
		<ul class="nav navbar-nav navbar-right">
			<li>
				<% if(pageName.equals("loginpage.jsp")){ %> 
				<a href="signuppage.jsp"><span class="glyphicon glyphicon-user"></span>Sign Up</a> 
				<% }else{ %> 
             	<a class="dropdown-item"	href="logoutServlet"><span class="glyphicon glyphicon-user"></span>Logout</a> 
				<%} %>
			</li>

		</ul>
	</div>
	</nav>
</body>
</html>