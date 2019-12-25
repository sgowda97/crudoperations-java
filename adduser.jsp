<%@ page import="com.jspcrud.dao.UserDao"%>

<jsp:useBean id="u" class="com.jspcrud.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u" />

<%
	int i = UserDao.register(u);

	if (i > 0)
		response.sendRedirect("adduser-success.jsp");
	else
		response.sendRedirect("adduser-error.jsp");
%>