<%@ page language="java" import="java.util.*"	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
		Cookie myname = new Cookie("username", "vcvok");
		Cookie mypassword = new Cookie("password", "666666");
		myname.setMaxAge(3600);
		mypassword.setMaxAge(3600);
		response.addCookie(myname);
		response.addCookie(mypassword);

		Cookie[] cookies = request.getCookies();
		if (cookies != null && cookies.length > 0) {
			for (Cookie c : cookies) {
				out.print(c.getName() + ":" + c.getValue() + "<br>");
				out.flush();
			}
		}

		//清除Cookie<br>
		if (cookies != null && cookies.length > 0) {
			for (Cookie c : cookies) {
				c.setMaxAge(0);
				response.addCookie(c);
			}
		}
	%>
</body>
</html>
