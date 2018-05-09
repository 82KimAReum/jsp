<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	Class.forName("com.mysql.jdbc.Driver");
	//Class.forName("org.mariadb.jdbc.Driver");
	Connection conn= null;
	PreparedStatement pstmt=null;
	ResultSet rs =null;
	
	conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "1234");
	
	String sql="select * from city where CountryCode=?";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1, "KOR");
	rs=pstmt.executeQuery();
%>
<style>
 table{
 	margin: 50px;
 }
</style>


<%	
	out.println("<table border='1'><tr><th>ID</th><th>Name</th><th>CountryCode</th><th>District</th><th>Population</th></tr>");
	while(rs.next()){
		out.println("<tr>");
		out.println("<td>"+rs.getString("ID")+"</td>");
		out.println("<td>"+rs.getString("Name")+"</td>");
		out.println("<td>"+rs.getString("CountryCode")+"</td>");
		out.println("<td>"+rs.getString("District")+"</td>");
		out.println("<td>"+String.format("%,d", rs.getInt("Population"))+"</td>");
		out.println("<tr>");
	}
	out.println("</table>");
%>
<%
	if(rs!=null)rs.close();
	if(pstmt !=null)pstmt.close();
	if(conn !=null)conn.close();
%>