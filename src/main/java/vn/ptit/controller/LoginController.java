package vn.ptit.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.ptit.dao.UserDAO;
import vn.ptit.model.User;

@WebServlet(urlPatterns = "/login")
public class LoginController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/login.jsp");
		requestDispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		UserDAO userDao = new UserDAO();
		User user = userDao.getUser(username, password);
		
		if(user==null) {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/login.jsp");
			req.setAttribute("status", "Bạn đăng nhập thất bại");
			requestDispatcher.forward(req, resp);
		}
		else {
			Cookie cookie = new Cookie("key", user.getKey());
			cookie.setMaxAge(-1);
			resp.addCookie(cookie);

			resp.sendRedirect("/ShopServletJspDemo/admin/add-product");
		}
	}

}
