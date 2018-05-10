<%@tag pageEncoding="utf-8" body-content="scriptless"%>

<%@tag import="java.text.DateFormat"%>
<%@tag import="java.util.Date"%>
<%@variable name-given="shortDate" %>
<%@variable name-given="longDate"%>
<%
	Date now=new Date();
	DateFormat short_df= DateFormat.getDateInstance(DateFormat.SHORT);
	DateFormat long_df= DateFormat.getDateInstance(DateFormat.LONG);
	
	//String shortDate=short_df.format(now);
	//String longDate=long_df.format(now); 
	jspContext.setAttribute("shortDate", short_df.format(now));
	jspContext.setAttribute("longDate", long_df.format(now));
%>
<jsp:doBody />