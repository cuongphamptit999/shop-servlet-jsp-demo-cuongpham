package vn.ptit.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import vn.ptit.model.Category;
import vn.ptit.model.Product;

public class CategoryDAO extends DAO{
	public CategoryDAO() {
		super();
	}
	
	public List<Category> getCategoryDAO(){
		List<Category> list = new ArrayList<>();
		String sql = "SELECT * FROM tbl_category";
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				list.add(new Category(rs.getInt("id"), rs.getString("name")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}


}
