<%@page import="com.sun.faces.facelets.tag.jstl.core.ForEachHandler"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>第三章练习</title>
</head>
<body>
	page对象和普通类的常用方法基本一致.
	page.toString()=<%=page.toString() %><br>
	page.getClass()=<%=page.getClass() %><br>
	
	<script type="text/javascript">
	var person={
		firstname:"Bill",
	    lastname:"Gatest",
	    id:5566,
		};
	document.write(person.lastname + "<br />");
	</script>
</body>
</html>
