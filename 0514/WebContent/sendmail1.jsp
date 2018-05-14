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
	String senderName= request.getParameter("sendername");
	String sender= request.getParameter("sender");
	String receiver= request.getParameter("receiver");
	String cc= request.getParameter("cc");
	String subject= request.getParameter("subject");
	String content= request.getParameter("content");
%>

<c:catch var="error">	
<%
	String mailserver="smtp.chimi.com";//smtp server ip
	Properties info =new Properties();
	info.put("mail.smtp.host", mailserver);
	Session s= Session.getDefaultInstance(info, null);
	Message message=new MimeMessage(s);

	Address send_address = new InternetAddress(sender,senderName,"utf-8");
	Address rece_address  =new InternetAddress(receiver);
	Address cc_address= null;
	if(cc != null){
		cc_address= new InternetAddress(cc);
	}
	message.setHeader("Content-Type", "text/html;charset=utf-8");
	message.setFrom(send_address);
	message.addRecipient(Message.RecipientType.TO, rece_address);
	if(cc!=null){
		message.addRecipient(Message.RecipientType.CC, cc_address);
	}
	message.setSubject(subject);
	content = content.replaceAll("\r\n","<br/>");
	message.setContent(content, "text/html;charset=utf-8");
	message.setSentDate(new Date());
	
	Transport t = s.getTransport("smtp");
	t.connect(mailserver, null, null);
	t.sendMessage(message, message.getAllRecipients());
	t.close();
	out.println("Success");
%>
</c:catch>
<c:if test="${!empty error }">
	Error Message: <c:out value="${error }"/>
</c:if>

	
	
