package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.model.Users;
import com.utility.DBConnection;

public class UserDAO {

	boolean status = false;

	public boolean registerUser(Users user) {
		String query = "INSERT INTO users(name,email,password,role) VALUES(?,?,?,?)";
		Connection con = DBConnection.getDBConnection();

		try {
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, user.getName());
			st.setString(2, user.getEmail());
			st.setString(3, user.getPassword());
			st.setString(4, user.getRole());

			int n = st.executeUpdate();
			if (n > 0) {
				System.out.println("user registered successfully");
				status = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;

	}

	public boolean validateUser(String email, String password) {
		Connection con = DBConnection.getDBConnection();
		String query = "select * from users where email=? and password=?";
		try {
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, email);
			st.setString(2, password);

			ResultSet rs = st.executeQuery();

			if (rs.next()) {
				System.out.println("valid user from user DAO");
				status = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return status;
	}

}
