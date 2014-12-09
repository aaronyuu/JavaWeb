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
		application.setAttribute("serverhost", "192.168.1.188");
		application.setAttribute("email", "vcvok@qq.com");
	%>


	<%=application.getAttribute("serverhost")%><br>
	<%=application.getAttribute("email")%><br>
<%=application.getServerInfo() %>

<br><br><br>
	<%
		Enumeration<String> attributeNames = application.getAttributeNames();
		while (attributeNames.hasMoreElements()) {
		String s=attributeNames.nextElement();
			out.print(s+":	"+application.getAttribute(s)+"<br>");

		}
	%>

</body>
</html>
