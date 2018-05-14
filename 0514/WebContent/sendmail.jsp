<%@page import="java.util.Date"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<fmt:requestEncoding value="utf-8"/>
<%
	String sender= request.getParameter("sender");
	String receiver= request.getParameter("receiver");
	String subject= request.getParameter("subject");
	String content= request.getParameter("content");
%>

<c:catch var="error">	
<%
	/* String mailserver="192.168.56.4"; */
	String mailserver="localhost";//smtp server ip
	Properties info =new Properties();
	info.put("mail.smtp.host", mailserver);
	Session s= Session.getDefaultInstance(info, null);
	Message message=new MimeMessage(s);
	
	Address send_address = new InternetAddress(sender);
	Address rece_address  =new InternetAddress(receiver);
	
	message.setHeader("Content-Type", "text/html;charset=utf-8");
	message.setFrom(send_address);
	message.addRecipient(Message.RecipientType.TO, rece_address);
	message.setSubject(subject);
	message.setContent(content, "text/html;charset=utf-8");
	message.setSentDate(new Date());
	
	Transport t = s.getTransport("smtp");
	/* t.connect(mailserver, null, null); */
	t.connect(mailserver, "chimi", "1234");
	t.sendMessage(message, message.getAllRecipients());
	t.close();
	out.println("Success");
%>
</c:catch>
<c:if test="${!empty error }">
	Error Message: <c:out value="${error }"/>
</c:if>

	
	
