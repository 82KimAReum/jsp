<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String userid = request.getParameter("userid").trim();
	//System.out.println("userid = " + userid);
	if(userid.equals("1234")) out.print("true");
	else out.print("false");
%>