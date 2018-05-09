
<%@page import="java.sql.SQLException"%>
<%@page import="java.io.IOException"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<%if(exception instanceof NullPointerException){%>
	<h1>NullPointerException</h1>
<%}else if(exception instanceof SQLException){%>
	<h1>SQLException</h1>
<%}else if(exception instanceof IOException){%>
	<h1>IOException</h1>
<%}else if(exception instanceof ArithmeticException){%>
	<h1>ArithmeticException</h1>
<%}else {%>
	<h1>알수없는 오류</h1>
<%} %>

<img src="images/jimin.jpg" style="text-align:center"/><br>
<div>잠시 서버 오류. 잠시 후 다시 시도하세요.</div>