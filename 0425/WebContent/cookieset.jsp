<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie c1=new Cookie("username","한지민");
	Cookie c2=new Cookie("userage","24");
	response.addCookie(c1);
	c2.setMaxAge(60*60);
	response.addCookie(c2);
//c1은 브라우저 닫으면 사라지고 c2는 시간을 줘서 저 시간이 지나야 사라짐.
%>
<h1>Cookie가 생성 됐습니다.</h1>