<%@page import="java.sql.SQLException"%>
<%@page import="com.ksool.orderitem.model.OrderItemVO"%>
<%@page import="java.util.List"%>
<%@page import="com.ksool.orderitem.model.OrderItemService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>

<%
	OrderItemService orderitemService=new OrderItemService();
	List<OrderItemVO> list=null;
	OrderItemVO vo=null;
	String userid=(String)session.getAttribute("userid");
	try{
		list=orderitemService.selectAll(userid);
	}catch(SQLException e){
		e.printStackTrace();
	}
	
	
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
				<h2 class="mb-0 bread">결제 내역</h2>
			</div>
		</div>
	</div>
</section>
<section class="ftco-section">
	<div class="container">
		<div class="cart-detail p-3 p-md-4">

			<table class="table">
				<thead class="thead-primary">
					<tr>

						<th>주문번호</th>
						<th>배송지</th>
						<th>주문상태</th>
						<th>주문일</th>
					</tr>
				</thead>

				<tbody>
					<%
					if (list == null || list.isEmpty()) {
					%>
					<tr>
						<td colspan="4">결제내역이 없습니다.</td>
					</tr>
					<%
					} else {
					%>
					<%
					for (int i = 0; i < list.size(); i++) {
						vo = list.get(i);
						
					%>
						<tr>
							<td><%=vo.getO_NO()%></td>
							<td>
								수령인 : <%=vo.getO_NAME()==null ? "" : vo.getO_NAME()%>
								<br>주소 : <%=vo.getO_ADDR1()==null ? "" : vo.getO_ADDR1()%>
								<br>상세주소 : <%=vo.getO_ADDR2()==null ? "" : vo.getO_ADDR2()%>
								<br>연락처 : <%=vo.getO_PHONE()==null ? "" : vo.getO_PHONE()%>
							</td>
							
							<td><%=vo.getO_STATE()%></td>
							<td><%=vo.getO_DATE()%></td>
							
							
						</tr>
					<%
					} //for
					%>
					<%
					} //if
					%>

				</tbody>

			</table>


		</div>
	</div>
</section>
<br>
<%@ include file="../inc/bottom.jsp"%>