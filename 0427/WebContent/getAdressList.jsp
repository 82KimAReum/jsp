<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javasoft.libs.models.*" %>
<%@ page import="java.sql.Connection, java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>

<% 
	request.setCharacterEncoding("utf-8");
	String sido = request.getParameter("sido");
	String gugun = request.getParameter("gugun");
	String dong = request.getParameter("dong");
	Connection conn = DBConnection.getConnection();
	String sql = null;
	if(sido == "" && gugun == ""){
		sql = "SELECT * FROM zipcode WHERE dong LIKE '%" + dong + "%' ";
	}else if(sido != "" && gugun == ""){
		sql = "SELECT * FROM zipcode WHERE sido = '" + 
	              sido + "' AND dong LIKE '%" + dong + "%' ";
	}else if(sido != "" && gugun != ""){
		sql = "SELECT * FROM zipcode WHERE sido = '" + 
	              sido + "' AND gugun = '" + gugun + "' AND dong LIKE '%" + dong + "%' ";
	}
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
%>
<table border='1' cellspacing='0' cellpadding='0' width='500'>
<% 
	while(rs.next()){
		String zipcode = "[" + rs.getString("zipcode") + "]";
		String address = rs.getString("sido") + " " + rs.getString("gugun") + " " +
		                          rs.getString("dong") + " " + rs.getString("bunji");
%>
	<tr>
		<td><%=zipcode %></td>
		<td><%=address %></td>
	</tr>
<% } %>
</table>


<%
	if(rs != null) rs.close();   if(stmt != null) stmt.close();
	DBClose.close(conn);
%>


