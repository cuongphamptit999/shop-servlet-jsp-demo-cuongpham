package vn.ptit.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.ptit.dao.ProductDAO;
import vn.ptit.model.Product;

@WebServlet(urlPatterns = { "/home" })
public class HomeController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		List<Product> list = new ArrayList<>();
		ProductDAO productDAO = new ProductDAO();
		list = productDAO.getProduct();

		req.setAttribute("listProduct", list);
		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/index.jsp");
		requestDispatcher.forward(req, resp);
	}

}
