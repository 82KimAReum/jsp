<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Mail Program</title>
	</head>
	<body>
		<form method="post" action="sendmail1.jsp">
			<ul style="list-style-type:none">
				<li>Sender Name  : <input type="text" name="sendername" value="${param.name}"/></li>
				<li>Sender email  : <input type="email" name="sender"  value="aaa@aaa.net"/></li>
				<li>Receiver email: <input type="email" name="receiver" value="${param.email}"/> </li>
				<li>CC email : <input type="email" name="cc" /></li> 참조되는 사람
				<li>Subject :  <input type="text" name="subject" /></li>
				<li>Contents : <textarea cols="40" rows="5" name="content"></textarea></li>
			</ul>
			<input type="submit" value="발송"/>
		</form>
	</body>
</html>