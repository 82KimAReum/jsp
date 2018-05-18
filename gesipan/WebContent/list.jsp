<%@page import="org.json.simple.*"%>
<%@page import="org.json.simple.parser.*"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ page import="com.javasoft.libs.models.*" %>
<%@ page import="java.util.List" %>
<%@ page import="com.javasoft.libs.utils.*" %>
<jsp:useBean id="dao" class="com.javasoft.libs.models.GesipanDAOImpl" />
<%
	String pageStr= request.getParameter("page");
	if(pageStr==null)pageStr="1";
	int pge=Integer.parseInt(pageStr);
	int totalcount =dao.selectCount();//전제글 수
	int pageSize =3; //한페이지 보여줄 레코드 갯수
	int pageCount= (totalcount%pageSize==0)?totalcount/pageSize : totalcount/pageSize+1; //페이지 갯수 
	int skip = (pge-1) * pageSize ;
	
	List<GesipanVO> list = dao.selectAll();
	JSONObject json = new JSONObject();
	json.put("code","success");//{"code":"success"}
	JSONArray array=  new JSONArray();
	int count=0;
	for(int i=skip ; i<list.size()&& count<pageSize; i++){
		GesipanVO gesipan = list.get(i);
		JSONObject vo= new JSONObject();
		vo.put("idx",gesipan.getIdx());
		vo.put("grp",gesipan.getGrp());
		vo.put("name",gesipan.getName());
		vo.put("email",gesipan.getEmail());
		vo.put("title",gesipan.getTitle());
		vo.put("writedate",gesipan.getWritedate().toString());
		vo.put("readcount",gesipan.getReadcount());
		vo.put("lev",gesipan.getLev());
		
		if(gesipan.getFilename()!=null)
			vo.put("extension",FileExtension.getExtension(gesipan.getFilename()));
		array.add(vo);
		count++;
	}
	
	json.put ("data",array);
	json.put("pagecount",pageCount);
	out.print(json);
	
%>