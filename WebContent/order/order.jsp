<%@page import="java.util.ArrayList"%>
<%@page import="com.ksool.order.model.CartVO"%>
<%@page import="java.util.List"%>
<%@page import="com.ksool.order.model.CartService"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<script type="text/javascript">
$(function(){
	$('#order').click(function(){
        if($('#ad1').val().length<1){
            alert('주소를 입력하세요');
            $('#ad1').focus();
            event.preventDefault();
         }else if($('#ad2').val().length<1){
             alert('상세주소를 입력하세요');
             $('#ad2').focus();
             event.preventDefault();
          }
});
</script>
<%
CartService cartService = new CartService();
List<CartVO> list = null;
String userid = (String) session.getAttribute("userid");
try {
	list = cartService.selectAll(userid);
} catch (SQLException e) {
	e.printStackTrace();
}
int sum = 0;
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
				<h2 class="mb-0 bread">결제</h2>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section">

	<div class="container">

		<div class="cart-detail p-3 p-md-4">
			<h1>주문상품</h1>

			<table class="table">
				<thead class="thead-primary">
					<tr>

						<th>Product</th>
						<th>Price</th>
						<th>Quantity</th>
						<th>total</th>
					</tr>
				</thead>

				<tbody>
					<%
					if (list == null || list.isEmpty()) {
					%>
					<tr>
						<td colspan="5">장바구니가 비어있습니다.</td>
					</tr>
					<%
					} else {
					%>
					<%
					for (int i = 0; i < list.size(); i++) {
						CartVO vo = list.get(i);
					%>
					<tr>
						<td><%=vo.getC_PNAME()%></td>
						<td><%=vo.getC_PRICE()%></td>
						<td><%=vo.getC_QTY()%></td>
						<td><%=vo.getC_PRICE() * vo.getC_QTY()%></td>
					</tr>
					<%
					sum += vo.getC_PRICE() * vo.getC_QTY();
					} //for
					%>
					<%
					} //if
					%>

				</tbody>

			</table>

			<!-- END -->

			<form action="order_ok.jsp">
				<div class="row justify-content-center">
					<div class="col col-lg-5 col-md-6 mt-5 cart-wrap ftco-animate">
						<div class="cart-total mb-3">
							<h3>배송지</h3>
							<p class="d-flex">
								<span>수령인</span><input type="text" name="name" id="name">
							</p>
							<p class="d-flex">
								<span>주소</span><input type="text" name="ad1" id="ad1">
							</p>
							<p class="d-flex">
								<span>상세주소</span><input type="text" name="ad2" id="ad2">
							</p>
							<p class="d-flex">
								<span>연락처</span><input type="text" name="phone" id="phone">
							</p>
							<p class="d-flex">
								<span>요청사항</span><input type="text" name="require" id="require">
							</p>
						</div>
						<input type="submit" class="btn btn-primary" id="order" value="총 <%=sum%>원 결제">
							
						</input>

					</div>
				</div>
			</form>

		</div>
		<!-- .col-md-8 -->

	</div>
</section>
<br>
<%@ include file="../inc/bottom.jsp"%>