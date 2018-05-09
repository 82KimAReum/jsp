<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="login" class="com.javasoft.libs.LoginBean" scope="session" />
    <%
    	String userid=request.getParameter("userid");
    	String userpwd=request.getParameter("userpwd");
    	
    %>
    
    <%
    	if(userid.equals("chimi") &&userpwd.equals("1234")){
    %>
    <jsp:setProperty name="login" property="userid" value="<%=userid%>" />
    <jsp:setProperty name="login" property="verified" value="true" />
    <script>
    	alert("login seccess");
    </script>
    <a href="secure.jsp">회원 전용 페이지로 </a>
    <% }else{ %>
    <script>
    	alert("login failure");
    </script>
     <a href="Login.html">다시 로긴 페이지로 </a>
    <% } %>