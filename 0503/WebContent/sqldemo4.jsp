<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<fmt:requestEncoding value="utf-8"/>
<c:set var="deptno" value="${param.deptno}"/>
<c:set var="dname" value="${param.dname}"/>
<c:set var="loc" value="${param.loc}"/>

<sql:setDataSource dataSource="jdbc/myoracle" var="conn"/>
<sql:update dataSource="${conn }" var="result">
	insert into dept(deptno,dname,loc) 
	values(${deptno },'${dname }','${loc }')
</sql:update>
<c:if test="${result eq 1 }">
	<c:redirect url="sqldemo3.jsp"/>
</c:if>
<c:if test="${result ne 1 }">
	<script>
		alert("insert failure")
		history.back();
	</script>
</c:if>