<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���</title>
</head>
<body>


  <h3>���ǹ�</h3>
  <%
	 String name = "���Ͻ���ġ";
  	if (name.equals("���Ͻ���ġ")){
  %>		
  		<p> ���Ͻ���ġ �Դϴ�.</p>
  <% 
  	}
  	else{
  		
    %>
    <p>���Ͻ���ġ�� �ƴմϴ�.</p>
    <% 
     }
    %>
    
    <hr>
    
    <h3>�ݺ��� for</h3>
    <%
         for (int i = 0; i < 10; i++){
     %>
        	 <p>for �� : <%=i %></p>
     <% 
         }
    
    %>
    <hr>
    <h3>�ݺ��� while</h3>
    <%
    
      int idx = 0;
    while(idx < 10){
    	  %>
   <P>while �� : <%=idx
   %></P>
   <% 
    }
    
    %>
    

</body>
</html>