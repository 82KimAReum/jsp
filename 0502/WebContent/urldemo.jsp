<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:url value="multiply.jsp" var="myurl">
	<c:param name="first" value="5"></c:param>
	<c:param name="second" value="5"></c:param>
</c:url>
<c:redirect url="${myurl}"/>


