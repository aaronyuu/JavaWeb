<%@ page language="java" import="java.util.*" 	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
			
				String username="";
	String password="";
	
	request.setCharacterEncoding("utf-8");
	
	username=request.getParameter("username");
	password=request.getParameter("password");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>登陆</title>

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
	<form action="dologin.jsp">
<font color="#ff0000" size="-1">登陆成功<br></font>
		<table>
			<tr>
				<td>用户名:</td>
				<td><%=session.getAttribute("username")%></td>
			</tr>
			<tr>
				<td>当前时间:</td>
				<td><%
				pageContext.include("/pageContext/in.jsp");
				 %></td>
			</tr>
		<tr>
				<td>登陆成功时间:</td>
				<td><%=session.getAttribute("logintime")%></td>
			</tr>
		</table>




	</form>
</body>
</html>