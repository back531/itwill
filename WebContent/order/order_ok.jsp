<%@page import="com.ksool.orderproduct.OrderProductService"%>
<%@page import="com.ksool.orderitem.model.OrderItemVO"%>
<%@page import="com.ksool.orderitem.model.OrderItemService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.ksool.order.model.CartVO"%>
<%@page import="com.ksool.order.model.CartService"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1
	String userid=(String)session.getAttribute("userid");
	String o_NAME=request.getParameter("name");
	String o_ADDR1=request.getParameter("ad1");
	String o_ADDR2=request.getParameter("ad2");
	String o_PHONE=request.getParameter("phone");
	String o_REQUIRE=request.getParameter("require");
			
	//2
	OrderItemService service=new OrderItemService();
	OrderItemVO vo=new OrderItemVO();
	vo.setUserid(userid);
	vo.setO_NAME(o_NAME);
	vo.setO_ADDR1(o_ADDR1);
	vo.setO_ADDR2(o_ADDR2);
	vo.setO_PHONE(o_PHONE);
	vo.setO_REQUIRE(o_REQUIRE);
	
	OrderProductService service2=new OrderProductService();
	
	try{
		int cnt = service.insertOrderItem(vo);
		int cnt2=service2.insertOrderProduct(userid);
		
		//3
		if(cnt>0 && cnt2>0){ %>
		<script type="text/javascript">
			alert('주문 완료');
			location.href="list.jsp";
		</script>				
	<%}else{%>
		<script type="text/javascript">
			alert('주문 실패!');
			history.back();
		</script>				
	<%}
	}catch(SQLException e){
		e.printStackTrace();
	}
	
	
%>
