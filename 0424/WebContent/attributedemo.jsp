<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <%
    	request.setCharacterEncoding("utf-8");
    	String username=request.getParameter("username");
    	String userid=request.getParameter("userid");
    	 if(username !=null && userid != null){
    		application.setAttribute("username", username);
    		application.setAttribute("userid", userid);
    	}//어떤 브라우저로 들어가도 공유 //tomcat을 죽였다 살리면 날아감
    	 
    	 /* if(username !=null && userid != null){
    		session.setAttribute("username", username);
    		session.setAttribute("userid", userid);
    	}//다른 브라우저는 안됌//브라우저 닫으면 죽음 */
    	
    	/* if(username !=null && userid != null){
    		request.setAttribute("username", username);
    		request.setAttribute("userid", userid);
    	}
    	pageContext.forward("/attributedemo1.jsp"); //forward만 됌
    	*/
    	
    	/* if(username !=null && userid != null){
    		pageContext.setAttribute("username", username);
    		pageContext.setAttribute("userid", userid);
    	}
    	pageContext.forward("/attributedemo1.jsp");
    	//딴 페이지 가면 모름. forward라도 모름 */
    %>
    <h1>demo</h1>
    <%=username%>님(<%=userid %>) 방가
    <a href="attributedemo1.jsp">이동</a> 