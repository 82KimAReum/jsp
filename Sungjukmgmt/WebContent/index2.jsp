<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.javasoft.libs.models.StudentVO"%>
<%@page import="java.util.List"%>
<%@page import="com.javasoft.libs.dao.*"%>

<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	//SqlSession sqlSession =SqlSessionFactoryBean.getInstance();
    	StudentDAO dao= new StudentDAOImpl();
    	Map<String,Object> map=new HashMap<String,Object>();
    	dao.selectAllSP(map);   	
    	List<StudentVO> list= (List<StudentVO>)map.get("results");
    	String str="";
    	
    	for (StudentVO student:list){
    		str +=student.toString()+",";
    		
    	}
		if(str.length()>0){
			str=str.substring(0, str.length()-1);
    	}
    	
    %>
    {
    	"code":"success",
    	"data":[<%=str %>]
    }