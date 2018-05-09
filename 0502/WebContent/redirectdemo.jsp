<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- <c:redirect url="http://www.naver.com"/> --%>
<c:redirect url="multiply.jsp">
	<c:param name="first" value="5"></c:param>
	<c:param name="second" value="5"></c:param>
</c:redirect>
