<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="login" class="com.javasoft.LoginBean"/>

<c:if test="${param.userid eq 'chimi' and param.userpwd eq '1234' }">
	<jsp:setProperty property="userid" name="login" value="${param.userid }"/>
	<jsp:setProperty property="verified" name="login" value="true"/>
	<c:set var ="userid" value="${param.userid }" scope="session"/>
	<c:set var ="verified" value="true" scope="session"/>
	<c:out value="<div style='color:green'>Login Success</div>" escapeXml="false"/>
	<a href="secure.jsp" >회원 전용 페이지로</a>
</c:if>
<c:if test="${param.userid ne 'chimi' or param.userpwd ne '1234' }">
	<script>
		alert("아이디 혹은 비밀번호가 일치하지 않습니다.");
		history.back();
	</script>
</c:if>
