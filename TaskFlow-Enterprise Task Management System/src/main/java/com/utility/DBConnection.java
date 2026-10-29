package com.utility;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

	private static Connection instance;

	public static Connection getDBConnection() {
		// load driver

		if (instance == null) {
			try {
				System.out.println("request for DB connect!!!!");
				Class.forName("com.mysql.cj.jdbc.Driver");
				instance = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "Root@123");
				System.out.println("DB connected successfuly!!!!");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return instance;

	}

}
