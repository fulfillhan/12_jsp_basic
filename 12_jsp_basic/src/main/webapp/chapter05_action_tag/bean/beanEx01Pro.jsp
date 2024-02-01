<%@page import="_05_bean.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bean process</title>
</head>
<body>


	<%
	request.setCharacterEncoding("utf-8");

	ProductDTO productDTO = new ProductDTO();
	
	productDTO.setPdCd(request.getParameter("pdCd"));
	productDTO.setPdNm(request.getParameter("pdNm"));
	productDTO.setDeptCd(request.getParameter("deptCd"));
	productDTO.setDeptNm(request.getParameter("deptNm"));
	productDTO.setMgrCd(request.getParameter("mgrCd"));
	productDTO.setMgrNm(request.getParameter("mgrNm"));
	

	
	%>
	
	<jsp:useBean id="bean1" class="_05_bean.ProductDTO">
		<jsp:setProperty property="pdNm" name="bean1"/>
		<jsp:setProperty property="deptCd" name="bean1"/>
		<jsp:setProperty property="deptNm" name="bean1"/>
		<jsp:setProperty property="mgrCd" name="bean1"/>
		<jsp:setProperty property="mgrNm" name="bean1"/>
	</jsp:useBean>
	
	<jsp:useBean id="bean2" class="_05_bean.ProductDTO">
		<jsp:setProperty property="*" name="bean2"/>
	</jsp:useBean>
	
	<%
		//확인
		System.out.println("productDTO : "+ productDTO);
		System.out.println("bean1 : "+ bean1);
		System.out.println("bean2 : "+ bean2);
	
	%>
</body>
</html>