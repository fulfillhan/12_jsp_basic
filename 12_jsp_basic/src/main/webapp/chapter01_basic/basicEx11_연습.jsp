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
 int day = 0;
 for(int i = 1; i <=12; i++){
	 if(i == 1 || i == 3 || i == 5 || i == 7 || i == 8 || i == 10 || i == 12) day = 31;
	 else if(i == 4 || i == 6 || i == 9 || i == 11) day = 30;
	 else if( i ==2) day= 28;
 %>
	<%=i %>월 :
	<select>
		<%
    	for(int j = 1; j <= day; j++){
   	 	%>

		<option value=<%=j %> <% if(j == day){ %> selected <% } %>>
			<%= j%></option>
		<%
    	 	} 
    	 %>
	</select>일
	<br>
	<%
 }
%>


</body>
</html>