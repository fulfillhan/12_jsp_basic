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

		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		String[] hobbies = request.getParameterValues("hobbies");
		String travel = request.getParameter("travel");
		String content = request.getParmater("content");

	%>
	<fieldset>
	<p>아이디 : <%=id %></p>
	<p>패스워드 : <%=pw %></p>
	<p>이름 : <%=name %></p>
	<p>나이 : <%=age %></p>
	<p>성별 : <%=gender %></p>
	<p>취미 :
	  <%
	  for(int i = 0; i < hobbies.length; i++){
	  %>
		  <%=hobbies[i] %>
	<%
	  }
	%>

	</p>
	
	<p>가고 싶은 여행지 : <%=travel %></p>
	<p>메모 : <%=content %></p>
	</fieldset>

</body>
</html>