<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<jsp:include page="link.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="navBar.jsp" />
	
	<%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	
	if(session.getAttribute("uname")==null){
		response.sendRedirect("loginpage.jsp");
	}
	%>
    Welcome
	<jsp:include page="footer.jsp" />
</body>
</html>