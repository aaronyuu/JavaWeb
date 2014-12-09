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
  
  <h1>全部匹配</h1>
	<jsp:useBean id="user1" class="com.po.Users" scope="page"></jsp:useBean>
	<jsp:setProperty property="*" name="user1"/>
	  用户名:<%=user1.getUsername() %><br>
	  密码:<%=user1.getPassword()	 %><br>
	  
  <h1>部分匹配</h1>
	<jsp:useBean id="user2" class="com.po.Users" scope="page"></jsp:useBean>
	<jsp:setProperty name="user2" property="username" />
	  用户名:<%=user2.getUsername() %><br>
	  密码:<%=user2.getPassword()	 %><br>  


  <h1>跟表单无关,通过value赋值</h1>
	<jsp:useBean id="user3" class="com.po.Users" scope="page"></jsp:useBean>
	<jsp:setProperty name="user3" property="password" value="666666" />
	  用户名:<%=user3.getUsername() %><br>
	  密码:<%=user3.getPassword()	 %><br>    
	  
  <h1>通过URL</h1>
	<jsp:useBean id="user4" class="com.po.Users" scope="page"></jsp:useBean>
	<jsp:setProperty name="user4" property="username" />
	<jsp:setProperty name="user4" property="password" param="mypass" />
	  用户名:<%=user4.getUsername() %><br>
	  密码:<%=user4.getPassword()	 %><br>    
	  
	
	
	
	  <h1>jsp:getProperty</h1>
	  用户名:<jsp:getProperty name="user1" property="username"/><br>
	  密码:<jsp:getProperty name="user1" property="password"/><br> 
    </body>
</html>
