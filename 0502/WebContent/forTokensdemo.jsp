<%@page import="java.util.StringTokenizer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String str="C++, JAVA, Visual C#, Python, R, Ruby";
	StringTokenizer st= new StringTokenizer(str,",");
	int count=st.countTokens();
	for(int i=0; i<count;i++){
		out.print(st.nextElement()+"&nbsp;&nbsp;&nbsp;");
	}
%>
<br/><br/>
안녕<br/>
<c:set var="mytokens" value="<%=str %>"/>
<c:forTokens var="i" items="${mytokens }" delims=",">
	${i }<br>
</c:forTokens>