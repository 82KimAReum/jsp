<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ page import="java.io.Reader" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ibatis.common.resources.Resources" %>
<%@ page import="com.ibatis.sqlmap.client.SqlMapClient" %>
<%@ page import="com.ibatis.sqlmap.client.SqlMapClientBuilder" %>
<%@ page import="com.javasoft.libs.models.EmployeeDTO" %>

<%
	Reader rd = Resources.getResourceAsReader("SqlMapConfig.xml");
	SqlMapClient smc = SqlMapClientBuilder.buildSqlMapClient(rd);
	List<EmployeeDTO> list = smc.queryForList("Employee.selectAll");
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






