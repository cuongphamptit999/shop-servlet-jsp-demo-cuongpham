package vn.ptit.model;

public class Product {
	private int id;
	private String name;
	private String nameImg;
	private double price;
	private int category_id;
	
	public Product() {
	
	}

	public Product(int id, String name, String nameImg, double price, int category_id) {
		super();
		this.id = id;
		this.name = name;
		this.nameImg = nameImg;
		this.price = price;
		this.category_id = category_id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNameImg() {
		return nameImg;
	}

	public void setNameImg(String nameImg) {
		this.nameImg = nameImg;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getCategory_id() {
		return category_id;
	}

	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}

}
