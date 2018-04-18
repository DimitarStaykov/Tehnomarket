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
		String sql = "INSERT INTO users(email, firstName, lastName, password, Genders_id, dateOfBirth, isAdmin) VALUES (?, ?, ?, ?,?,?,?);";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, u.getEmail());
		ps.setString(2, u.getFirstName());
		ps.setString(3, u.getLastName());
		ps.setString(4, u.getPassword());
		ps.setInt(5, u.getGender());
		ps.setDate(6, u.getDateOfBirth());
		ps.setBoolean(7, u.isAdmin());
		ps.executeUpdate();
	}

	public User getUser(String email, String pass) throws SQLException {
		String sql = "SELECT user_id, email, firstName, lastName, password, Genders_id, dateOfBirth, isAdmin FROM users WHERE email = ? AND password = ?";
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
					result.getInt("Genders_id"),
					result.getDate("dateOfBirth"),
					result.getBoolean("isAdmin"));
		}
		else {
			return null;
		}
	}

	public String getHashPass(String email) throws SQLException {
		String sql = "SELECT password FROM users WHERE email = ? ";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, email);
		ResultSet result = ps.executeQuery();
		if(result.next()) {
			return result.getString("password");
		}
		else {
			return null;
		}
	}

	
	
}
