<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	
		
		String com = request.getParameter("com");
		String me = request.getParameter("me");
		
		String result = "";
		if(me.equals(com))         result = "����";
		else if(me.equals("����")) result="���� ����";
		else if(me.equals("��"))   result="���� �̰��";
		else                       result = "�ٽ� �Է����ּ���";
	%>
	<h4>�� : <%= me %></h4>
	<h4>��ǻ�� : <%=com %></h4><br>
	
	<h2><%= result %></h2>

</body>
</html>