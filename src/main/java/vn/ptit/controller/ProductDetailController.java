package vn.ptit.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.ptit.dao.ProductDAO;
import vn.ptit.model.Product;

@WebServlet(urlPatterns = "/product-detail")
public class ProductDetailController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Product product = new Product();
		ProductDAO productDAO = new ProductDAO();
		product = productDAO.getOneProduct(Integer.parseInt(req.getParameter("id")));
		
		req.setAttribute("product", product);

		RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/productDetail.jsp");
		requestDispatcher.forward(req, resp);
	}

}
