<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%-- <%request.setCharacterEncoding("utf-8"); %> --%>
<fmt:requestEncoding value="utf-8"/>
<form method="post">
	Name:<input type="text" name="username" placeholder="Enter your name"/>
	<input type="submit" value="전송"/>
</form>

<c:if test="${!empty param.username }">
귀하의 이름은 ${param.username}이군요
</c:if>
