<%@page import="com.ksool.order.model.CartVO"%>
<%@page import="com.ksool.order.model.CartService"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1
	String c_no=request.getParameter("c_no");
	String qty=request.getParameter("qty");
	
	//2
	CartService cartService=new CartService();
	
	try{
		int cnt = cartService.updateCart(Integer.parseInt(qty),Integer.parseInt(c_no));
		
		//3
		/* response.sendRedirect("cart.jsp"); */
		if(cnt>0){ %>
		<script type="text/javascript">
			alert('수정 완료');
			location.href="cart.jsp";
		</script>				
	<%}else{%>
		<script type="text/javascript">
			alert('수정 실패!');
			history.back();
		</script>				
	<%}
	}catch(SQLException e){
		e.printStackTrace();
	}
	
	
%>
