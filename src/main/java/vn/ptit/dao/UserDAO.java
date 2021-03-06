package vn.ptit.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import vn.ptit.model.Product;
import vn.ptit.model.User;

public class UserDAO extends DAO {
	public UserDAO() {
		super();
	}

	public User getUser(String username, String password) {
		User user = null;
		String sql = "SELECT * FROM tbl_user WHERE username = ? AND password = ?";
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				user = new User(rs.getInt("id"), rs.getString("username"), rs.getString("password"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return user;

	}

	public User getUserByUsername(String username) {
		User user = null;
		String sql = "SELECT * FROM tbl_user WHERE tbl_user.username = ?";
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				user = new User(rs.getInt("id"), rs.getString("username"), rs.getString("password"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return user;

	}
}
