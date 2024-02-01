<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward2</title>
</head>
<body>



	<!-- javascript -->
	<script>
		/* let pdNm = "0x001";
		let pdCd = "keyboard";
		
		let url = "forwordEx02_target.jsp;
		url += "?pdCd="+pdCd;
		url += "&pdNm="+pdNm;
		
		location.href=url; */
	</script>

	<!-- jsp -->
	<%
	 String pdCd = "0x001";
	String pdNm = "keyboard";

/* 	//let url = "forwardEx02_target.jsp?pdCd="+pdCd+"&pdNm="+pdNm;
	String url = "forwardEx02_target.jsp";
	url += "?pdCd=" + pdCd;
	url += "&pdNm=" + pdNm;

	response.sendRedirect(url);  */
	%>


	<!-- action tag -->
	<jsp:forward page="forwardEx02_target.jsp">
		<jsp:param value="0x001"    name="pdCd"/>
		<jsp:param value="keyboard" name="pdNm"/>
		</jsp:forward>
</body>
</html>


