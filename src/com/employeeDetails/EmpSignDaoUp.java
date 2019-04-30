package com.employeeDetails;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class EmpSignDaoUp {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/EmployeeDb", "root", "root");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}

	public static int save(EmpSignUp emp) {
		Connection con = EmpSignDaoUp.getConnection();
		int status = 0;
		try {
			PreparedStatement ps = con.prepareStatement("INSERT INTO Employee (USERNAME, PASSWORD) VALUES (?, ?)");
			ps.setString(1, emp.getUsername());
			ps.setString(2, emp.getPassword());
			status = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	
	public static Boolean getPassword(String uname, String pass) {
		EmpSignUp emp=new EmpSignUp();
		Boolean status=false;
		Connection con = EmpSignDaoUp.getConnection();
		String sql="select * from Employee where uname=?,pass=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,emp.getUsername());
			ps.setString(2,emp.getPassword());
			ResultSet rs =ps.executeQuery();
			status=rs.next();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}

}
