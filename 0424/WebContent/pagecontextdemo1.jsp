<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	int age=Integer.parseInt(request.getParameter("userage"));
    	if(age<10){
    		
    		pageContext.forward("/kids.html");
    	}else if(age>=10 && age <=19){
    		pageContext.forward("/teenage.html");
    	}else if(age>19 && age<=65){
    		pageContext.forward("/adult.html");
    	}else{
    		pageContext.forward("/silver.html");
    	}
    %>