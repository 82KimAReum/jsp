<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta  charset=UTF-8">
<title>welcome 0423</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script src="js/jquery-1.12.4.js"></script>
<script>
	$(function(){
		$('img').attr({"src":"images/jimin.jpg","width":"300px"});
	});
</script>
</head>
<body>
<%
	String format=String.format("%1$tH:%1$tM:%1$tS", new Date());
%>
	<h1>welcom jsp home<%=format %></h1>
	<img>
</body>
</html>