<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date,java.text.SimpleDateFormat"%>
<%
	String pattern="지금은 YYYY년 MM월 dd일 aa hh시 mm분 ss초 입니다.";
	SimpleDateFormat sdf=new SimpleDateFormat(pattern);
	out.println(sdf.format(new Date()));
	
%>