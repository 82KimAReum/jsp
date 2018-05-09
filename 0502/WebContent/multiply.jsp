<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="first" value="${param.first }"/>
<c:set var="second" value="${param.second}"/>

<h1>multiply.jsp</h1>
${first}*${second}=${first*second}