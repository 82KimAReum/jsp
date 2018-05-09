<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.setAttribute("username", "한지민");
	session.setAttribute("userage", "24");
%>
<%-- URL Rewriting--%>
<a href='<%=response.encodeUrl("rewriting1.jsp") %>'>세션 정보 읽기</a>