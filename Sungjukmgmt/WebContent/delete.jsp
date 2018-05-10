<%@page import="com.javasoft.libs.dao.StudentDAOImpl"%>
<%@page import="com.javasoft.libs.dao.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String hakbun= request.getParameter("hakbun");
	StudentDAO dao=new StudentDAOImpl();
	dao.delete(hakbun);
	response.sendRedirect("/Sungjukmgmt/");
%>