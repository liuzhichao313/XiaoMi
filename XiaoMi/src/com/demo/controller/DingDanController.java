package com.demo.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.demo.bean.CartItem;
import com.demo.bean.Goods;
import com.demo.service.GoodsService;
import com.demo.service.impl.GoodsServiceImpl;

@WebServlet("/dingDanController")
public class DingDanController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private GoodsService goodsService = new GoodsServiceImpl();
	
    public DingDanController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op = request.getParameter("op");
		switch (op) {
		case "add":
			add(request, response);
			break;
		case "pay":
			try {
				String goods_id = request.getParameter("goods_id");
				Integer goodsId = Integer.parseInt(goods_id);
				HttpSession session = request.getSession();
				Object user = session.getAttribute("user");
				if(user==null){
					response.sendRedirect("login.html");
					return;
				}
				
				Goods goods = goodsService.getGoodsById(goodsId);
				Map<Integer, CartItem> dingdan = (Map<Integer, CartItem>) session
						.getAttribute("dingdan");

				if (dingdan == null) {
					dingdan = new HashMap<Integer, CartItem>();
				}
				
//			Set<Entry<Integer, CartItem>>  entries= dingdan.entrySet();
//				for(Entry<Integer, CartItem> entry : entries)
//					System.out.println(entry.getKey()+" "+entry.getValue());
				
				
				CartItem cartItem = dingdan.get(goodsId);
				if (cartItem != null) {// 如果存在
//					购买后的逻辑
						dingdan.remove(goodsId);
				} 
				session.removeAttribute("dingdan");
				session.setAttribute("dingdan", dingdan);
				
				
				request.getRequestDispatcher("infoShow.jsp").forward(
						request, response);
			} catch (NumberFormatException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			
			break;
		default:
			break;
		}
	}

	private void add(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		try {
			String goodsIdStr = request.getParameter("goodsId");
			Integer goodsId = Integer.parseInt(goodsIdStr);
			HttpSession session = request.getSession();
			Object user = session.getAttribute("user");
			if(user==null){
				response.sendRedirect("login.html");
				return;
			}
			
			Goods goods = goodsService.getGoodsById(goodsId);
			Map<Integer, CartItem> dingdan = (Map<Integer, CartItem>) session
					.getAttribute("dingdan");

			if (dingdan == null) {
				dingdan = new HashMap<Integer, CartItem>();
			}
			
			Set<Entry<Integer, CartItem>>  entries= dingdan.entrySet();
//				for(Entry<Integer, CartItem> entry : entries)
//					System.out.println(entry.getKey()+" "+entry.getValue());
			
			
			CartItem cartItem = dingdan.get(goodsId);
			if (cartItem != null) {// 如果存在
//					购买后的逻辑
//					dingdan.remove(goodsId);
				cartItem.setAmount(cartItem.getAmount() + 1);
			} else {// 如果不存在
				CartItem item = new CartItem(goods, 1);
				dingdan.put(goodsId, item);
			}
			
			session.setAttribute("dingdan", dingdan);
			
			
			request.getRequestDispatcher("infoShow.jsp").forward(
					request, response);
//			response.sendRedirect("userInfo.html");
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
