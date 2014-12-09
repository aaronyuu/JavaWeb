<%@page import="java.io.PrintWriter"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String s=response.getCharacterEncoding();
response.setContentType("text/html; charset=utf-8");

out.print(s);

PrintWriter outer =response.getWriter();
outer.write("response.getWriter()对象输出在最前面");

//请求重定向
//response.sendRedirect("../index.jsp");

//请求转发
request.getRequestDispatcher("../index.jsp").forward(request, response);

 %>
