<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>


<sql:setDataSource dataSource="jdbc/myoracle" var="conn"/>
<sql:query dataSource="${conn }" var ="rs">
	select deptno,dname,loc 
	from dept
	order by deptno desc
</sql:query>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서정보</title>
</head>
<body>
<form method="post" action="sqldemo4.jsp">
	<ul style="list-style-tyle:none">
		<li>부서번호:<input type="number" name="deptno" step="10" min="50" max="90"/></li>
		<li>부서명:<input type="text" name="dname"/></li>
		<li>부서위치:<input type="text" name="loc"/></li>
	</ul>
	<input type="submit" value="입력하기"/>
</form>
	<hr style="width:70%"/>
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