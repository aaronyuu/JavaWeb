<%@page import="com.sun.faces.facelets.tag.jstl.core.ForEachHandler"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
	<%
	session.setAttribute("username", "admin");
	
	 %>
<html>
<head>
<title>第三章练习</title>
</head>
<body>
	pageContext<br>
	<%=pageContext.getSession().getAttribute("username") %><BR>
	
	<%
	//跳转页面
	//pageContext.forward("../index.jsp");
	
	 %>
	<BR>
	<%
	
	pageContext.include("in.jsp");
	 %>
	
</body>
</html>
