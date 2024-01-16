<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>연습풀이 06</title>
</head>
<body>

	<table border="1">
<%-- 		<%
 int i = 1;
 while(i < 10){
%>
		<tr>
			<%
		if(i % 2 == 0){ 
		%>
			<td style="background-color: skyblue;"><%= i %></td>
			<%
			else {
			%>
			<td style="backgroud-color: pink"><%=i %></td>
			<% 
			}
			%>
		     </tr>
		<%
				i++;
		}
		%>
 --%>

	</table>

</body>
</html>