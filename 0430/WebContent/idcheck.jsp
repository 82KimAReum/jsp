<%@page import="com.javasoft.libs.models.DBConnection"%>
<%@page import="com.javasoft.libs.models.DBClose"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javasoft.*" %>
<%@ page import="java.sql.*" %>
    
<%
	String userid = request.getParameter("userid");
	Connection conn = DBConnection.getConnection();
	String sql = "SELECT userid FROM Member WHERE userid = ?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, userid);
	ResultSet rs = pstmt.executeQuery();
	boolean flag = false;
	if(rs.next()) flag = true;
	if(rs != null) rs.close();   if(pstmt != null) pstmt.close();
	DBClose.close(conn);
%>
{
	"code" : "success",
	"result" : "<%=flag %>"
}