<%@page import="com.order.model.CartVO"%>
<%@page import="com.order.model.CartService"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<%
	CartService cartService=new CartService();
	List<CartVO> list=null;
	try{
		list=cartService.selectAll();
	}catch(SQLException e){
		e.printStackTrace();
	}
	int sum=0;
	int c_no=0;
%>

<section class="hero-wrap hero-wrap-2"
	style="background-image: url('../images/image01.png');"
	data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-center">
			<div class="col-md-9 ftco-animate mb-5 text-center">
				<p class="breadcrumbs mb-0">
					<span class="mr-2"><a href="index.html">Home <i
							class="fa fa-chevron-right"></i></a></span> <span>주문 <i
						class="fa fa-chevron-right"></i></span>
				</p>
				<h2 class="mb-0 bread">장바구니</h2>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section">
	<div class="container">
		<!-- <div class="row"> -->
		<!-- <div class="table-wrap"> -->

		<table class="table">
			<thead class="thead-primary">
				<tr>

					<th>Product</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>total</th>
					<th>&nbsp;</th>
					<th>&nbsp;</th>
				</tr>
			</thead>
			<tbody>
				<%if(list==null || list.isEmpty()){ %>
				<tr>
					<td colspan="5">장바구니가 비어있습니다.</td>
				</tr>
				<%}else{
						  	
						  %>
				<%for(int i=0;i<list.size();i++){ 
						  		CartVO vo=list.get(i);
						  	%>
				<tr>
					<td><%=vo.getC_PNAME() %></td>
					<td><%=vo.getC_PRICE() %></td>
					<td>X<%=vo.getC_QTY() %></td>

					<td><%=vo.getC_PRICE()*vo.getC_QTY() %></td>
					<td><a href="edit.jsp?c_no=<%=vo.getC_NO() %>">
							<button type="button" class="btn btn-primary">수정</button>
					</a></td>
					<td><a href="delete.jsp?c_no=<%=vo.getC_NO() %>">
							<button type="button" class="btn btn-primary" id="del">삭제</button>
					</a></td>
				</tr>

				<%
						  	sum+=vo.getC_PRICE()*vo.getC_QTY();
							c_no=vo.getC_NO();
						  	}//for %>
				<%}//if %>

			</tbody>
		</table>

		<div class="row justify-content-center">
			<div class="col col-lg-5 col-md-6 mt-5 cart-wrap ftco-animate">
				<div class="cart-total mb-3">
					<h3>Cart Totals</h3>
					<p class="d-flex">
						<span>Subtotal</span> <span><%=sum %></span>
					</p>
					<p class="d-flex">
						<span>Delivery</span> <span>0</span>
					</p>
					<p class="d-flex">
						<span>Discount</span> <span>0</span>
					</p>
					<hr>
					<p class="d-flex total-price">
						<span>Total</span> <span><%=sum %></span>
					</p>
				</div>
				<p class="text-center">
					<a href="checkout.html" class="btn btn-primary py-3 px-4">결제</a>
				</p>
			</div>
		</div>
	</div>
</section>
<script>
	$(function(){
		$('#del').each(function(i){
			$(this).click(function(e){
				if(!confirm('삭제하시겠습니까?')){
					e.preventDefault();
					
				}
			});
		});
	});	
</script>
<br>
<%@ include file="../inc/bottom.jsp"%>