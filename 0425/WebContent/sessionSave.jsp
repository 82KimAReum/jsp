<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.setAttribute("username", "한지민");
	//response.sendRedirect("sessiondemo.jsp");
%>

<script>
	location.href="sessiondemo.jsp";
</script>