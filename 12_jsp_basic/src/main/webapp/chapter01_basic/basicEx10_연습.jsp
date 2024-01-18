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
	// 열 로직
	for(int i = 2; i < 10; i++){
%>
	<table border = 1;>
		<tr align = "center">
			<td colspan = "2"><%=i %>단</th>
		</tr>
		
<%
	//행 로직
	for(int j = 1; j <10; j++){
%>
		<tr align = "center">
		<td><%=i %> * <%=j %></td>
		<td><%= i * j %></td>
		</tr>
		
<%
		}
%>
	</table>
	<hr>
<%
	}
%>

</body>
</html>