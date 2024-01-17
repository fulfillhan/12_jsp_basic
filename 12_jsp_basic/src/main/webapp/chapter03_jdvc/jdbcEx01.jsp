
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jdbc 연결하기</title>
</head>
<body>
	


	<%-- 
	
		# JDBC (Java DataBase Connectivity) 데이터 베이스 연동 방법 
		
		1) (중요)mysql-connector-j-x.x.xx.jar파일을 WEB-INF 폴더의 lib 폴더에 넣는다. 
		
		2) Class.forName("com.mysql.cj.jdbc.Driver"); 및 연결정보를 작성한다.(url , id , password)
		
		3) DriverManager의 getConnection(url , id , password) 메소드를 사용하여
		   데이터베이스 연결정보가 저장되어있는 Connection 객체를 생성한다.
		
	--%>
	
	<%
	//db연결하는 방법
	  //데이터베이스를 연결하기 위한 객체
		Connection conn = null; // java.sql.Connection" 
		
		try{
			//forName 생성, 연결해서 사용할 수 있다.
			Class.forName("com.mysql.cj.jdbc.Driver"); 
			
			// DB 연결 정보 > "jdbc:mysql://ip:port/databasename?option"
			String url = "jdbc:mysql://localhost:3306/JDBC_EX?serverTimeZone=Asia/Seoul";
			// DB 연결 계정
			String user = "root";
			// DB 연결 비밀번호
			String password = "1234";
			conn = DriverManager.getConnection(url, user, password);//"java.sql.DriverManager"
			System.out.println("연결에 성공하였습니다.");
			
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("연결에 실패했습니다.");
		}finally{
			//데이터베이스 연동 종료
			conn.close();
		}
	
	%>
	

</body>
</html>