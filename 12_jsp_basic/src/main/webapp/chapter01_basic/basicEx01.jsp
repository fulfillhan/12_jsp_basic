<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출력함수</title>
</head>
<body>

	<%-- 
  
		# JSP(Java Server Page)는 html태그 위에 jsp태그가 추가된 형태로 사용되어진다.
		 
	    1) 지시자(Directive) 태그        	<%@    %>
	    2) 선언자(Declration) 태그      	<%!    %>
	    3) 표현식(Expression) 태그      	<%=    %>     // 자바 코드 표현
	    4) 스크립트릿(Scriptlet) 태그  	    <%     %>	// 자바 코드 작성

	 --%>
	
	<!-- html주석 : 개발자도구에서 볼 수 있습니다.-->
	<%-- jsp주석  : 개발자도구에서 볼 수 없습니다.--%>

	<h3>출력함수</h3> <!-- html 문법 -->

	<% 
	
		// 자바 문법   
		String name = "팀 버너스 리";
		System.out.println(name);  // console 환경의 데이터 출력
		out.println(name); // 웹 브라우저에 데이터 출력
		
	
	%>
	
	<hr>
	<h3>출력 결과 : name</h3>
	<h3>출력 결과 : <%=name %></h3>
	

</body>
</html>

