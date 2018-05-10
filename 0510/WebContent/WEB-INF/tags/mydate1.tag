<%@ tag pageEncoding="utf-8" body-content="empty"%>
<%@ tag import="java.util.Locale, java.text.DateFormat, java.util.Date" %>
<%@ attribute name="type" type="String" required="true" rtexprvalue="true"%>
<%
	Locale locale = null;
	switch(type){
		case "0" : locale = Locale.KOREA; break;
		case "1" : locale = Locale.US; break; 
		case "2" : locale = Locale.CHINA; break;
		case "3" : locale = Locale.JAPAN; break;
		case "4" : locale = Locale.UK; break;
		case "5" : locale = Locale.FRANCE; break;
		case "6" :  locale = Locale.GERMANY; break;
	};
	DateFormat df = 
			DateFormat.getDateTimeInstance
				(DateFormat.FULL, DateFormat.FULL, locale);
	String str = df.format(new Date());
	jspContext.setAttribute("str", str);
%>
${str}



