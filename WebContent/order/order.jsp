<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
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

		<div class="row justify-content-center">
			<div class="col-xl-10 ftco-animate">

				<div class="cart-detail p-3 p-md-4">
					<h1>주문상품</h1>

					<table class="table">
						<thead class="thead-primary">
							<tr>

								<th>&nbsp;</th>
								<th>Product</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>total</th>

							</tr>
						</thead>
						<tbody>
							<tr class="alert" role="alert">

								<td>
									<div class="img"
										style="background-image: url(../images/prod-1.jpg);"></div>
								</td>
								<td>
									<div class="email">
										<span>Jim Beam Kentucky Straight</span> <span>Fugiat
											voluptates quasi nemo, ipsa perferendis</span>
									</div>
								</td>
								<td>$44.99</td>
								<td class="quantity">
									<div class="input-group">
										<input type="text" name="quantity"
											class="quantity form-control input-number" value="2" min="1"
											max="100">
									</div>
								</td>
								<td>$89.98</td>

							</tr>

							<tr class="alert" role="alert">

								<td>
									<div class="img"
										style="background-image: url(../images/prod-2.jpg);"></div>
								</td>
								<td>
									<div class="email">
										<span>Jim Beam Kentucky Straight</span> <span>Fugiat
											voluptates quasi nemo, ipsa perferendis</span>
									</div>
								</td>
								<td>$30.99</td>
								<td class="quantity">
									<div class="input-group">
										<input type="text" name="quantity"
											class="quantity form-control input-number" value="1" min="1"
											max="100">
									</div>
								</td>
								<td>$30.99</td>

							</tr>

							<tr class="alert" role="alert">

								<td>
									<div class="img"
										style="background-image: url(../images/prod-3.jpg);"></div>
								</td>
								<td>
									<div class="email">
										<span>Jim Beam Kentucky Straight</span> <span>Fugiat
											voluptates quasi nemo, ipsa perferendis</span>
									</div>
								</td>
								<td>$35.50</td>
								<td class="quantity">
									<div class="input-group">
										<input type="text" name="quantity"
											class="quantity form-control input-number" value="1" min="1"
											max="100">
									</div>
								</td>
								<td>$35.50</td>

							</tr>


						</tbody>
					</table>





					<!-- END -->

					<div class="row mt-5 pt-3 d-flex">
						<div class="col-md-6 d-flex">
							<div class="cart-detail cart-total p-3 p-md-4">
								<h3 class="billing-heading mb-4">배송지</h3>
								<p class="d-flex">
									<span>홍길동</span>
								</p>
								<p class="d-flex">
									<span>010-1111-2222</span>
								</p>
								<p class="d-flex">
									<span>서울 강남구</span>
								</p>
								<p class="d-flex">
									<span>배송메모</span> <input type="text" class="form-control"
										placeholder="">
								</p>
								<p class="d-flex">
									<span></span> <span> <a href="#"
										class="btn btn-primary py-3 px-4">변경</a>
									</span>
								</p>
							</div>

						</div>
						<div class="col-md-6 d-flex">
							<div class="cart-detail p-3 p-md-4">
								<h1 class="billing-heading mb-4">주문자</h1>
								<p class="d-flex">
									<span>홍길동</span>
								</p>
								<p class="d-flex">
									<span>010-1111-2222</span>
								</p>
								<p class="d-flex">
									<span>1111@naver.com</span>
								</p>

							</div>
						</div>
					</div>
				</div>
				<!-- .col-md-8 -->
			</div>
		</div>
	</div>
</section>

<br>
<%@ include file="../inc/bottom.jsp"%>