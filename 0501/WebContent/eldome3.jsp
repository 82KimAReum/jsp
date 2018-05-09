<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	session.setAttribute("username", "한지민");
    	//application.set...
    	//request.set...
    	//pageContext.set...
    %>
    
    
    이름:<%=(String)session.getAttribute("username")%><br>
    이름:${sessionScope.username}<br>
    이름:${sessionScope['username']}