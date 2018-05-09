<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

server.xml에 코드추가
WEB-INF/web.xml에 코드 추가

<c:catch var="error">
<!-- 1st방법 -->
<%-- 	<sql:setDataSource driver="com.mysql.jdbc.Driver" 
		url="jdbc:mysql://localhost:3306/world" user="root" password="1234"
		var="conn"/>   --%>
 
 <!-- 2st방법 -->
 		<sql:setDataSource dataSource="jdbc/myoracle" var="conn"/>
 		<c:out value="${conn }"/>
</c:catch>
<c:if test="${!empty error }">
	Error Message: <c:out value="${error }"/>
</c:if>
