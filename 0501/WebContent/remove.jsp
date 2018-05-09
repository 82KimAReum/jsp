<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="first" value="${param.first}"/>
<c:set var="second" value="${param.second}"/>
<c:out value="${first }"/> +<c:out value="${second }"/>=<c:out value="${first+second }"/> <br>
<c:remove var ="first"/><br>
<c:out value="${first}"/>  +${second }=<c:out value="${first+second }"/> <br>