<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sgin Up Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="Container">
		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<h1>Sign Up</h1>
				<p>Please fill in this form to create an account.</p>
				<hr>
				<form action="SaveServlet" method="post">
					<div class="form-group">
						<label for="username"><b>User Name:</b></label> <input type="text"
							class="form-control" placeholder="Enter User Name" name="uname"
							required>
					</div>
					<div class="form-group">
						<label for="password"><b>Password:</b></label> <input
							type="password" class="form-control" placeholder="Enter Password"
							name="psw" required>
					</div>
					<div class="form-group">
						<label for="psw-repeat"><b>Repeat Password</b></label> <input
							type="password" class="form-control"
							placeholder="Repeat Password" name="psw_repeat" required>
					</div>

					<button type="button" class="btn btn-cancel">Cancel</button>
					<button type="submit" class="btn btn-success">Sign Up</button>

				</form>
			</div>
		</div>
	</div>

</body>
</html>