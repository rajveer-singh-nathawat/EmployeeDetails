<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<jsp:include page="link.jsp"></jsp:include>
</head>
<body>
<jsp:include page="navBar.jsp" />

	

	<div class="Container">
		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<h3>Welcome</h3>
				<form action="LoginServlet" method="post">
					<div class="form-group">
						<label for="username">User Name:</label> <input type="text"
							class="form-control" name="username">
					</div>
					<div class="form-group">
						<label for="pwd">Password:</label> <input type="password"
							class="form-control" name="pwd">
					</div>
					
					<button type="submit" class="btn btn-success">Submit</button>
				</form>
			</div>
		</div>

	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>