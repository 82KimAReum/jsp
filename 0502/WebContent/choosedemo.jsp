<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%--  <c:choose>
	<c:when test="${5+5 ne 10 }">5+5는 10이 아님</c:when>
		<c:when test="${5+5 eq 10 }">5+5는 10임</c:when>
</c:choose> --%>

<c:set var ="myseason" value="${param.season }"></c:set>
<c:if test="${myseason eq 'spring'}">
	<h2>개나리 , 진달래</h2>
</c:if>
<c:if test="${myseason eq 'summer'}">
	<h2>장미 ,아카시아</h2>
</c:if>
<c:if test="${myseason eq 'fall'}">
	<h2>백합 , 코스모스</h2>
</c:if>
<c:if test="${myseason eq 'winter'}">
	<h2>겨울</h2>
</c:if>

<br/><br/>
<c:choose>
<c:when test="${myseason eq 'spring'}">
	<h2>개나리 , 진달래</h2>
</c:when>
<c:when test="${myseason eq 'summer'}">
	<h2>장미 ,아카시아</h2>
</c:when>
<c:when test="${myseason eq 'fall'}">
	<h2>백합 , 코스모스</h2>
</c:when>
<c:when test="${myseason eq 'winter'}">
	<h2>겨울</h2>
</c:when>
<c:otherwise>
	<h2>잘못된 입력 </h2>
</c:otherwise>
</c:choose>