<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>添加商品</title>
	</head>
	<body background="../images/wyf.jpg">
		<form action="categoryController?op=addGoods" method="post" enctype="multipart/form-data"
			style="margin: 0px auto;margin-left:130px;width: 450px;margin-top: 100px;background-color: #DFC2A2;color: #6C4524;">
			名&nbsp;称：<input type="text" name="name" style="width: 250px;height: 25px"><br>
			图&nbsp;片：<input type="file" name="img" style="margin-top: 15px;width: 250px;height: 25px"><br>
			价&nbsp;格：<input type="text" name="price" style="margin-top: 15px;width: 250px;height: 25px"><br>  
			产&nbsp;地：<input type="text" name="addr" style="margin-top: 15px;width: 250px;height: 25px"><br>
			保修期：<input type="text" name="baoXiuQi" style="margin-top: 15px;width: 250px;height: 25px"><br>
			描&nbsp;述：<input type="text" name="miaoShu" style="margin-top: 15px;width: 250px;height: 25px"><br>
			积&nbsp;分：<input type="text" name="jiFen" style="margin-top: 15px;width: 250px;height: 25px"><br>
			评&nbsp;价：<select name="level" style="margin-top: 15px;width: 253px;height: 30px">
		<option>5星级</option>
		<option>4星级</option>
		<option>3星级</option>
		<option>2星级</option>
		<option>1星级</option>
	      <select><br>

			各&nbsp;类：<select name="categoryID" style="margin-top: 15px;width: 255px;height: 30px">
				<c:forEach items="${ allCategories}" var="category">
					<option value="${category.id }">${category.name } </option>
				</c:forEach>
			</select>
			<input type="submit" value="提交">
		</form>
		<div style="width: 160px;height: 60px;background-color: #DFC2A2;float: right;margin-top: -470px;
			margin-right: 45px;">
				<a href="../xiaomi.html" style="text-decoration: none;color: #6C4524;font-family: 微软雅黑">登录&nbsp;进入小米官网></a>
		</div>
	</body>
</html>