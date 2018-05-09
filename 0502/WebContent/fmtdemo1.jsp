<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%-- <c:set var="now" value="<%=new java.util.Date() %>" />
<fmt:timeZone value="Hongkong">
	<fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" />
</fmt:timeZone>
 --%>
 <fmt:setBundle basename="bundle" var="mybundle" />
 <head>
 	<title><fmt:message bundle="${mybundle}" key="title" /></title>
 </head>
 <body> 
	<h1><fmt:message bundle="${mybundle}" key="h1" /></h1>
	<div style='color:blue'>
		<fmt:message bundle="${mybundle}" key="greeting" />
	</div>
</body>


