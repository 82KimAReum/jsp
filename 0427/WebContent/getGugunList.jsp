<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javasoft.libs.models.*" %>
<%@ page import="java.sql.Connection, java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<% 
	request.setCharacterEncoding("utf-8");
	String sido = request.getParameter("sido");
	Connection conn = DBConnection.getConnection();
	String sql = "SELECT DISTINCT gugun FROM zipcode WHERE sido = ?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, sido);
	ResultSet rs = pstmt.executeQuery();
%>
<select name="gugun" id="selGugun">
	<option value="">--구군선택--</option>
<%  while(rs.next()){ %>
	<option value="<%=rs.getString(1)%>"><%=rs.getString(1) %></option>
<%  } %>	
</select>


<%
	if(rs != null) rs.close();   if(pstmt != null) pstmt.close();
	DBClose.close(conn);
%>




