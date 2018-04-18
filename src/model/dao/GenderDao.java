package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Gender;
import controller.DBManager;

public class GenderDao {

	private static GenderDao instance;
	private static Connection con;
	
	private GenderDao() {
		con = DBManager.getInstance().getConnection();
	}
	
	public static GenderDao getInstance() {
		if(instance == null) {
			instance = new GenderDao();
		}
		return instance;
	}

	public List<Gender> getAll() throws SQLException {
		String sql = "SELECT id, name FROM genders;";
		Statement s = con.createStatement();
		ResultSet result = s.executeQuery(sql);
		List<Gender> genders = new ArrayList<>();
		while(result.next()) {
			genders.add(new Gender(result.getInt("id"), result.getString("name")));
		}
		return genders;
	}
}
