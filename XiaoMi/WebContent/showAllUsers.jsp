<%@page import="com.demo.bean.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>info</title>
</head>
<body>
	<div style="width: 80%;margin: 0px auto;">
	<table style="width: 100%">
		<tr>
			<th>序号</th>
			<th>编号</th>
			<th>姓名</th>
			<th>手机号</th>
			<th>昵称</th>
			<th>密码</th>
			<th>邮箱</th>
			<th>性别</th>
			<th>证件类型</th>
			<th>爱好</th>
		</tr>
<c:forEach var="user" items="${allUsers }" varStatus="status">
				<c:if test="${status.count %2==0}">
					<tr style="background-color: red">
				</c:if>
				<c:if test="${status.count %2!=0}">
					<tr style="background-color: yellow">
				</c:if>
			<td>${status.count }</td>
			<td>${user.id }</td>
			<td>${user.name }</td>
			<td>${user.tel }</td>
			<td>${user.nickname }</td>
			<td>${user.pwd }</td>
			<td>${user.email }</td>
			<td>
				<c:if test="${user.gender }">男</c:if>
				<c:if test="${!user.gender }">女</c:if>
			</td>
			<td>
				<c:choose>
					<c:when test="${user.zjlx == 1}">身份证</c:when>
					<c:when test="${user.zjlx == 2}">护照</c:when>
					<c:when test="${user.zjlx == 3}">临时身份证</c:when>
				</c:choose>
			</td>
			<td>${user.hobby }</td>
		</tr>
	</c:forEach>
	</table>
	</div>
</body>
</html>