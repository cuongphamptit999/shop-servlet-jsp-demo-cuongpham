package vn.ptit.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import vn.ptit.dao.CategoryDAO;
import vn.ptit.dao.ProductDAO;
import vn.ptit.model.Category;
import vn.ptit.model.Product;

@WebServlet(urlPatterns = "/admin/add-product")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
		maxFileSize = 1024 * 1024 * 10, // 10 MB
		maxRequestSize = 1024 * 1024 * 100 // 100 MB
)
public class AddProductController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CategoryDAO categoryDAO = new CategoryDAO();
		List<Category> listCate = categoryDAO.getCategoryDAO();

		req.setAttribute("listCate", listCate);

		RequestDispatcher requestDispatcher = req.getRequestDispatcher("add_product.jsp");
		requestDispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");

		String name = req.getParameter("name");
		double price = Double.parseDouble(req.getParameter("price"));
		int categoryId = Integer.parseInt(req.getParameter("categoryId"));
		String content = req.getParameter("content");

		ProductDAO productDAO = new ProductDAO();
		Product product = new Product();
		product.setName(name);
		product.setCategoryId(categoryId);
		product.setContent(content);
		product.setPrice(price);
		
		//upload file
		Part filePart = req.getPart("file");
	    String fileName = filePart.getSubmittedFileName();
	    for (Part part : req.getParts()) {
	    	part.write("D:\\PTIT\\ShopServletJspDemo\\src\\main\\webapp\\static\\upload\\" + fileName);
	    }
	    
		product.setNameImg(fileName);

		productDAO.addProduct(product);

		resp.sendRedirect("/ShopServletJspDemo/home");

	}
}
