<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javasoft.libs.models.StudentVO" %>
<%@ page import="com.javasoft.libs.dao.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/>
<jsp:useBean id="stu" class="com.javasoft.libs.models.StudentVO" />
<jsp:setProperty property="*" name="stu" />
<%
	calc(stu);
	//out.println(stu);
	StudentDAO dao = new StudentDAOImpl();
	dao.insert(stu);
	response.sendRedirect("/Sungjukmgmt/");
%>

<%!
	private void calc(StudentVO stu){
		int sum = stu.getKor() + stu.getEng() + stu.getMat() + stu.getEdp();
		double avg = sum / 4.;
		char grade = (avg <= 100 && avg >= 90) ? 'A' :
								(avg < 90 && avg >= 80) ? 'B' : 
									(avg < 80 && avg >= 70) ? 'C' :
										(avg < 70 && avg >= 60) ? 'D' : 'F';
		stu.setSum(sum);  stu.setAvg(avg);   stu.setGrade(grade);
	}
%>	



