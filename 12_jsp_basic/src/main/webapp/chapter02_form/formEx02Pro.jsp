<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<% 
	
		request.setCharacterEncoding("utf-8");
	
		String data1 = request.getParameter("data1");
		String data2 = request.getParameter("data2");
		String data3 = request.getParameter("data3");
		String data4 = request.getParameter("data4");
		String data5 = request.getParameter("data5");
		String data6 = request.getParameter("data6");
		String data7 = request.getParameter("data7");
		String data8 = request.getParameter("data8");
		String data9 = request.getParameter("data9");
		String[] data10= request.getParameterValues("data10");//�迭�� �������� ������ �´�
	
	%>
	<fieldset>
		<p>1. �ؽ�Ʈ : <%=data1 %></p>
		<p>2. �н����� : <%=data2 %></p>
		<p>3. �ؽ�Ʈ����� : <%=data3 %></p>
		<p>4. ���� : <%=data4 %></p>
		<p>5. �̸��� : <%=data5 %></p>
		<p>6. ��¥ : <%=data6 %></p>
		<p>7. ���� : <%=data7 %></p>
		<p>8. ���� : <%=data8 %></p>
		<p>9. ����Ʈ : <%=data9 %></p>
		<p>10. üũ�ڽ� : 
		<%
				if (data10 != null) {
					for (int i = 0; i < data10.length; i++) {
						out.println(data10[i]);			
					}
				}
			%>
	</fieldset>

</body>
</html>