<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*"	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

	String username = "";
	String password = "";

	request.setCharacterEncoding("utf-8");

	username = request.getParameter("username");
	password = request.getParameter("password");

	if ("admin".equals(username) && "123456".equals(password)) {
	
		session.setAttribute("username", username);
		session.setAttribute("password", password);
		session.setAttribute("isLogin", true);
		SimpleDateFormat sdf=new SimpleDateFormat();
		Date date=new Date();
		String logintime=sdf.format(date);
		session.setAttribute("logintime", logintime);
		
		
		response.sendRedirect("login_seccess.jsp");
		
	} else {
	session.invalidate();
				pageContext.forward("login_fail.jsp");
		//request.getRequestDispatcher("login_fail.jsp").forward(request,response);
	}
%>
<jsp:forward page="login_fail.jsp"/>