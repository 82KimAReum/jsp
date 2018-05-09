<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String userid=request.getParameter("userid");
    	String userpwd=request.getParameter("userpwd");
    %>
<jsp:useBean id="sc" class="com.javasoft.libs.controllers.selectController"/>
<%
	int flag= sc.loginCheck(userid, userpwd);
	switch(flag){
	case -1:	
%>
<script>
	alert("존재하지 않는 아이디\n확인후 다시 로긴해 주세여");
	history.back();
</script>
<%
	break;
	case 0:
%>
<script>
	alert("비밀번호 일치하지 않음\n확인후 다시 로긴해 주세여");
	history.back();
</script>
<%
	break;
	case 1:
		session.setAttribute("userid", userid);
		session.setAttribute("username", sc.selectName(userid));
	response.sendRedirect("index.jsp");break;
	
}%>