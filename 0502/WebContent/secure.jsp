<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<c:set var ="verified" value="${sessionScope.verified }"/> 
<c:set var ="userid" value="${sessionScope.userid }" />
<c:if  test="${verified ne 'true'}">
	<script>
		alert("먼저 로긴해주셩");
		location.href='login.html';
	</script>
</c:if>
<c:if  test="${verified eq 'true'}">
	<script>
		var str="welcome!! ${userid}님"
		alert(str);
		
	</script>
</c:if>
