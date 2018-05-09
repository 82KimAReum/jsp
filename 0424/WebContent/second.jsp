<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	int count =(Integer)request.getAttribute("mycount");
    	String username = (String)request.getAttribute("username");
    %>
    
    	현재 방문자 수: <%=count %><br>
    	username: <%=username %><br>
    <a href="first.jsp">이전 페이지</a>