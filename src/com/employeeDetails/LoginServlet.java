package com.employeeDetails;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 2L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String name = request.getParameter("username");
		String pass = request.getParameter("pwd");
		if (name=="" || name != null && EmpSignDaoUp.validate(name, pass)) {
			out.print("You are successfully login!!!!");
			HttpSession session= request.getSession();
			session.setAttribute("uname", name);	
            response.sendRedirect("home.jsp");
		} else {
			out.print("User name or Password is incorrect!!!");
			response.sendRedirect("loginpage.jsp");
		}

	}
}
