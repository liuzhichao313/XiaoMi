package com.demo.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.bean.Category;
import com.demo.service.CategoryService;
import com.demo.service.impl.CategoryServiceImpl;

@WebFilter("/sec/*")
public class ManagerLoginFilter implements Filter {

	public ManagerLoginFilter() {
	}

	public void destroy() {
	}

	private CategoryService categoryService = new CategoryServiceImpl();

	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;

		String manager = (String) request.getSession().getAttribute("manager");
		if (manager == null) {
			response.sendRedirect("../managerLogin.html");// ÷ÿ∂®œÚ
			return;
		}

		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
