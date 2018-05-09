
<jsp:directive.page  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList" />


    <%//arraylist사용하기
    	ArrayList <String> fruits= new ArrayList<String>();
    	fruits.add("오렌지");
    	fruits.add("딸기");
    	fruits.add("사과");
    	fruits.add("수박");
    	pageContext.setAttribute("FRUITS",fruits);
    	
    	
    %>
    <h1>이달에 가장 많이 팔린 과일</h1>
    <ol>
    	<li>${FRUITS[0] }</li>
    	<li>${FRUITS[1] }</li>
    	<li>${FRUITS[2] }</li>
    	<li>${FRUITS[3] }</li>
    	
    </ol>