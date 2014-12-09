<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
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

<title>用户注册</title>
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
	<h1>用户注册</h1>
	<form action="request/do.jsp" name="doGet" method="post">
		用户名:<input name="username" type="text" /><br> 爱好:<input
			name="aihao" type="checkbox" value="singsong">唱歌 <input
			name="aihao" type="checkbox" value="song">听歌 <input
			name="aihao" type="checkbox" value="dance">跳舞 <input
			name="aihao" type="checkbox" value="eat">吃饭 <br> <input
			type="submit" value="提交" /><br>

	</form>



</body>
</html>
