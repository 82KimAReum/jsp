<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String username = (String)session.getAttribute("username");
	if(username == null){
%>
	<script>
		alert("먼저 로그인부터 하셔야 합니다.");
		location.href = "login.jsp";
	</script>
<% }else{ %>
	<script>
		alert("<%=username%>[" + "<%=session.getAttribute("useremail")%>" + "]");
	</script>
<% } %>