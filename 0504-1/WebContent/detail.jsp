<%@page import="com.javasoft.libs.models.EmployeeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@page import="java.io.Reader"%>
<%@page import="org.apache.ibatis.io.Resources"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactoryBuilder"%>


<%
	int empno=Integer.parseInt(request.getParameter("empno"));
	Reader rd= Resources.getResourceAsReader("mybatis-config.xml");
	SqlSession ss=new SqlSessionFactoryBuilder().build(rd).openSession();
	EmployeeDTO emp=(EmployeeDTO)ss.selectOne("selectOne",empno);
	
%>



{
	"code":"success",
	"data":{
		"empno" : <%=emp.getEmpno() %>,
		"ename" : "<%=emp.getEname() %>",
		"sal" : <%=emp.getSal() %>,
		"hiredate" : "<%=emp.getHiredate()%>",
		"job" : "<%=emp.getJob() %>",
		"comm" : <%=emp.getComm() %>,
		"mgr" : <%=emp.getMgr() %>,
		"deptno": <%=emp.getDeptno() %>
	}
}