package model;

public class Product {

	private long id;
	private String productName;
	private float price;
	private boolean isVisible;
	private long discount;
	
	private long categoryId;
	
	
	//will do a builder here
	
	public Product() {}
	
	public Product setNewId(long id) {
		this.id =id;
		return this;
	}
	
	public Product setNewProductName(String name) {
		this.productName = name;
		return this;
	}
	
	public Product setNewPrice(long price) {
		this.price =price;
		return this;
	}
	
	public Product setNewVisibility(boolean vis) {
		this.isVisible =vis;
		return this;
	}
	
	public Product setNewDiscount(long discount) {
		this.discount =discount;
		return this;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getProductName() {
		return productName;
	}

	public float getPrice() {
		return price;
	}

	public boolean isVisible() {
		return isVisible;
	}

	public long getDiscount() {
		return discount;
	}

	public long getCategoryId() {
		return categoryId;
	}
	
	
	
}
