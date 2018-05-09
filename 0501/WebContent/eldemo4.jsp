<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

    \${"10"+1}=${"10"+1}<br>
    <!--\는 el을 그대로 표시함 -->
    \${"5"<10 }=${"5"clt 10 }<br> lt는 little then <br>
    \${"5"==5 }=${"5"eq 5 } <br> 
    
    <br><br><br><br><br><br><br><br><br><br>
    ${param.first } + ${param.second }=${parma.first+ param.second }<br>
    ${param.first } - ${param.second }=${parma.first- param.second }<br>
    ${param.first } x ${param.second }=${parma.first* param.second }<br>
    ${param.first } / ${param.second }=${parma.first div param.second }<br>
    ${param.first } % ${param.second }=${parma.first mod param.second }<br>
    <!-- 정수 / 정수인데 실수가 됨 -->
    
    
    