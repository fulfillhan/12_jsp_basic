<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>정답</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	
		
		String com = request.getParameter("com");
		String me = request.getParameter("me");
		
		String result = "";
		if(me.equals(com))         result = "비겼다";
		else if(me.equals("가위")) result="내가 졌다";
		else if(me.equals("보"))   result="내가 이겼다";
		else                       result = "다시 입력해주세요";
	%>
	<h4>나 : <%= me %></h4>
	<h4>컴퓨터 : <%=com %></h4><br>
	
	<h2><%= result %></h2>

</body>
</html>