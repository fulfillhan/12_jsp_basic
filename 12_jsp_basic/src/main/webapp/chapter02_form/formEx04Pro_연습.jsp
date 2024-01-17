<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정답 풀이</title>
</head>
<body>
 <%
 request.setCharacterEncoding("utf-8");
 
 // 아이디와 비밀번호 , dbId 와 dbPw(hidden 값으로 )의 값 모두를 formEx04Pro_정답.jsp에 값을 전달받는다
  String myId = request.getParameter("id");
  String myPw = request.getParameter("pw");
  String dbId = request.getParameter("dbId");
  String dbPw = request.getParameter("dbPw");
  
  String result = "";
  if(dbId.equals(myId)&& dbPw.equals(myPw)) result = "로그인 성공";
  else                                      result = "로그인 실패";
 
 %>

 <h2>결과 : <%= result %></h2>


</body>
</html>