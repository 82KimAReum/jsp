<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%-- <%
	DateFormat df=DateFormat.getDateTimeInstance(DateFormat.SHORT,DateFormat.FULL);
	Date now=new Date();
	out.print(df.format(now));
	
%> --%>
<head>
	<meta http-equiv="Refresh" content="1">
</head>
<c:set var="now" value="<%=new Date() %>"/>
now: ${now }<br/>
date:<fmt:formatDate value="${now }" type="date"/><br/>
time:<fmt:formatDate value="${now }" type="time"/><br/>
both:<fmt:formatDate value="${now }" type="both"/><br/>




KOREA:<fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" /><br/>
UK:<fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" timeZone="GMT"/><br/>
US:<fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" timeZone="GMT-8:00"/><br/>