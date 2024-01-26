<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
<h1>'${sessionScope.id }'님의 마이페이지 (${sessionScope.role }권한)</h1>
	<h3>이름 : ${name }</h3>
	<h3>연락처 : ${hp }</h3>
	<h3>주소 : ${address }</h3>
</body>
</html>