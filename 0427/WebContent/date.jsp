<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date" %>

    <%
    	String format=String.format("now is %1$tH시 %1$tM분 %1$tS초 입니다.", new Date());
    	out.println(format);
    %>