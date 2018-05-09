<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int first= Integer.parseInt(request.getParameter("first"));
	int second= Integer.parseInt(request.getParameter("second"));
	String op= request.getParameter("op");
	
	int result=0;
	switch(op){
	case "add":result=first+second; break;
	case "sub":result=first-second; break;
	case "mul":result=first*second; break;
	case "div":result=first/second; break;
	case "mod":result=first%second; break;
	}
	out.print(result);
%>