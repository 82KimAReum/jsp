<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<%-- <%
	int first=Integer.parseInt(request.getParameter("first"));

int second=Integer.parseInt(request.getParameter("second"));
%>


    first:<%=request.getParameter("first") %><br>
    Second:<%=request.getParameter("second") %> <br>
    <%=first %>+<%=second %>=<%=first+second %>
     --%>
    FRIST:${param.first}<br>
    Second:${param['second']}<br> 
    ${param.first}+${param['second']}=${param.first+param['second']}
    