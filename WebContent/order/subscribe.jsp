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
				<h2 class="mb-0 bread">구독</h2>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section">

	<div class="container">

		<div class="cart-detail p-3 p-md-4">
			<center>
	<h2>편하게 즐기는 전통주 구독서비스</h2>
	<section class="ftco-section ftco-no-pb">
			<div class="row justify-content-center pb-5">
				<div class="col-md-7 heading-section text-center">
					<h2 style="font-family: 'Cafe24SsurroundAir'; ">이달의 술</h2>
				</div>
			</div>
		<div class="container">
			<div class="row">
				<div
					class="col-md-6 img img-3 d-flex justify-content-center align-items-center"
					style="background-image: url(<%=request.getContextPath()%>/images/product-27.jpg);"></div>
				<div class="col-md-6 wrap-about pl-md-5 py-5">
					<div class="heading-section">
						<h2 class="mb-4">배혜정도가 담금나라 3.6L</h2>

						<p>담금나라는 자작나무 숯으로 정제한 무색무취의 깔끔한 증류주입니다. 쌀소주원액과 주정을 자작나무 숯 처리를 통하여 향미를 떨어뜨리는 
						알코올 냄새를 제거해 줌으로서, 재료 본연의 맛과 향을 그대로 즐길 수 있도록 제발된 제품입니다.</p>
						<p>배혜정도가는 1998년 창사 이후 우리나라 문화인 막걸리의 고급화 및 세계화를 위해 노력하며 막걸리의 고부가가치화를 
						선도해오고 있습니다. 그리하여 자체적으로 개발한 액상 누룩에 대한 제조방법특허를 보유하고 있고, 기존 제품들과 차별화되는 
						생쌀발효법으로 술을 빚으며, 원료의 품질도 타협하지 않아 프리미엄 탁주의 대명사로 자리매김하였습니다.</p>
					</div>

				</div>
			</div>
		</div>
	</section>
	<p><Br></p>
	<h3>매달<br>이달의 술과 K-SOOL이 추천하는<br>인생술을 함께 보내드려요</h3><br>
	
	
	</center>

			<form action="subscribe_ok.jsp">
				<div class="row justify-content-center">
					<div class="col col-lg-5 col-md-6 mt-5 cart-wrap ftco-animate">
						<div class="cart-total mb-3">
							<h3>배송지</h3>
							<p class="d-flex">
								<span>수령인</span><input type="text" name="name">
							</p>
							<p class="d-flex">
								<span>주소</span><input type="text" name="ad1">
							</p>
							<p class="d-flex">
								<span>상세주소</span><input type="text" name="ad2">
							</p>
							<p class="d-flex">
								<span>연락처</span><input type="text" name="phone">
							</p>
							<p class="d-flex">
								<span>요청사항</span><input type="text" name="require">
							</p>
						</div>
							<button type="submit" class="btn btn-primary">월 19,900원 결제</button>

					</div>
				</div>
			</form>

		</div>
		<!-- .col-md-8 -->

	</div>
</section>
<br>
<%@ include file="../inc/bottom.jsp"%>