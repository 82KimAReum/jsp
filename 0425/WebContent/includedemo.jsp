<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//int first=Integer.parseInt(request.getParameter("first"));
	//int second=Integer.parseInt(request.getParameter("second"));
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include demo</title>
</head>
<body>
	<h1>여기는 include하는 main페이지 입니다.(include directive)</h1>
	<hr/>
	<%@include file="myimage.html" %>
	<hr/>
	<%@include file="mydate.jsp" %>
	<hr/>
	<%-- <%@include file="calc.jsp?first=7&second=100" %> --%>
	<!-- include directive 는 includedemo.jsp안에 include한 파일들을 모두 까서 자신에게 직접 붙여 넣음  -->
</body>
</html>