<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.File, java.io.BufferedInputStream" %>
<%@ page import="java.io.FileInputStream, java.io.BufferedOutputStream" %>
<jsp:useBean id="dao" class="com.javasoft.libs.models.GesipanDAOImpl" />

<%
	int idx = Integer.parseInt(request.getParameter("idx"));
	String filename = dao.selectFilename(idx);
	String path = application.getRealPath(".") + File.separator + "files";
	File file = new File(path, filename);
	if(file.exists()){
		response.setHeader("Content-Disposition", 
				"attachment; filename=" + filename + ";");
		//response.addHeader("Content-Type", "");
		FileInputStream fis = new FileInputStream(file);
		BufferedInputStream bis = new BufferedInputStream(fis);
		BufferedOutputStream bos = 
				new BufferedOutputStream(response.getOutputStream());
		byte [] buffer = new byte[1024];
		int readcount = 0;
		while((readcount = bis.read(buffer)) != -1){
			bos.write(buffer, 0, readcount);
		}
		bis.close();  bos.close();
	}else {
%>
	<script>
		alert("File Not Found");
		history.back();
	</script>
<% } %>



