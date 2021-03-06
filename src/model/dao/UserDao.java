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
		String sql = "INSERT INTO users(email, first_name, last_name, password, genders_id, birth_date, is_admin) VALUES (?, ?, ?, ?,?,?,?)";
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
		String sql = "SELECT id, email, first_name, last_name, password, genders_id, birth_date, is_admin FROM users WHERE email = ? AND password = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, email);
		ps.setString(2, pass);
		ResultSet result = ps.executeQuery();
		if(result.next()) {
			return new User(result.getInt("id"),
					result.getString("email"),
					result.getString("first_name"),
					result.getString("last_name"),
					result.getString("password"),
					result.getInt("genders_id"),
					result.getDate("birth_date"),
					result.getBoolean("is_admin"));
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
