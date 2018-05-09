<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!int count=0; %>
    <%
    	int pageCount=count;
    pageCount++;
	    count=pageCount;
	    request.setAttribute("mycount", count);
	    request.setAttribute("username", "한지민");
    %>
    
    	현재 방문자 수: <%=count %><br>
    <a href="second.jsp">다음 페이지</a>