<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>第三章练习</title>
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
    	out.println("out是内置对象.<br>");
    	out.println("输出第二行,测试flush---提交,并清空缓冲区<br>");
    	out.flush(); //提交,并清空缓冲区
    	
    	//out.clear(); //清空缓冲区,只用于清空缓冲区,并接收清空的结果.
    	out.println("测试clearBuffer(),后悔药,不想flush,又想清空缓存的时候. <br> ");
    	out.println("建议以后不要用out.clear(),可以用clearBuffer代替.<br>");
    	out.println("上面三行应该不会显示出来.<br>");
    	out.clearBuffer(); ////后悔药,不想flush,又想清空缓存的时候. 建议以后不要用out.clear().
    	
		out.print("<br><br>测试getBufferSize,getRemaining,isAutoFlush,close"+"<br>");
		int bufferSize=out.getBufferSize();  //缓冲区总共大小
		out.print("缓冲区总共大小out.getBufferSize():"+bufferSize+"<br>");
		int bufferSizeFree=out.getRemaining();
		out.print("缓冲区空闲大小out.getRemaining():"+bufferSizeFree+"<br>");
		out.print("是否自动提交缓存out.isAutoFlush():"+out.isAutoFlush()+"<br>");
		
		
		out.print("close之前的会显示出来,close之后,就不会再输入了.<br>");
		out.close();
		out.print("close之后,就不会再输入了.");
		out.flush();
    	
    	
    	
    	
    	
     %><br>
  </body>
</html>
