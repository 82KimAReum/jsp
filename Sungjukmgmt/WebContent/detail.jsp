<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javasoft.libs.dao.*" %>
<%@ page import="com.javasoft.libs.models.StudentVO" %>
<%@ page import="java.util.HashMap, java.util.Map, java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String hakbun = request.getParameter("hakbun");
	StudentDAO dao = new StudentDAOImpl();
	Map<String, Object> map = new HashMap<String, Object>();
	map.put("hakbun", hakbun);
	dao.selectOneSP(map);
	List<StudentVO> list = (List<StudentVO>)map.get("resultset");
	StudentVO student = list.get(0);
%>
{
	"code":"success",
	"data":<%=student %>
}