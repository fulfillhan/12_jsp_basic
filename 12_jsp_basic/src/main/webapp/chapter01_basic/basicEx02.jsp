<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>제어문</title>
</head>
<body>


  <h3>조건문</h3>
  <%
	 String name = "데니스리치";
  	if (name.equals("데니스리치")){
  %>		
  		<p> 데니스리치 입니다.</p>
  <% 
  	}
  	else{
  		
    %>
    <p>데니스리치가 아닙니다.</p>
    <% 
     }
    %>
    
    <hr>
    
    <h3>반복문 for</h3>
    <%
         for (int i = 0; i < 10; i++){
     %>
        	 <p>for 문 : <%=i %></p>
     <% 
         }
    
    %>
    <hr>
    <h3>반복문 while</h3>
    <%
    
      int idx = 0;
    while(idx < 10){
    	  %>
   <P>while 문 : <%=idx
   %></P>
   <% 
    }
    
    %>
    

</body>
</html>