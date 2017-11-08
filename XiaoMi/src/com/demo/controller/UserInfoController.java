package com.demo.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.bean.UserInfo;
import com.demo.service.UserInfoService;
import com.demo.service.impl.UserInfoServiceImpl;

@WebServlet("/UserInfoController")
public class UserInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private UserInfoService userInfoService = new UserInfoServiceImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	public String randID() {
		String uuid = UUID.randomUUID().toString().replace("-", "");
		return uuid.substring(24);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			request.setCharacterEncoding("utf-8");
			String name = request.getParameter("name");
			String phone = request.getParameter("phone");
			String diZhi = request.getParameter("dizhi");

			UserInfo userInfo = new UserInfo(name, phone, diZhi);
			int res = userInfoService.userInfo(userInfo);
			
			UserInfo info = userInfoService.getUserInfoByName(name);
			request.getSession().setAttribute("info", info);
			request.getRequestDispatcher("infoShow.jsp").forward(request,
					response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
