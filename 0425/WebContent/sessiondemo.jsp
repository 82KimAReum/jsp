<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>

<%
	String username= null;
	username=(String)session.getAttribute("username");
	if(username==null){
		username="세션 값 없음";
	}
%>
    
    <h2>Session Test</h2>
    <button onclick="location.href='sessionSave.jsp'">Session Save</button>
    <button onclick="location.href='sessionDel.jsp'">Session Delete</button>
    <button onclick="location.href='sessionInit.jsp'">Session Init</button>
    이름:<%=username %>
