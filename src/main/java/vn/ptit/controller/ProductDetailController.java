package vn.ptit.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.ptit.dao.CategoryDAO;
import vn.ptit.dao.ProductDAO;
import vn.ptit.model.Category;
import vn.ptit.model.Product;

@WebServlet(urlPatterns = "/product-detail")
public class ProductDetailController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CategoryDAO categoryDAO = new CategoryDAO();
		List<Category> listCate = categoryDAO.getCategoryDAO();

		req.setAttribute("listCate", listCate);
		
		Product product = new Product();
		ProductDAO productDAO = new ProductDAO();
		product = productDAO.getOneProduct(Integer.parseInt(req.getParameter("id")));
		
		req.setAttribute("product", product);

		RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/product_detail.jsp");
		requestDispatcher.forward(req, resp);
	}

}
