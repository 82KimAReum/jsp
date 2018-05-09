<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%!
	private static String getDateString(){
	Date now=new Date();
	return String.format(" %1$tH: %1$tM: %1$tS",now);
}
%>

<!DOCTYPE html>
<html>
<head>
<meta  charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		private String str="hello,world";
	/* !를 안쓰면 로칼이기때문에 declation해줘야 함!! */
	%>
	
	지금은 <%=getDateString() %>입니다.
</body>
</html>