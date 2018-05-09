<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.FileReader" errorPage="error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	FileReader fr= null;
	String path= request.getParameter("path");
	path=application.getRealPath(path);
	File file= new File(path);
	fr= new FileReader(file );
	//http://localhost:8080/0501/coredemo1.jsp?path=/eldemo.jsp
%>
<%=path %><br>
<pre>
<c:out value="<%=fr %>" escapeXml="false"></c:out>
</pre> 

<c:out value="<font color='red'>hello</font>" escapeXml="true"/><br>
<c:out value="<font color='red'>hello</font>" escapeXml="false"/><br>