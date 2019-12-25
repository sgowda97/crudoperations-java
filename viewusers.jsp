<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View all users</title>
</head>
<body>

	<%@page
		import="com.jspcrud.dao.UserDao, com.jspcrud.bean.User, java.util.*"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<h1 style="text-align: center">Users list</h1>

	<%
		List<User> list = UserDao.getAllData();
		request.setAttribute("list", list);
	%>

	<table border="1" width="90%">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Email</th>
			<th>Gender</th>
			<th>Country</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>

		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getId() }</td>
				<td>${u.getName() }</td>
				<td>${u.getEmail() }</td>
				<td>${u.getGender() }</td>
				<td>${u.getCountry() }</td>
				<td><a href="editform.jsp?id=${u.getId() }">Edit</a></td>
				<td><a href="deleteuser.jsp?id=${u.getId() }">Delete</a></td>
			</tr>
		</c:forEach>
	</table>

	<br />
	<a href="adduserform.jsp">Add new user</a>
</body>
</html>
