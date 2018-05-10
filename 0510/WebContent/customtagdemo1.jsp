<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 속성(attribute)는 있고 body가 없는 태그 -->
<%@taglib prefix="mylib" tagdir="/WEB-INF/tags" %>

<c:if test="${empty param.type}">
	<c:set var="mytype" value="0" />
</c:if>
<c:if test="${!empty param.type}">
	<c:set var="mytype" value="${param.type}" />
</c:if>

<h1>원하시는 스타일을 지정해 주세요.</h1>
<form method='get'>
	<input type='radio' name='type' value='0'>한국<br />
	<input type='radio' name='type' value='1'>미국<br />
	<input type='radio' name='type' value='2'>중국<br />
	<input type='radio' name='type' value='3'>일본<br />
	<input type='radio' name='type' value='4'>영국<br />
	<input type='radio' name='type' value='5'>프랑스<br />
	<input type='radio' name='type' value='6'>독일<br />
	<input type='submit' value='전송' />
</form>

<hr style='border:3px dashed red' />
<div>
	지금은 <mylib:mydate1 type="${mytype }"/>
</div>