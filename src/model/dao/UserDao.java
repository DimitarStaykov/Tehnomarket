package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import controller.DBManager;
import model.User;

public class UserDao {

	private static UserDao instance;
	private static Connection con;
	
	private UserDao() {
		con = DBManager.getInstance().getConnection();
	}
	
	public static UserDao getInstance() {
		if(instance == null) {
			instance = new UserDao();
		}
		return instance;
	}

	public void saveUser(User u) throws SQLException {
		String sql = "INSERT INTO users(email, firstName, lastName, password, gender, dateOfBirth, isAdmin) VALUES (?, ?, ?, ?);";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, u.getEmail());
		ps.setString(2, u.getPassword());
		ps.setString(3, u.getEmail());
		ps.setInt(4, u.getGender());
		ps.executeUpdate();
	}

	public User getUser(String email, String pass) throws SQLException {
		String sql = "SELECT user_id, email, firstName, lastName, password, gender, dateOfBirth, isAdmin FROM users WHERE email = ? AND password = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, email);
		ps.setString(2, pass);
		ResultSet result = ps.executeQuery();
		if(result.next()) {
			return new User(result.getInt("user_id"),
					result.getString("email"),
					result.getString("firstName"),
					result.getString("lastName"),
					result.getString("password"),
					result.getInt("gender"),
					result.getDate("dateOfBirth"),
					result.getBoolean("isAdmin"));
		}
		else {
			return null;
		}
	}

	
	
}
