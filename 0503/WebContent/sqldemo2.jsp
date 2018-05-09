<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<sql:setDataSource dataSource="jdbc/myoracle" var="conn"/>
<sql:query var="rs" dataSource="${conn }">
	select deptno,dname,loc 
	from dept
	order by deptno desc
</sql:query>


<!DOCTYPE html >
<html>
<head>
<meta  charset="UTF-8">
<title>부서정보</title>
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
	<h1>부서정보</h1>
	<table border='1'>
		<thead>
			<tr>
				<c:forEach var="cName" items="${rs.	columnNames }">
					<th><c:out value="${cName}"/></th>
				</c:forEach>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="row" items="${rs.rowsByIndex }">
				<tr>
					<c:forEach var="column" items="${row}">
						<c:if test="${column eq null }">
							<td>&nbsp;</td>
						</c:if>
						<c:if test="${column ne null }">
						<td>${column}</td>
						</c:if>
					</c:forEach>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>