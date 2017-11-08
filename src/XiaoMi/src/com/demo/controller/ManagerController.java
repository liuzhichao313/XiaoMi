package com.demo.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.bean.Category;
import com.demo.service.CategoryService;
import com.demo.service.impl.CategoryServiceImpl;

@WebServlet("/ManagerController")
public class ManagerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CategoryService categoryService = new CategoryServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String uname = request.getParameter("username");
		String pwd = request.getParameter("password");

		
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		if ("À×¾ü".equals(uname) && "xiaomi".equals(pwd) || "shasha".equals(uname) && "977".equals(pwd)) {
//			out.write("µÇÂ¼³É¹¦");
			request.getSession().setAttribute("manager", uname+pwd);
			try {
				List<Category> allCategories = categoryService.getAllCategories();
				request.getSession().setAttribute("allCategories", allCategories);
//				request.getRequestDispatcher("sec/goodsAdd.jsp").forward(request,response);
				response.sendRedirect("sec/goodsAdd.jsp");
			} catch (SQLException e) {
				e.printStackTrace();
			}

		} else {
			out.write("you go out!");
		}
	}

}
