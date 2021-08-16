package vn.ptit.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import vn.ptit.model.Product;

public class ProductDAO extends DAO{
	public ProductDAO() {
		super();
	}
	
	public List<Product> getProduct(){
		List<Product> list = new ArrayList<>();
		String sql = "SELECT * FROM product";
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Product product = new Product(rs.getInt("id"), rs.getString("name"), rs.getString("nameImg"), rs.getDouble("price"), rs.getInt("category_id"));
				list.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}
	
	public void addProduct(Product product){
		String sql = "INSERT INTO product (name,nameImg,price,category_id) VALUES (?,?,?,?)";
		try {
			PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			ps.setString(1, product.getName());
			ps.setString(2, product.getNameImg());
			ps.setDouble(3, product.getPrice());
			ps.setInt(4, product.getCategory_id());
			ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
