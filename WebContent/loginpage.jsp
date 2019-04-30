<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
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
			<a class="navbar-brand" href="Home">Employee Detail</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="Home">Home</a></li>
			<li class="active"><a href="Profile">Profile</a></li>

		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="signuppage.jsp"><span
					class="glyphicon glyphicon-user"></span>Sign Up</a></li>
			<!-- <li><a href="loginpage.jsp"><span
					class="glyphicon glyphicon-log-in"></span> Login</a></li> -->

		</ul>
	</div>
	</nav>

	<div class="Container">
		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<h3>Welcome</h3>
				<form action="LoginServlet" method="post">
					<div class="form-group">
						<label for="username">Username:</label> <input type="text"
							class="form-control" id="username">
					</div>
					<div class="form-group">
						<label for="pwd">Password:</label> <input type="password"
							class="form-control" id="pwd">
					</div>
					
					<button type="submit" class="btn btn-info">Submit</button>
				</form>



			</div>
		</div>

	</div>
	<footer class="container-fluid text-center">
	<p>All Rights Reserved Raj@ 2019</p>
	</footer>
</body>
</html>