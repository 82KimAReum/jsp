<%@page contentType="text/html;charset=utf-8" %>
<%@page import="java.util.Date" %>
<%@page import="java.util.Calendar" %>
<%@page import="java.text.SimpleDateFormat,java.sql.Connection" %>
<%
String pattern ="오늘은 YYYY년 MM월 dd일 입니다.";
SimpleDateFormat sdf= new SimpleDateFormat(pattern);
String format=sdf.format(new Date());
%>

<%=format%>
