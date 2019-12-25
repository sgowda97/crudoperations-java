<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit data</title>
</head>
<body>
	<%@page import="com.jspcrud.dao.UserDao, com.jspcrud.bean.User"%>

	<%
		String id = request.getParameter("id");
		User u = UserDao.getDataById(Integer.parseInt(id));
		String gender = u.getGender();
	%>

	<h1 style="text-align: center">Edit form</h1>
	<form action="edituser.jsp" method="post">
		<input type="hidden" name="id" value="<%=u.getId()%>" />
		<table>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" value="<%=u.getName()%>" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="email" name="email" value="<%=u.getEmail()%>" /></td>
			</tr>
			<tr>
				<td>Gender:</td>
				<td><input type="radio" name="gender" value="male" <%=u.getGender().equals("male")? "checked":"" %> />Male<input
					type="radio" name="gender" value="female" <%=u.getGender().equals("female")? "checked":"" %> />Female</td>
			</tr>
			<tr>
				<td>Country:</td>
				<td><select name="country">
						<option>India</option>
						<option>USA</option>
						<option>UK</option>
						<option>Sweden</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Edit User" /></td>
			</tr>
		</table>
	</form>
</body>
</html>