<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>


<head>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<meta charset="utf-8" />
	<title>JavaSoft Inc.</title>
</head>
<body>
<h1>Javasoft Employee List</h1>
<c:catch var="error">
	<sql:setDataSource dataSource="jdbc/myoracle" var="conn"/>
	<sql:query var="rs" dataSource="${conn }">
		select empno,ename,hiredate,dname,loc,emp.deptno from emp, dept where emp.deptno=dept.deptno
	</sql:query>
	<c:out value="${rs }"/>
	<table border='1'>
		<thead>
			<th>서번</th><th>이름</th><th>입사일자</th
			><th>부서명</th><th>근무지</th><th>부서번호</th>
		</thead>
		<tbody>
			<c:forEach var="row" items="${rs.rows }">
				<tr>
					<td>${row.empno }</td><td>${row.ename }</td><td>${row.hiredate }</td>
					<td>${row.dname }</td><td>${row.loc }</td><td>${row.deptno }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</c:catch>

<c:if test="${!empty error}">
	Error Message: <c:out value="${error }"></c:out>
</c:if>

</body>