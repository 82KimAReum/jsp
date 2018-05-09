<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.File,java.util.Properties,java.io.FileInputStream" %>
<style type='text/css'>
	table { 
		border : 1px solid black;
		border-collapse: collapse;
		width:500px; margin-left:auto;margin-right:auto;
	}
	th, td{
		border : 1px solid black;
	}
	td{
		text-align:center;
	}
	h1 { text-align:center;}
</style>


<%
	String path=application.getInitParameter("DBInfo");
	File file=new File(application.getRealPath(path));
	Properties info=new Properties();
	info.load(new FileInputStream(file));
	
	//Class.forName("com.mysql.jdbc.Driver");
	Class.forName(info.getProperty("DBDRIVER"));
	Connection conn= null;
	PreparedStatement pstmt=null;
	ResultSet rs =null;
	
	conn=DriverManager.getConnection(
			info.getProperty("DBURL"),info.getProperty("DBUSER"),info.getProperty("DBPWD")
			);
	
	String sql="select * from city where CountryCode=?";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1, "KOR");
	rs=pstmt.executeQuery();

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