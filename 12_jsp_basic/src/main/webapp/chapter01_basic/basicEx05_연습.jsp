<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����Ǯ��05</title>
</head>
<body>

	<table border="1">
		<%
		int i = 1;
		while (i < 10) {
		%>
		<tr>
			<td><%=i%></td>
		</tr>
		<%
		   i++;
		}
		%>
	</table>

</body>
</html>