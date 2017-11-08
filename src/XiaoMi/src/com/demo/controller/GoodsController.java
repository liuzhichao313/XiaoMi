package com.demo.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.demo.bean.Category;
import com.demo.bean.Goods;
import com.demo.service.CategoryService;
import com.demo.service.GoodsService;
import com.demo.service.impl.CategoryServiceImpl;
import com.demo.service.impl.GoodsServiceImpl;
import com.demo.util.PageBean;

@WebServlet("/GoodsController")
public class GoodsController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private CategoryService categoryService = new CategoryServiceImpl();
	private GoodsService goodsService = new GoodsServiceImpl();

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String op = request.getParameter("op");
		switch (op) {
		case "searchGoodsShow":
			searchGoodsShow(request, response);
			break;
		case "showGoodsDetail":
			showGoodsDetail(request, response);
			break;
		case "goumai":
			goumai(request, response);
			break;
		case "lijijiesuan":
			lijijiesuan(request, response);
			break;
		default:
			break;
		}

	}

	private void lijijiesuan(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			String goodsIdStr = request.getParameter("goodsId");
			int goodsId = Integer.parseInt(goodsIdStr);
			Goods goods = goodsService.getGoodsById(goodsId);
			request.setAttribute("goods", goods);
			request.getRequestDispatcher("lijijiesuan.jsp").forward(request,
					response);
		} catch (NumberFormatException | SQLException e) {
			e.printStackTrace();
		}
	}

	private void goumai(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String goodsIdStr = request.getParameter("goodsId");
			int goodsId = Integer.parseInt(goodsIdStr);
			Goods goods = goodsService.getGoodsById(goodsId);
			request.setAttribute("goods", goods);
			request.getRequestDispatcher("goumai.jsp").forward(request,
					response);
		} catch (NumberFormatException | SQLException e) {
			e.printStackTrace();
		}
	}

	private void showGoodsDetail(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			String goodsIdStr = request.getParameter("goodsId");
			int goodsId = Integer.parseInt(goodsIdStr);
			Goods goods = goodsService.getGoodsById(goodsId);
			request.setAttribute("goods", goods);
			HttpSession session = request.getSession();

			session.setAttribute("URL", request.getRequestURL().append("?")
					.append(request.getQueryString()).toString());

			request.getRequestDispatcher("goodsDetail.jsp").forward(request,
					response);
		} catch (NumberFormatException | SQLException e) {
			e.printStackTrace();
		}
	}

	private void searchGoodsShow(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		String name = request.getParameter("name");
		if (name == null) {
			response.sendRedirect(request.getContextPath() + "/goodsShow.jsp");
		}
		String pageNumStr = request.getParameter("pageNum");
		int pageNum = Integer.parseInt(pageNumStr);

		PageBean<Goods> pageBean = new PageBean<Goods>();
		pageBean.setPageNum(pageNum);

		try {

			List<Goods> goods = goodsService.getGoodsByName(name, pageNum);
			if (goods != null) {
				pageBean.setPageDatas(goods);
				pageBean.setTotalRecords((int) goodsService
						.getGoodsAmountByGoodsName(name));
				List<Category> allCategories = categoryService
						.getAllCategories();
				request.setAttribute("allCategories", allCategories);
				request.setAttribute("pageBean", pageBean);
				request.setAttribute("name", name);
				request.getRequestDispatcher("searchGoodsShow.jsp").forward(
						request, response);
			} else if (goods == null) {
				System.out.println("no goods");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
