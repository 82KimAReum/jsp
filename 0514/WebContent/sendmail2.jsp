<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.util.Properties, java.util.Date" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="com.oreilly.servlet.*, com.oreilly.servlet.multipart.*" %>
<%@ page import="javax.activation.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<fmt:requestEncoding value="utf-8"/>
<%
	String path = application.getRealPath("/files");
	int max = 5 * 1024 * 1024;   //5MB
	MultipartRequest mr = new MultipartRequest(request, path, max, "utf-8");
	
	String senderName = mr.getParameter("sendername");
	String sender = mr.getParameter("sender");
	String receiver = mr.getParameter("receiver");
	String cc = mr.getParameter("cc");
	String subject = mr.getParameter("subject");
	String file = mr.getFilesystemName("attach");
	String content = mr.getParameter("content");
%>
<%
	String mailserver = "smtp.chimi.com";
	Properties info = new Properties();
	info.put("mail.smtp.host", mailserver);
	Session s = Session.getDefaultInstance(info, null);
	Message message = new MimeMessage(s);
	
	Address send_address = new InternetAddress(sender, senderName, "utf-8");
	Address rece_address = new InternetAddress(receiver);
	Address cc_address = null;
	if(cc != null) cc_address = new InternetAddress(cc);
	
	message.setHeader("Content-Type", "text/html;charset=utf-8");
	message.setFrom(send_address);
	message.addRecipient(Message.RecipientType.TO, rece_address);
	if(cc != null)
		message.addRecipient(Message.RecipientType.CC, cc_address);
	message.setSubject(subject);
	
	Multipart multi = new MimeMultipart();
	BodyPart body = new MimeBodyPart();
	
	content = content.replaceAll("\r\n", "<br />");
	body.setContent(content, "text/html;charset=utf-8");
	multi.addBodyPart(body);
	
	if(file != null){
		String newName = file;
		newName = MimeUtility.encodeText(newName, "utf-8", "B");
		file = "/files/" + file;
		file = application.getRealPath(file);
		DataSource ds = new FileDataSource(file);
		BodyPart part = new MimeBodyPart();
		part.setDataHandler(new DataHandler(ds));
		part.setFileName(newName);
		multi.addBodyPart(part);
	}
	
	message.setContent(multi);
	message.setSentDate(new Date());
	
	Transport t = s.getTransport("smtp");
	t.connect(mailserver, null, null);
	t.sendMessage(message, message.getAllRecipients());
	t.close();
	
	out.println("Success");
	
%>
