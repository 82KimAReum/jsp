<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" errorPage="error.jsp" %>
<%@ page import="org.apache.commons.httpclient.HttpClient" %>
<%@ page import="org.apache.commons.httpclient.methods.GetMethod" %>
<%@ page import="org.apache.commons.httpclient.HttpStatus" %>
<% 
	String url = request.getParameter("url"); 
	//String url = "http://myhome.chosun.com/rss/www_section_rss.xml";
	HttpClient hc = new HttpClient();
	GetMethod get = new GetMethod(url);
	int statuscode = hc.executeMethod(get);
	out.clearBuffer();
	response.reset();
	response.setStatus(statuscode);
	if(statuscode == HttpStatus.SC_OK){
		String result = get.getResponseBodyAsString();
		//System.out.print(result);
		response.setContentType("text/xml;charset=utf-8");
		out.print(new String(result.getBytes("ISO8859_1"), "utf-8"));
	}
	get.releaseConnection();
%>





