<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.HashMap"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%
	HashMap<String ,Object> map=new HashMap<String ,Object>();
	map.put("username","한지민");
	map.put("userage",new Integer(24));
	map.put("usertel","010-5006-8435");
	map.put("today",new java.util.Date());
	request.setAttribute("MAP", map);
%>

<c:set var="mymap" value="${MAP }"/>
<h1>Map다루기</h1>
<ul>
<c:forEach var="info" items="${mymap}">
	<li>${info.key }:${info.value }</li>
</c:forEach>
</ul>

<c:set var="myarray" value="<%=new int[] {1,2,3,4,5,6,7,8,9} %>"/>
<c:forEach var="i" items="${myarray }">
	${i }&nbsp;&nbsp;&nbsp;
</c:forEach>

<h2>Header Information</h2>
<ul>
<c:forEach var="my" items="${headerValues}">
	<li>${my.key }:
		<c:forEach var="val" items="${my.value }">
			${val }&nbsp;%nbsp;
		</c:forEach>  
	</li><br>
</c:forEach>
</ul>