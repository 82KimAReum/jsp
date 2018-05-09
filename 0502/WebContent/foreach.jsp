<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:forEach var="i" begin="1" end ="7" step="1">
	<font size="${i }" face="Arial" color="blue">hello,JSTL</font><br>
</c:forEach>

<br/><br/><br/>
<c:forEach var="i" begin ="1" end="9" >
	<div>5 x ${i }=${5*i }</div>

</c:forEach>

<br/><br/><br/>



<c:set var="sum" >0</c:set>
<c:forEach var ="i" begin="1" end="100">
	<c:set var="sum" value="${sum =sum+i }"></c:set>
</c:forEach>
<c:out value="${sum }"/>
