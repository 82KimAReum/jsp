<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="STUDENT" value="${applicationScope.STUDENT }"/> 
<%
	Map<String,String> map = 
		(Map<String,String>)application.getAttribute("STUDENT");
	
%>
<h1>학생 정보</h1>
<ul>
	<c:forEach items="${STUDENT }" var="userinfo">
		<li>${userinfo.key } : ${userinfo.value }</li>
	</c:forEach>

</ul>