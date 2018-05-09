<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" trimDirectiveWhitespaces="true" %>
<%@ page import="com.javasoft.libs.models.EmployeeDTO" %> 
<%@ page import="org.apache.ibatis.io.Resources" %>
<%@ page import="org.apache.ibatis.session.SqlSession" %>
<%@ page import="org.apache.ibatis.session.SqlSessionFactoryBuilder" %>
<%@ page import="java.io.Reader" %>
<%@ page import="java.util.List" %>

<%
	Reader rd = Resources.getResourceAsReader("mybatis-config.xml");
	SqlSession ss = new SqlSessionFactoryBuilder().build(rd).openSession();
	List<Object> list = (List<Object>)ss.selectList("selectAll");
	String str = "[";
	for(Object obj : list){
		EmployeeDTO emp = (EmployeeDTO)obj;
		str += "{";
		str += "\"sabun\" : " + "\"" + emp.getSabun() + "\"," +
					"\"dname\" : " + "\"" + emp.getDepartment() + "\", " +
					"\"gibon\" : " + emp.getGibon() + ", " +
					"\"money\" : " + emp.getMoney() + ", " +
					"\"nightmoney\" : " + emp.getNightmoney() + ", " +
					"\"familymoney\" : " + emp.getFamilymoney() + ", " + 
					"\"salary\" : " + emp.getSalary() + ", " +
					"\"tax\" : " + emp.getTax() + ", " +
					"\"sum\" : " + emp.getSum();
		str += "},";
	}
	if(str.length()>1)str = str.substring(0, str.length() - 1);
	else if(str.length()==1)str="[";
	str += "]";
%>
{
	"code" : "sucess",
	"data" : <%=str %>
}






