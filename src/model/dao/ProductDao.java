package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import controller.DBManager;
import model.Product;


public class ProductDao {

	private static ProductDao instance;
	private static Connection con;
	
	private ProductDao() {
		con = DBManager.getInstance().getConnection();
	}
	
	public static ProductDao getInstance() {
		if(instance == null) {
			instance = new ProductDao();
		}
		return instance;
	}

	public Collection<Product> search(String search) throws SQLException {
		Collection<Product> products = new ArrayList<Product>();
		String sql = "SELECT id, name, brand, price, discount, discount_end, product_image, categories_id FROM products WHERE LOCATE(?,name)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, search);
		ResultSet result = ps.executeQuery();
		while(result.next()) {
			Product p = new Product(result.getInt("id"),
					result.getString("name"),
					result.getString("brand"),
					result.getFloat("price"),
					result.getInt("discount"),
					result.getDate("discount_end"),
					result.getString("product_image"),
					result.getInt("categories_id"));
			products.add(p);
		}
		return products;
	}
	
	public Product getProductById(int id) throws SQLException {
		String sql = "SELECT id, name, brand, price, discount, discount_end, product_image, categories_id FROM products WHERE id = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet result = ps.executeQuery();
		if(result.next()) {
			Product p = new Product(result.getInt("id"),
					result.getString("name"),
					result.getString("brand"),
					result.getFloat("price"),
					result.getInt("discount"),
					result.getDate("discount_end"),
					result.getString("product_image"),
					result.getInt("categories_id"));
			return p;
		}
		return null;
	}

}
