package model;

import java.sql.Date;

public class Product {

	private int id;
	private String name;
	private String brand;
	private float price;
	private int discount;
	private Date discountEnd;
	private String image;
	private long categoryId;
	
	//will do a builder here
	
	
	public Product(int id, String name, String brand, float price, int discount,Date discountEnd,String image,long categoryId) {
		this.id = id;
		this.name = name;
		this.brand = brand;
		this.price = price;
		this.discount = discount;
		this.discountEnd = discountEnd;
		this.image = image;
		this.categoryId = categoryId;
	}
	
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getBrand() {
		return brand;
	}
	public float getPrice() {
		return price;
	}
	public int getDiscount() {
		return discount;
	}
	public Date getDiscountEnd() {
		return discountEnd;
	}
	public String getImage() {
		return image;
	}
	public long getCategoryId() {
		return categoryId;
	}
	
	
}
