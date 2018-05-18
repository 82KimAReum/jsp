<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ page import="com.javasoft.libs.models.GesipanVO" %>
<%@ page import="org.json.simple.JSONObject" %>
<%@ page import="org.json.simple.parser.JSONParser" %>
<jsp:useBean id="dao" class="com.javasoft.libs.models.GesipanDAOImpl" />

<%
	int idx = Integer.parseInt(request.getParameter("idx"));
	GesipanVO gesipan = dao.selectOne(idx);
	JSONObject obj = new JSONObject();
	obj.put("idx", idx);
	obj.put("name", gesipan.getName());
	obj.put("email", gesipan.getEmail());
	String title = gesipan.getTitle();
	title = title.replaceAll("&gt;", "<");
	title = title.replaceAll("&lt;", ">");
	title = title.replaceAll("\"", "'");
	obj.put("title", title);
	String contents = gesipan.getContents();
	contents = contents.replaceAll("&gt;", "<");
	contents = contents.replaceAll("&lt;", ">");
	contents = contents.replaceAll("\"", "'");
	contents = contents.replaceAll("<br />", "\r\n");
	obj.put("contents", contents);
	if(gesipan.getFilename() != null)
		obj.put("filename", gesipan.getFilename());
	obj.put("writedate", String.valueOf(gesipan.getWritedate()));
	obj.put("readcount", gesipan.getReadcount());
	obj.put("grp", gesipan.getGrp());
	obj.put("lev", gesipan.getLev());
	obj.put("step", gesipan.getStep());
	
	JSONObject json = new JSONObject();
	json.put("code", "success");
	json.put("data", obj);
	out.println(json);
%>
