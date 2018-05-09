<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");
	String username = request.getParameter("name");
	String age = request.getParameter("age");
	String phone = request.getParameter("phone");
	String msg = "<span style='color:blue'>" + username + "</span>님! <br />" +
	                     "<span style='text-decoration:underline'>" + age + "</span>살이고, " +
	                     "전화번호는 <span style='font-weight:900'>" + phone + "</span>이군요";
	out.print(msg);
%>