<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<c:if test="${!empty param.deptno }">
	<c:set var="deptno" value="${param.deptno }"/>
	<sql:setDataSource dataSource="jdbc/myoracle" var="conn"/>
	<sql:update dataSource="${conn }" var="result">
		delete from dept
		where deptno=?
		<sql:param value="${deptno }"/>
	</sql:update>
	<c:if test="${result eq 1 }">
		<c:redirect url="sqldemo3.jsp" />
	</c:if>
	<c:if test="${result ne 1 }">
		<script>
			alert("delete failure")
			history.back();
		</script>
	</c:if>
</c:if>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>삭제할 부서번호를 입력해 주세요.</h2>
	<form method="post">
		<ul>
			<li>번호:<input type="text" name="deptno"/>
		</ul>
		<input type="submit" value="삭제하기"/>
	</form>
</body>
</html>