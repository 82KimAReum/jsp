<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date,java.text.SimpleDateFormat" %>
    <%!
    	private void toNowString(PageContext ctx)throws IOException{
    	HttpServletRequest req= (HttpServletRequest)ctx.getRequest();
    	JspWriter out= ctx.getOut();
    	out.println("user ip:"+req.getRemoteAddr()+"<br>");
    	out.println( String.format("%1$tY년 %1$tm월 %1$td일",new Date()));
    }
    %>
    
    Now is <%toNowString(pageContext);%>입니다.