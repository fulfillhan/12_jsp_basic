<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인</title>
</head>
<body>

<h3>'${sessionScope.id }'님 로그인 되었습니다.' (${sessionScope.role }권한)</h3>
<p><a href="myPage">마이페이지</a></p>
<p><a href="cart">카트리스트</a></p>
<p><a href="logout">로그아웃</a></p>
	
</body>
</html>