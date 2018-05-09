<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String [] singers= {"조용필","나훈아","설운도","이미자"};
	pageContext.setAttribute("Singers", singers);
	
%>
<h1>한국의 가수 명단</h1>
<h2>컬랙션 사용하기</h2>
<ul>
	<li>${Singers[0] }</li>
	<li>${Singers[1] }</li>
	<li>${Singers[2] }</li>
	<li>${Singers[3] }</li>

</ul>
