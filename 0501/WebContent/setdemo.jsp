<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@page import="com.javasoft.Product" %> --%>

<c:set var="str" value="Hello,world" />
<c:set var="str1" value="hello2"/>
str= ${str} <br/>
str= <c:out value="${str1 }"/>
<hr/>


<jsp:useBean id="p" class="com.javasoft.Product"/>
<c:set property="name" target="${p }" value="신라면"/>
<c:set property="price" target="<%=p %>">1200</c:set>
<h1>상품정보</h1>
<ul>
	<li>name:${p.name } </li>
	<li>price: <c:out value="${p.price }"/></li>
</ul>
