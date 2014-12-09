<%@ page language="java" import="java.util.*" 	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
String username="";
username=request.getParameter("username");
String password="";
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

		<form action="login/dologin.jsp" method="post">
	
		<font color="#ff0000" size="-1">登陆失败,请检查用户名密码.<br></font>
		<table>
			<tr>
				<td>用户名:</td>
				<td><input type="text" name="username" value=<%=username %>></td>
			</tr>
			<tr>
				<td>密码:</td>
				<td><input type="password" name="password" value=<%=password %>></td>
			</tr>
			<tr align="center">
			<td colspan="2">
			<input type="submit"  value="登陆"/>
			</td>
			</tr>
		</table>
	
	</form>



</body>
</html>
