<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.File,java.io.FileReader"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:catch var="error">
	<%//http://localhost:8080/0502/catchdemo.jsp?path=catchdemo.jsp
		String path=request.getParameter("path");
		path=application.getRealPath(path);
		File file= new File(path);
		FileReader fr= new FileReader(file);
		
	%>
	<pre>
	<%
		while(true){
			int chr= fr.read();
			if(chr<0)break;
			
			out.print((char)chr);
			
		} %>
		</pre>
		

</c:catch>
<c:if test="${!empty error }">
	<c:out value="${error }"/>
</c:if>


