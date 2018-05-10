
<%@tag pageEncoding="utf-8" body-content="empty" %>
<%@tag import="java.util.Date" %>
<%@tag import="java.text.SimpleDateFormat"%>

<%
	String pattern="aa hh시 mm분 ss초입니다";
	SimpleDateFormat sdf= new SimpleDateFormat(pattern);
	out.println(sdf.format(new Date()));
%>
