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

</body>
</html>