<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<metacharset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>pageContextDemo2</h1>
	<%
		pageContext.include("/myimage.html") ;
		out.println("<hr/>");
		pageContext.include("/pageContextDemo.jsp");
		out.println("<hr/>");
		pageContext.include("/outDemo.jsp");
	
	%>
</body>
</html>