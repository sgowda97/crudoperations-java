<%@page import="com.jspcrud.dao.UserDao"%>
<jsp:useBean id="u" class="com.jspcrud.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u" />
<%
	UserDao.delete(u);
	response.sendRedirect("viewusers.jsp");
%>