<%@page import="com.sun.faces.facelets.tag.jstl.core.ForEachHandler"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>第三章练习</title>
</head>
<body>
	<br>
	<%
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		long time = session.getCreationTime();
		String timeStr = sdf.format(time);

		session.setAttribute("username", "admin");
		session.setAttribute("password", "123456");
		session.setAttribute("age", 18);
		session.setMaxInactiveInterval(10);
	%>
	创建session时间:
	<%=timeStr%><br> 最后访问时间:<%=sdf.format(session.getLastAccessedTime())%><br>
	session ID:<%=session.getId()%><br> 用户名:<%=session.getAttribute("username")%><br>

	session中保存的属性有:
	<%
		//	getValueNames()方法已经过时了.改用getAttributeNames();
		//	String[] valuenames=session.getValueNames();
		//for(String s:valuenames){
		//		out.print(s+",");
		//	}

		Enumeration<String> enumeration = session.getAttributeNames();

		while (enumeration.hasMoreElements()) {
			out.print(enumeration.nextElement() + ",&nbsp;");
		}
		
		//销毁session三种方法, 1.超时  2.服务器重启 3.使用invalidate()方法
		session.invalidate();
		
	%>
	
	
	

</body>
</html>
