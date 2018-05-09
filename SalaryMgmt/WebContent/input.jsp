<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javasoft.libs.models.EmployeeDTO" %>  
<%@ page import="org.apache.ibatis.io.Resources" %>
<%@ page import="org.apache.ibatis.session.SqlSession" %>
<%@ page import="org.apache.ibatis.session.SqlSessionFactoryBuilder" %>
<%@ page import="java.io.Reader" %>

<jsp:useBean id="emp" class="com.javasoft.libs.models.EmployeeDTO"/>
<jsp:setProperty name="emp" property="sabun" param="sabun" />
<jsp:setProperty name="emp" property="hobong" param="hobong" />
<jsp:setProperty name="emp" property="night" param="night" />
<jsp:setProperty name="emp" property="family" param="family" />
<%
	Reader rd = Resources.getResourceAsReader("mybatis-config.xml");
	SqlSession ss = new SqlSessionFactoryBuilder().build(rd).openSession();
	calc(emp, ss);
	ss.insert("insertEmployee", emp);
	ss.commit();
	response.sendRedirect("/SalaryMgmt/");
%>
  
<%! 
	private void calc(EmployeeDTO employee, SqlSession ss){
		//if(ss == null) System.out.println("널입니다");
		int gibon = employee.getHobong() * 10000;  //기본급
		employee.setGibon(gibon);
		int nightmoney = employee.getNight() * 15000;  //야근수당
		employee.setNightmoney(nightmoney);
		int familymoney = employee.getFamily() * 15000;  //가족수당
		employee.setFamilymoney(familymoney);
		String sabun = employee.getSabun();
		int grade = Integer.parseInt(String.valueOf(sabun.charAt(1)));
		int money = ss.selectOne("getMoney", grade);
		employee.setMoney(money);
		char code = sabun.charAt(0);
		String department = ss.selectOne("getDname", code);
		employee.setDepartment(department);
		int salary = gibon + nightmoney + familymoney + money;  //총지급액
		employee.setSalary(salary);
		int tax = (int)(salary * 0.1);  //소득세
		employee.setTax(tax);
		int sum = salary - tax;  //실수령액
		employee.setSum(sum);
		employee.setCode(code);
	}
%>






