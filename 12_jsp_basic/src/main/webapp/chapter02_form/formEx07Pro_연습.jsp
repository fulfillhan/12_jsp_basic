<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습 풀이</title>

</head>
<body>
<%
 request.setCharacterEncoding("utf-8");

  int num1 = Integer.parseInt(request.getParameter("num1"));
  int num2 = Integer.parseInt(request.getParameter("num2"));
  int num3 = Integer.parseInt(request.getParameter("num3"));
  
  int maxNum = num1;
  if(maxNum < num2){
	  maxNum = num2;
  }
  if(maxNum <  num3){
	  maxNum = num3;
  }
%>
<h2>가장 큰 숫자는 <%=maxNum %> 입니다.</h2>

</body>
</html>