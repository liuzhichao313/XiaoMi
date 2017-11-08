<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品展示</title>
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body>
	<div class="login-box">
      <div class="box">
          <div class="login clearFix">
              <ul class="left">
                  <li><a href="xiaomi.html">小米</a></li>
                  <li><a href="#">MIUI</a></li>
                  <li><a href="#">米聊</a></li>
                  <li><a href="#">游戏</a></li>
                  <li><a href="#">多看阅读</a></li>
                  <li><a href="#">云服务</a></li>
                  <li><a href="#">小米网移动版</a></li>
                  <li><a href="#">问题反馈</a></li>
                  <li><a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">商品展示</a></li>
                  <li><a href="#">Select Region</a></li>
              </ul>
              <ul class="right">
                  <li><a href="#">小米为发烧而生！</a></li>
                  <li class="buy-in">
                      <a href="shoppingcartController?op=shopCar" class="buy">购物车</a>
                      <span>逛了这么久，赶快选购吧！</span>
                  </li>
              </ul>
          </div>
      </div>
  </div>
<form action="GoodsController?op=searchGoodsShow&pageNum=1" method="post" style="display: inline-block;"> 
  <div class="box"">
	<div class="nav-box clearFix">
    	<a href="#" class="left logo1">
        	<img class="left"; src="images/logo1.png">
        </a>
        <a href="#" class="left logo2">
            <img class="left"; src="images/logo2.png">
        </a>
        <ul class="left">
            <c:forEach items="${allCategories }" var="category" >
				<li value="${category.id }">
					<a href="categoryController?op=showGoodsByCategory&categoryId=${category.id }&pageNum=1">${category.name }</a>
				</li>
			</c:forEach>
	            <input id = "input2" type="text" name="name" style="margin-top:35px;height:30px;width: 200px;margin-left: 70px"/>
	            <input id="input1" type="submit" value="搜索" style="margin-top:35px;height:33px;width: 40px;"/>
        </ul>

    </div>
 </div>
 </form>		
	 <div style="width: 100%;width: 1365px;margin-left: 45px">
	 <c:forEach items="${pageBean.pageDatas }" var="goods">
	 	<div class="match-box" style="width: 25%;height: 340px;margin: 0px auto;">
	      <ul class="match-below" >
	          <li class="goods-part">
	              <a class="left" href="GoodsController?op=showGoodsDetail&goodsId=${goods.id}">
	                     <img width="220px" height="220px" src="${goods.img }" alt="${goods.img }"/></a>
	              <a href="#">${goods.name}</a>
	              <a href="#">${goods.price}</a>
	              <a href="#">${goods.level}</a>
	              <p>${goods.miaoShu}&hellip;</p>
	          </li>
	      </ul>
	  </div>
	  </c:forEach>
	</div>
	
	    <div style="position: fixed;bottom: 0;">
	        <span><a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=1">首页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></span>
				<c:if test="${pageBean.havePrePage }">
					<span><a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=${pageBean.pageNum-1}">上一页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></span>
				</c:if>
				<c:if test="${pageBean.haveNextPage }">
					<span><a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=${pageBean.pageNum+1}">下一页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></span>
				</c:if>
			<span><a href="categoryController?op=showGoodsByCategory&categoryId=-1&pageNum=${pageBean.totalPages}">末页</a></span>
        </div>
        <img alt="dibu" src="images/dibu.png">
</body>

</html>