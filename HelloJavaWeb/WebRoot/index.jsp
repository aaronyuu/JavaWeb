<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8"%>
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
	This is my JSP page.2014年11月28日
	<br> 大家好，UTF-8编码
	<br>
	<!-- HTML注释,客户端可通过查看源代码查看 -->
	<%--JSP注释,客户端不可见 --%>
	<%
		//单选注释
	    	
	    	/**
	    	多行注释
	    	哈哈
	    	*/
	    	
	    	out.println("输出点东西");
	%>

	<%!
		String str1="这是啥?";
	     int sum(int x,int y){
	     return x+y;
	     };
	%>
	
	<%
	
	out.print(str1);
	out.println(sum(1,2));
	 %>
</body>
</html>
