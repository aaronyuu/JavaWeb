<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ page import="com.po.Users"%>
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

<%
String username="";
String password="";
if(request.getParameter("username").length()>0)
	username=request.getParameter("username");
	
if(request.getParameter("password").length()>0)
	password=request.getParameter("password");
	

 %>

    <form action=doLogin.jsp method="post">
    	<font color="red" size="-1">登陆失败,请检查用户名密码,重新登陆.<br></font> 
     	 用户名:<input type=text name=username value="<%=username%>" /><br>
 	 密码:<input type=password name=password value="<%=password %>" /><br>
    <input type="submit">
    </form>
    

    </body>
    
</html>
