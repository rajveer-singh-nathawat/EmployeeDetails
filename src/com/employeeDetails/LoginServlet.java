package com.employeeDetails;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 2L;

	@SuppressWarnings("unlikely-arg-type")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("username");
		String pass = request.getParameter("pwd");
		if(name=="" || name!=null && pass.equals(EmpSignDaoUp.getPassword(name,pass))) {
			out.println("You are successfully login!!");
			request.getRequestDispatcher("Home");
		}else {
			out.print("User name or Password is incorrect!!!");
			request.getRequestDispatcher("LoginServlet");
		}

		

	}
}
