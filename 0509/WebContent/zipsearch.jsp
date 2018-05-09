<%@page import="com.javasoft.libs.models.ZipcodeVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="org.apache.ibatis.io.Resources"%>
<%@page import="java.io.Reader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="mylib" uri="/WEB-INF/tlds/mylib.tld" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="org.apache.ibatis.session.SqlSession" %>
<%@page import="org.apache.ibatis.session.SqlSessionFactoryBuilder" %>

<fmt:requestEncoding value="utf-8"/>
<c:set var="key" value="${param.key }"/>
<c:catch var="error">

<form method="post">
	읍/면/동 이름: <input type="text" name="key"/>
	<input type="submit" value="우편번호 검색"> 
</form>
<hr/>
<mylib:zipsearch key="${key}"/>
</c:catch>
<c:if test="${!empty error }">
	<c:out value="${error }"/>
</c:if>