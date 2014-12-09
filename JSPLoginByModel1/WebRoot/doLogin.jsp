<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  
  <h1>登陆验证</h1>
	<jsp:useBean id="user1" class="com.po.Users" scope="page"></jsp:useBean>
	<jsp:setProperty property="*" name="user1"/>
	<%
	if (user1.isLogin()){
		session.setAttribute("username", user1.getUsername());
		session.setAttribute("password", user1.getPassword());
		out.print("欢迎你,"+session.getAttribute("username")+"<br>");
		}
		else
		{
		//response.sendRedirect("login_err.jsp");
		pageContext.forward("login_err.jsp");
		}
	
	 %>

	  用户名:<jsp:getProperty name="user1" property="username"/><br>
	  密码:<jsp:getProperty name="user1" property="password"/><br> 
    </body>
    
    
</html>
