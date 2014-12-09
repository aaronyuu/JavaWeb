<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%

SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
Date date=new Date();
String now=sdf.format(date);
out.print(now);

%>