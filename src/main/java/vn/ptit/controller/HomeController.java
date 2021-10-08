package vn.ptit.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.ptit.dao.CategoryDAO;
import vn.ptit.dao.ProductDAO;
import vn.ptit.model.Category;
import vn.ptit.model.Product;

@WebServlet(urlPatterns = { "/", "/home" })
public class HomeController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Product> list = new ArrayList<>();
		ProductDAO productDAO = new ProductDAO();
		list = productDAO.getProduct();

		req.setAttribute("listProduct", list);
		
		CategoryDAO categoryDAO = new CategoryDAO();
		List<Category> listCate = categoryDAO.getCategoryDAO();

		req.setAttribute("listCate", listCate);
		
		Cookie cookie = new Cookie("name", "Cuong");
		cookie.setMaxAge(-1);
		resp.addCookie(cookie);
		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/home.jsp");
		requestDispatcher.forward(req, resp);
	}

}
