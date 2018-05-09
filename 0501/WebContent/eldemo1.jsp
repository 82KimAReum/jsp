<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%=request.getHeader("user-agent")%> --%>
User's Browser: ${header['user-agent']}<br>
User's HOst : ${header.host}<br>
Accepts:${headerValues.accept[0]}<br>
Remote User's Address: ${pageContext.request.remoteAddr }<br>
Mothod: ${pageContext.request.method }<br>
Request URI: ${pageContext.request.requestURI }<br>
User's Name: ${empty param.username? "Unknown":param.username}










<br><br><br><br><br>
<%
	Enumeration e=request.getHeaderNames();
	while(e.hasMoreElements()){
		out.println(e.nextElement());
	}
	
%>