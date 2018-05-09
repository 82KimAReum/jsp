
<%@page import="java.io.InputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    
    
<%@ page import="java.io.Reader" %>
<%@ page import="java.util.List" %>
<%@ page import="org.apache.ibatis.io.Resources" %>
<%@ page import="org.apache.ibatis.session.SqlSession" %>
<%@page import="org.apache.ibatis.session.SqlSessionFactoryBuilder"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@ page import="com.javasoft.libs.models.EmployeeDTO" %>

<%
String resource = "mybatis-config.xml";
Reader rd = Resources.getResourceAsReader(resource);
SqlSession ss = new SqlSessionFactoryBuilder().build(rd).openSession();


List<EmployeeDTO> list =ss.selectList("selectAll");
	String str = "[";
	for(EmployeeDTO emp : list) {
		str += "{" + 
						"\"empno\" : " + emp.getEmpno() + "," + 
						"\"ename\" : \"" + emp.getEname() + "\", " +
						"\"hiredate\" : \"" + emp.getHiredate() + "\", "+
						"\"deptno\" : " + emp.getDeptno() + "},";
	}
	str = str.substring(0, str.length() - 1);
	str += "]";
%>
{
	"code" : "success",
	"data" : <%=str %>
}
 





