package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBManager {
	
	private static DBManager instance;
	private static Connection con;
	
	private static final String DB_NAME = "tehnomarket";
	private static final String DB_IP = "localhost";
	private static final String DB_PORT = "3306";
	private static final String DB_USERNAME = "root";
	private static final String DB_PASSWORD = "1qaz2wsx";
	
	private DBManager() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("Driver not loaded.");
		}
		
		try {
			con = DriverManager.getConnection("jdbc:mysql://"+DB_IP+":"+DB_PORT+"/"+DB_NAME, DB_USERNAME, DB_PASSWORD);
		} catch (SQLException e) {
			System.out.println("Connection to database failed.");
		}
		
	}
	
	public static DBManager getInstance() {
		if(instance == null) {
			instance = new DBManager();
		}
		return instance;
	}
	
	public Connection getConnection() {
		return con;
	}

}
