<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	
		Random ran = new Random();
		
		int month = ran.nextInt(12) + 1;
		int day = 0;
		
		if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) day = 31;
		else if (month == 2) 																				  day = 28;
		else if (month == 4 || month == 6 || month == 9 || month == 11) 									  day = 30; 
	%>
	<%=month %>월 : 
	<select>
		<% 
			for (int i = 1; i <= day; i++) {
		%>
				<option value=<%=i %>><%=i %></option>
		<% 			
			}
		%>
	</select>일
	
	

</body>
</html>