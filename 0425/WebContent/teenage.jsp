<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body bgcolor="green">
   <h1>청소년 페이지</h1>
    <h2><%=request.getParameter("username") %>
	<%=request.getParameter("userage")%> 님 방가</h2>
</body>
</html>