<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int first=Integer.parseInt(request.getParameter("first"));
	int second=Integer.parseInt(request.getParameter("second"));
	out.println(first+"+"+second+"="+(first+second)+"<br>");
	out.println(first+"-"+second+"="+(first-second)+"<br>");
	out.println(first+"x"+second+"="+(first*second)+"<br>");
	out.println(first+"/"+second+"="+(first/second)+"<br>");
	
%>

