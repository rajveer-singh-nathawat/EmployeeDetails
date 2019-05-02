package com.employeeDetails;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SaveServlet")
public class SaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String name = request.getParameter("uname");
		String pass = request.getParameter("psw");
		String passRepeat = request.getParameter("psw_repeat");

		if (pass.equals(passRepeat)) {
			EmpSignUp e = new EmpSignUp();
			e.setUsername(name);
			e.setPassword(pass);
			EmpSignDaoUp.save(e);
	        if(!name.equals("")||name!=null){  
	 			out.print(name + " you are successfully sign in!!!!");
	 			response.sendRedirect("loginpage.jsp");   
	         }
		} else {
			out.print("Password not matched!!!");
			response.sendRedirect("signuppage.jsp");
		}
		}
	}


