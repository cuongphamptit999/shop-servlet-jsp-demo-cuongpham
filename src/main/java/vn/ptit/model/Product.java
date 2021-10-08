package vn.ptit.model;

public class Product {
	private int id;
	private String name;
	private String nameImg;
	private double price;
	private String content;
	private int categoryId;
	
	public Product() {
	
	}

	public Product(int id, String name, String nameImg, double price, String content, int categoryId) {
		super();
		this.id = id;
		this.name = name;
		this.nameImg = nameImg;
		this.price = price;
		this.content = content;
		this.categoryId = categoryId;
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

}
