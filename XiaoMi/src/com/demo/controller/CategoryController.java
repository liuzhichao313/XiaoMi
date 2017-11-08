package com.demo.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.demo.bean.Category;
import com.demo.bean.Goods;
import com.demo.service.CategoryService;
import com.demo.service.GoodsService;
import com.demo.service.impl.CategoryServiceImpl;
import com.demo.service.impl.GoodsServiceImpl;
import com.demo.util.PageBean;

@MultipartConfig
@WebServlet("/categoryController")
public class CategoryController extends HttpServlet {
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
		case "showAllCategories":
			showAllCategories(request, response);
			break;
		case "toAddGoods":
			try {
				List<Category> categories = categoryService.getAllCategories();
				request.setAttribute("allCategories", categories);
//			request.getRequestDispatcher("sec/goodsAdd.jsp").forward(request,response);
				response.sendRedirect("sec/goodsAdd.jsp");
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			break;
		case "addGoods":
			addGoods(request, response);
			break;
		case "showGoodsByCategory":
			String categoryIdStr = request.getParameter("categoryId");
			int categoryId = Integer.parseInt(categoryIdStr);
			String pageNumStr = request.getParameter("pageNum");
			int pageNum = Integer.parseInt(pageNumStr);
			
			try {
				List<Category> allCategories = categoryService.getAllCategories();
				request.setAttribute("allCategories", allCategories);
				PageBean<Goods> pageBean = new PageBean<Goods>();
				pageBean.setPageNum(pageNum);
				if(categoryId >0){
					List<Goods> goods =  categoryService.getGoodsByCategoryId(categoryId,pageNum);
					pageBean.setPageDatas(goods);
					pageBean.setTotalRecords((int)goodsService.getTotalRecordsByCategoryId(categoryId));
				}else if(categoryId ==-1){					
					List<Goods> goodsWidthPage = goodsService.getAllGoodsWidthPage(pageNum);
					pageBean.setPageDatas(goodsWidthPage);
					pageBean.setTotalRecords((int)goodsService.getTotalRecords());
				}
				request.setAttribute("pageBean", pageBean);
				request.getRequestDispatcher("goodsShow.jsp").forward(request,response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			break;
		default:
			break;
		}
	}

	private void addGoods(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name");
//		String name = new String(name1.getBytes("ISO-8859-1"),"UTF-8");
		// 对于图片的处理，先将图片保存到指定的位置，再将这个位置相对应的路径保存到库中
		Part part = request.getPart("img");
		String realPath = getServletContext().getRealPath("/upload");
		String fileName = UUID.randomUUID().toString();
		String cd = part.getHeader("Content-Disposition");
		String suffix = cd.substring(cd.lastIndexOf('.'), cd.length() - 1);
		part.write(realPath+"/" + fileName + suffix);
		System.out.println(realPath);
		String img = "upload/" + fileName + suffix;

		String price = request.getParameter("price");

		String addr = request.getParameter("addr");
		String baoXiuQi = request.getParameter("baoXiuQi");
		
		String miaoShu = request.getParameter("miaoShu");
//		String miaoShu = new String(miaoShu1.getBytes("ISO-8859-1"),"UTF-8");

		String jiFenStr = request.getParameter("jiFen");
		int jiFen = Integer.parseInt(jiFenStr);
		
		String level = request.getParameter("level");
//		String level = new String(level1.getBytes("ISO-8859-1"),"UTF-8");

		String categoryIDStr = request.getParameter("categoryID");
		int categoryId = Integer.parseInt(categoryIDStr);

		Goods goods = new Goods(name, img, price, addr, baoXiuQi, miaoShu, jiFen, level, categoryId);
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		try {
			int addGoodsRes = goodsService.addGoods(goods);
			if (addGoodsRes == 1)
//				out.print("add success");
			    response.sendRedirect(request.getContextPath()+ "/huanchong.html");
			else
				out.print("add failed");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private void showAllCategories(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			List<Category> allCategories = categoryService.getAllCategories();
			request.setAttribute("allCategories", allCategories);
			request.getRequestDispatcher("goodsAdd.jsp").forward(request,
					response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
