<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h2>좋아하시는 색상은 다 고르세요.</h2>
<form method='post'>
	<input type="checkbox" name="color" value="red">빨강<br />
	<input type="checkbox" name="color" value="orange">주황<br />
	<input type="checkbox" name="color" value="yellow">노랑<br />
	<input type="checkbox" name="color" value="green">초록<br />
	<input type="checkbox" name="color" value="blue">파랑<br />
	<input type="checkbox" name="color" value="navy">남색<br />
	<input type="checkbox" name="color" value="purple">보라<br />
	<input type="submit" value="전송" />
</form>
<hr/>

<c:set var="colors" value="${paramValues.color }"/>
좋아하는 색: <c:out value="${colors }"/>
<ul>
	<c:forEach items="${colors }" var="color">
		<li>${color }</li>
	</c:forEach>
</ul>