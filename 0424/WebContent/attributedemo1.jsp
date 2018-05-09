<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <%
    	String username=(String)application.getAttribute("username");
    	String userid=(String)application.getAttribute("userid");
    	if(username != null && userid != null){
    %>
    <h1>demo1</h1>
    <%=username%>님(<%=userid %>) 방가
    
    <%}else{%>
    <body bgcolor='red' >
    	<h1>demo1</h1>
    	no date
    </body>
    <%}%>