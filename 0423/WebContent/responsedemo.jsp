<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
	String url=request.getParameter("myweb");
	System.out.println(url);
	response.sendRedirect(url);
	%>