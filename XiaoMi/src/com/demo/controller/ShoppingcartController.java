package com.demo.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

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

@WebServlet("/shoppingcartController")
public class ShoppingcartController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private GoodsService goodsService = new GoodsServiceImpl();

	public ShoppingcartController() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String op = request.getParameter("op");
		switch (op) {
		case "add":
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
				Map<Integer, CartItem> cart = (Map<Integer, CartItem>) session
						.getAttribute("cart");

				if (cart == null) {
					cart = new HashMap<Integer, CartItem>();
				}
				
				Set<Entry<Integer, CartItem>>  entries= cart.entrySet();
//				for(Entry<Integer, CartItem> entry : entries)
//					System.out.println(entry.getKey()+" "+entry.getValue());
				
				
				CartItem cartItem = cart.get(goodsId);
				if (cartItem != null) {// 如果存在
					cartItem.setAmount(cartItem.getAmount() + 1);
				} else {// 如果不存在
					CartItem item = new CartItem(goods, 1);
					cart.put(goodsId, item);
				}
				Set<Integer> s = new HashSet<Integer>();
				s.add(2);
				s.add(3);
				s.add(4);
				session.setAttribute("cart", cart);
				session.setAttribute("s", s);
				

				String URL = (String) request.getSession().getAttribute("URL");
				response.sendRedirect(URL);

			} catch (NumberFormatException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			break;
		case "shopCar":
			request.getRequestDispatcher("mgr/shopCar.jsp").forward(request,
					response);
			break;
		case "sub":
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
				Map<Integer, CartItem> cart = (Map<Integer, CartItem>) session
						.getAttribute("cart");

				if (cart == null) {
					cart = new HashMap<Integer, CartItem>();
				}
				
//			Set<Entry<Integer, CartItem>>  entries= dingdan.entrySet();
//				for(Entry<Integer, CartItem> entry : entries)
//					System.out.println(entry.getKey()+" "+entry.getValue());
				
				
				CartItem cartItem = cart.get(goodsId);
				if (cartItem != null) {// 如果存在
//					购买后的逻辑
					cart.remove(goodsId);
				} 
				session.removeAttribute("cart");
				session.setAttribute("cart", cart);
				
				request.getRequestDispatcher("mgr/shopCar.jsp").forward(
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

}
