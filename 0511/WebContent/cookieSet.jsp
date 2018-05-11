<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie cookie =new Cookie("username","chimi");
	response.addCookie(cookie);
%>
<h1>Cookie 가 저장됨</h1>
<a href="cookieget.jsp">쿠키보기</a>