<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%
//2. driver loading
	Class.forName(application.getInitParameter("DBDRIVER"));
//3.DB connection
	Connection conn=
		DriverManager.getConnection(application.getInitParameter("DBURL"),
									application.getInitParameter("DBUSER"),
									application.getInitParameter("DBPWD"));
//4.statement
	Statement stmt= conn.createStatement();
//5.sql statement실행
	ResultSet rs= stmt.executeQuery("select now(),version()");
//6.result set Fetch
	rs.next();
	out.println(rs);
	out.println("<br>now ="+rs.getString(1)+"<br>");
	out.println("version ="+rs.getString(2)+"<br>");
//7.close
	if(rs != null)rs.close();
	if(stmt != null)stmt.close();
	if(conn != null)conn.close();
%>