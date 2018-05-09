<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("utf-8"); %>
 
<jsp:useBean id="ic" class="com.javasoft.libs.controllers.InsertController" />
<jsp:useBean id="member" class="com.javasoft.libs.models.MemberVO">
	<jsp:setProperty name="member" property="*" />
</jsp:useBean>

<%
	int row = ic.insert(member);
	if(row == 1) {
		
		response.sendRedirect("index.jsp");
	}else {
%>
	<script>
		history.back();
	</script>
<% } %>



