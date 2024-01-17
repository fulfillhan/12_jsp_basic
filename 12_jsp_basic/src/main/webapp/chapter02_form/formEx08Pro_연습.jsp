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
	    request.setCharacterEncoding("utf-8");	
	
		String yourAccount = request.getParameter("yourAccount"); 
		int yourMoney      = Integer.parseInt(request.getParameter("yourMoney")); // name 요소값이 없어도 가져올 수 있음-> 해당 데이터는 null.
		
		String myAccount = request.getParameter("myAccount"); 
		int myMoney      = Integer.parseInt(request.getParameter("myMoney"));
		
		String sendAccount = request.getParameter("sendAccount"); 
		int sendMoney 	   = Integer.parseInt(request.getParameter("sendMoney"));
		
		String result = "";
		if (yourAccount.equals(sendAccount)) {
			if (sendMoney <= myMoney) {
				myMoney   = myMoney - sendMoney;
				result = yourAccount + "계좌에 " + sendMoney +"원을 이체를 완료하였습니다. 남아있는 금액은 " + myMoney + "원 입니다";
				
			} 
			else {
				result = myAccount + "계좌에 잔액이 " + (sendMoney - myMoney) + "만큼  부족합니다.";
			}
		}
		else {
			result = "없는 계좌 입니다.";
		}
	
	%>
	<h1><%=result %></h1>

</body>
</html>