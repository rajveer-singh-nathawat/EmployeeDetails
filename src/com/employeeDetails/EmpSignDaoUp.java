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
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/EmployeeDb", "root", "root");
		} catch (Exception e) {
			System.out.println(e);
                        System.out.println("raj");
		}
		return con;
	}

	public static int save(EmpSignUp emp) {
		Connection con = EmpSignDaoUp.getConnection();
		int status = 0;
		try {
			PreparedStatement ps = con
					.prepareStatement("INSERT INTO Employee_signup(`USER_NAME`, `PASSWORD`) VALUES (?, ?)");
			ps.setString(1, emp.getUsername());
			ps.setString(2, emp.getPassword());
			status = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public static Boolean validate(String uname, String pass) {
		Boolean status = false;
		Connection con = getConnection();
		try {
			PreparedStatement ps = con
					.prepareStatement("SELECT * FROM Employee_signup WHERE USER_NAME='"
							+ uname + "' AND PASSWORD='" + pass + "'");
			ResultSet rs = ps.executeQuery();
			status = rs.next();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}

}
