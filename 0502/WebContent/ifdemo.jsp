<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="true">
	무조건 수행된다. 
</c:if>
<br />

<c:if test="${5 < 10}">
	<h3>5는 10보다 작습니다.</h3>
</c:if>

<c:if test="${6 + 3 ne 9}">
	<h3>6+3 = 9</h3>
</c:if>

<c:if test="${param.name eq 'code' }">
 name파라미터 값은 ${param.name }입니다.
</c:if>
<br />
<c:if test="${!empty param.name }">
	name: ${param.name }
</c:if>


<!-- test안에는 el 과 표현식을 쓸수 있으며 , 값은 불린이어야 함 -->




