<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	out.println("이글씨는 출력x");
	out.clear();
	out.println("buffer Size : "+out.getBufferSize()+"<br>");
	for (int i=1; i<=100; i++){
		out.print(i+" ");
	}
	out.println("<br>");
	out.flush();
	//buffer에서 내보내서 초기 버퍼사이즈가 출력될 것임
	out.println("buffer remaining : "+ out.getRemaining()+"<br>");
%>