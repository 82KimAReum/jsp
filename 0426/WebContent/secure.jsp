
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="login" class="com.javasoft.libs.LoginBean" scope="session" />

<% if(login.isVerified()){ %>
<body bgcolor="green">
	<script>
		alert("<%=login.getUserid()%>님 방갑");
	</script>
		<a href="logout.jsp">로그 아웃으로..</a>
</body>

<%}else{%>
<body bgcolor="red">
	<script>
		alert("로긴하세요");
	</script>
		<a href="Login.html">로그인으로..</a>
</body>

<%}%>