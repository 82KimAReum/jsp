<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] arr=request.getCookies();
	if(arr ==null || arr.length ==0){
		out.println("<h1>Cookie가 없습니다.</h1>");
	}else{
		out.println("<ul>");
		for(Cookie c: arr){
			out.println("<li>"+c.getName()+ "--> "+c.getValue()+"</li>");
			
		}
		out.println("</ul>");
	}

%>
