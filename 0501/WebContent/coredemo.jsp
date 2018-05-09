
<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.util.Date" isELIgnored="false"/>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<c:forEach begin="1" end ="7" step="1" >
	<div>hello,world</div>
</c:forEach>   

<%
	String str= "hello, world";
	Date now=new Date(); 
	pageContext.setAttribute("STR", str);
%>
String str= <%=str %><br>
String str= <%out.println(str); %><br>
String str= ${STR}<br>
String str= <c:out value="${STR}"/><br>


