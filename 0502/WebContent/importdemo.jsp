<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
	<c:import />는 include와 비슷하다.
	<c:import url="include할 url" var="변수명" scope="page|request|session|applicatin"
		varReader="입력스트림명" context="contextName" charEncoding="인코딩값"/>
	1)url:HTTP뿐만아니라 FTP도 가능
	2)var:리소스가 저장될 변수 
	3)varReader: var 처럼 리소스가 저장될 변수, 단 리소스가Reader이어야 함
	4)context: URL에 접근할때 컨텍스트 이름
	5)charEncoding:인코딩 값

 --%>
 
 <c:import url="/forTokensdemo.jsp" var="myurl"></c:import>
 <c:import url="/foreach.jsp" var="myurl1"/>
 <c:import url="/fordemo1.jsp" var="myurl2"></c:import>
 
 <body>
 	<h1>import연습</h1>
 	${myurl}<br/>
 	${myurl1}<br/>
 	${myurl2}<br/>
 </body>