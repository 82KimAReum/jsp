<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  info="This page is a page object demo." %>
<%-- page object --%>
<% 
	//application.log("this ="+ this);
	out.println(this.getServletInfo());
%>