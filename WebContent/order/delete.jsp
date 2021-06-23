<%@page import="com.ksool.order.model.CartService"%>
<%@page import="java.sql.SQLException"%>
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
	//pdDetail.jsp에서 [삭제]링크 클릭하면 get방식으로 이동
	//=> http://localhost:9090/mystudy/pd/pdDelete.jsp?no=3
	//1
	String c_no=request.getParameter("c_no");
	//2
	CartService cartService=new CartService();
	try{
		int cnt = cartService.deleteC(Integer.parseInt(c_no));
		
		//3
		response.sendRedirect("cart.jsp");
	}catch(SQLException e){
		e.printStackTrace();
	}
	
	
%>
</body>
</html>