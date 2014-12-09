<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@page import="com.sun.faces.facelets.tag.jstl.core.ForEachHandler"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>测试</title>
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
    <% request.setCharacterEncoding("utf-8"); 
    	request.setAttribute("password", "123456");
    
    String s1 =request.getParameter("username");
    
 
	out.print("用户名是:"+s1);

out.print("<BR>爱好是:");
	 String[] strs=request.getParameterValues("aihao");
	 for(String s:strs){
	 
	 	out.print(s+",");
	 }
	 
out.print("<br>密码是:");
out.print(request.getAttribute("password"));
 %>
 
 <br>MIME类型: <%=request.getContentType() %><br>
 协议类型: <%=request.getProtocol() %><br>
 服务器主机名: <%=request.getServerName() %><br>
服务器端口号: <%=request.getServerPort() %><br>
客户端名称: <%=request.getLocalName() %> <br>
客户端端口: <%=request.getLocalPort() %><br>
客户端IP地址: <%=request.getLocalAddr() %>
<%=request.getLocale() %>
 
  </body>
</html>
