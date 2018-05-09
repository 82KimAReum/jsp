<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	Enumeration<String> headers= request.getHeaderNames();

%>
<ul>

	<%while(headers.hasMoreElements()){%>
	<li><%=headers.nextElement() %></li>
	<%} %>
</ul>