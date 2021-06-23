<%@page import="com.ksool.product.model.ProductVO"%>
<%@page import="com.ksool.product.model.ProductDAO"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//pdWrite.jsp에서 post방식으로 서브밋
		//1. 요청 파라미터 읽어오기
		//post - 요청 파라미터에 대한 한글 인코딩 처리
		request.setCharacterEncoding("utf-8");
	
		
		
		String pdName=request.getParameter("pdName");
		String price=request.getParameter("price");
	
		//2. db작업
		ProductDAO pdDao = new ProductDAO();
		
		ProductVO dto = new ProductVO(); 
		dto.
		try{
			int cnt=pdDao.insertPd(dto);
			
			//3. 결과 처리
			response.sendRedirect("pdList.jsp");
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		
	%>
</body>
</html>