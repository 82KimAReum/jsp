<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import="com.oreilly.servlet.MultipartRequest" %>
<%@ page  import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.io.File" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8" />
<jsp:useBean id="dao" class="com.javasoft.libs.models.GesipanDAOImpl" />
<jsp:useBean id="gesipan" class="com.javasoft.libs.models.GesipanVO" />
	
<%
	String path = application.getRealPath(".") + File.separator + "files";
	int max = 10 * 1024 * 1024;
	MultipartRequest mr = new MultipartRequest(request, path, max, 
			"utf-8", new DefaultFileRenamePolicy());
	gesipan.setName(mr.getParameter("name"));
	gesipan.setEmail(mr.getParameter("email"));
	String title = mr.getParameter("title");
	title = title.replaceAll("<", "&gt;");
	title = title.replaceAll(">", "&lt;");
	title = title.replaceAll("'", "\"");
	gesipan.setTitle(title);
	String contents = mr.getParameter("contents");
	contents = contents.replaceAll("<", "&gt;");
	contents = contents.replaceAll(">", "&lt;");
	contents = contents.replaceAll("'", "\"");
	contents = contents.replaceAll("\r\n", "<br />");
	gesipan.setContents(contents);
	String filename = mr.getFilesystemName("filename");
	if(filename == null) filename = "";
	gesipan.setFilename(filename);
	
	//답글쓰기에 새로 들어갈 부분
	int grp = Integer.parseInt(mr.getParameter("grp"));
	gesipan.setGrp(grp);
	int lev = Integer.parseInt(mr.getParameter("lev"));
	lev = lev + 1;
	gesipan.setLev(lev);
	int step = Integer.parseInt(mr.getParameter("step"));
	step = step + 1;
	gesipan.setStep(step);
	
	//step update를 먼저
	dao.replyUpdate(grp, step);
	dao.replyInsert(gesipan);
	
	response.sendRedirect("index.html");
%>