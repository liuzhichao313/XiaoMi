package com.demo.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.bean.User;
import com.demo.service.UserService;
import com.demo.service.impl.UserServiceImpl;
import com.demo.util.Constant;
import com.demo.util.JiaJieMi;

@WebServlet("/UserController")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private UserService userService = new UserServiceImpl();

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public String randID() {
		String uuid = UUID.randomUUID().toString().replace("-", "");
		return uuid.substring(24);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String op = request.getParameter("op");
		switch (op) {
		case "regist":
			regist(request, response);
			break;
		case "userExists":
			userExists(request, response);
			break;
		case "showAllUsers":
			showAllUsers(request, response);
			break;
		case "userLogin":
			login(request, response);
			break;
		default:
			break;
		}
	}

	private void login(HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException,
			IOException {
		request.setCharacterEncoding("utf-8");
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("upwd");
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();

		User user = null;
		try {
			user = userService.userLogin(uname, JiaJieMi.get3DESEncrypt(pwd, Constant.SPKEY));
		} catch (SQLException e) {
			e.printStackTrace();
		}

		if (user != null) {
//			out.write("登录成功");
//			response.sendRedirect(request.getContextPath()+ "/xiaomi.html");
			
			try {
				request.getSession().setAttribute("user", uname+pwd);
				String URL = (String) request.getSession().getAttribute("URL");
				
				if(URL == null){
					request.getRequestDispatcher("showUserName.jsp").forward(request, response);
				}else {
					response.sendRedirect(URL);
					return;
				}		
			} catch (ServletException e) {
				e.printStackTrace();
			}

		} else {
//			out.write("登陆失败");
			response.sendRedirect(request.getContextPath()+ "/loginFailed.html");
		}

	}
	
	private void showAllUsers(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			List<User> allUsers = userService.getAllUsers();
			request.setAttribute("allUsers", allUsers);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("showAllUsers.jsp").forward(request,
				response);
	}

	private void regist(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		// 获取前端页面传递过来的值
		String id = randID();
		String uname = request.getParameter("uname");
		String tel = request.getParameter("tel");
		String nickname = request.getParameter("nickname");
		String upwd = request.getParameter("upwd");
		String email = request.getParameter("email");
		String genderStr = request.getParameter("gender");
		boolean gender = genderStr.equals("male") ? true : false;

		String zhengJianStr = request.getParameter("zhengJian");
		byte zjlx = Byte.parseByte(zhengJianStr);

		String[] hobbys = request.getParameterValues("hobby");
		String hobby = Arrays.toString(hobbys);
		hobby= hobby.substring(1,hobby.length()-1);		
		// 用这些值构造出来一个User对象
		User user = new User(id, uname, tel, nickname, JiaJieMi.get3DESEncrypt(upwd, Constant.SPKEY)  , email, gender,
				zjlx, hobby);

		// 将这个User对象保存到数据库中
		PrintWriter out = response.getWriter();

		try {
			int userRegitRes = userService.userRegist(user);
			if (userRegitRes == 1)
//				out.write("success");
				response.sendRedirect(request.getContextPath()+ "/registSuccess.html");
			else
//				out.write("failed");
				response.sendRedirect(request.getContextPath()+ "/regist.html");
		} catch (SQLException e) {
			e.printStackTrace();
//			out.write("failed");
			response.sendRedirect(request.getContextPath()+ "/regist.html");
		}
	}

	private void userExists(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String uname = request.getParameter("uname");
		PrintWriter out = response.getWriter();

		try {
			boolean getUserByNameRes = userService.getUserByName(uname);
			if (getUserByNameRes == true)
				out.write("{\"res\":\"exist\"}");
			else
				out.write("{\"res\":\"not\"}");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		out.flush();
	}

}
