<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String userid=request.getParameter("userid");
	String username=request.getParameter("username");
	String hiredate=request.getParameter("hiredate");
	int salary=Integer.parseInt(request.getParameter("salary"));
	String[] array=request.getParameterValues("hobby");
	String hobby="";
	for(String str:array){
		hobby +=str+",";
	}
	String gender=request.getParameter("gender");
	String season=request.getParameter("season");
	
%>

<h1>회원정보</h1>
<ul>
	<li>ID: <%=userid %></li>
	<li>Name: <%=username %></li>
	<li>hiredate: <%=hiredate %></li>
	<li>salary: <%=salary %></li>
	<li>hobby: <%=hobby %></li>
	<li>gender: <%=gender %></li>
	<li>season: <%=season %></li>

</ul>