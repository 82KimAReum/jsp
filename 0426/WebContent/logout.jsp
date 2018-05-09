<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="login" class="com.javasoft.libs.LoginBean" scope="session" />

<% if(login.isVerified()){ %>
<body bgcolor="green">
<jsp:setProperty name="login" property="verified" value="false"/>
	<script>
		alert("<%=login.getUserid()%>님 잘가");
		location.href="Login.html";
	</script>
	
		
</body>

<%}else{%>
<body bgcolor="red">
	<script>
		alert("로긴하세요");
		location.href="Login.html";
	</script>
		
</body>

<%}%>