<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
    
    <%if(exception instanceof ArithmeticException){ %>
   		 분모를 0으로 나누면 안돼..<br>
    <%}else if(exception instanceof NullPointerException){ %>
      	널입니다.<br>
	<%}else{%>
		나머지 에러<br>
	<%}%>