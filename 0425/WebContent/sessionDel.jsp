<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.removeAttribute("username");//하나씩 지움
	
%>
<script>
	location.replace('sessiondemo.jsp');
</script>