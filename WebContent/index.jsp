<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="inc/top.jsp"%>
<div class="hero-wrap"
	style="background-image: url('images/image01.png');"
	data-stellar-background-ratio="0.5">
	<!-- <div class="overlay"></div> -->
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-center justify-content-center">
			<div class="col-md-8  d-flex align-items-end">
				<div class="text w-100 text-center">
					<h1 class="mb-4" style="width: 680">
						오늘부터 <span>술은</span><br>특별하고 <span> 의미있게 </span>
					</h1>
					<p>
						<a href="#" class="btn btn-white btn-outline-white py-3 px-5">구독하기란?</a>
						<!-- <a href="#" class="btn btn-white btn-outline-white py-2 px-4">Read more</a> -->
					</p>
				</div>
			</div>
		</div>
	</div>
</div>

<section class="ftco-intro">
	<div class="container">
		<div class="row no-gutters">
			<div class="col-md-4 d-flex">
				<div class="intro d-lg-flex w-100">
					<div class="icon">
						<span class="flaticon-support"></span>
					</div>
					<div class="text">
						<h2>온라인 상담</h2>
						<p style="font-family: 'Cafe24SsurroundAir';">고객센터 또는 문의 게시판으로
							상담 가능합니다.</p>
					</div>
				</div>
			</div>
			<div class="col-md-4 d-flex">
				<div class="intro color-1 d-lg-flex w-100">
					<div class="icon">
						<span class="flaticon-cashback"></span>
					</div>
					<div class="text">
						<h2>환불 시스템</h2>
						<p style="font-family: 'Cafe24SsurroundAir';">100% 환불보증 제도를
							이용하고 있습니다.</p>
					</div>
				</div>
			</div>
			<div class="col-md-4 d-flex">
				<div class="intro color-2 d-lg-flex w-100 ">
					<div class="icon">
						<span class="flaticon-free-delivery"></span>
					</div>
					<div class="text">
						<h2>무료배송</h2>
						<p style="font-family: 'Cafe24SsurroundAir';">전 상품 1병이상 주문시
							무료배송 제도를 실시 하고 있습니다.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section ftco-no-pb">
	<div class="row justify-content-center pb-5">
		<div class="col-md-7 heading-section text-center">
			<h2 style="font-family: 'Cafe24SsurroundAir';">이달의 술</h2>
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

					<p>담금나라는 자작나무 숯으로 정제한 무색무취의 깔끔한 증류주입니다. 쌀소주원액과 주정을 자작나무 숯 처리를
						통하여 향미를 떨어뜨리는 알코올 냄새를 제거해 줌으로서, 재료 본연의 맛과 향을 그대로 즐길 수 있도록 제발된
						제품입니다.</p>
					<p>배혜정도가는 1998년 창사 이후 우리나라 문화인 막걸리의 고급화 및 세계화를 위해 노력하며 막걸리의
						고부가가치화를 선도해오고 있습니다. 그리하여 자체적으로 개발한 액상 누룩에 대한 제조방법특허를 보유하고 있고, 기존
						제품들과 차별화되는 생쌀발효법으로 술을 빚으며, 원료의 품질도 타협하지 않아 프리미엄 탁주의 대명사로
						자리매김하였습니다.</p>
				</div>

			</div>
		</div>
	</div>
</section>

<section class="ftco-section">
	<div class="container">
		<div class="row justify-content-center pb-5">
			<div class="col-md-7 heading-section text-center">
				<h2 style="font-family: 'Cafe24SsurroundAir';">전체 상품</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3 d-flex">
				<div class="product ">
					<div class="img d-flex align-items-center justify-content-center"
						style="background-image: url(<%=request.getContextPath()%>/images/product-4.jpg);">
						<div class="desc">
							<p class="meta-prod d-flex">
								<a href="#"
									class="d-flex align-items-center justify-content-center"><span
									class="flaticon-shopping-bag"></span></a> <a href="#"
									class="d-flex align-items-center justify-content-center"><span
									class="flaticon-heart"></span></a> <a
									href="<%=request.getContextPath() %>/product-single.jsp"
									class="d-flex align-items-center justify-content-center"><span
									class="flaticon-visibility"></span></a>
							</p>
						</div>
					</div>
					<div class="text text-center">
						<span class="sale">세일중</span> <span class="category">막걸리</span>
						<h2>다랭이팜 막걸리</h2>
						<p class="mb-0">
							<span class="price price-sale">21500₩</span> <span class="price">18500₩</span>
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-3 d-flex">
				<div class="product ">
					<div class="img d-flex align-items-center justify-content-center"
						style="background-image: url(<%=request.getContextPath()%>/images/product-7.jpg);">
						<div class="desc">
							<p class="meta-prod d-flex">
								<a href="#"
									class="d-flex align-items-center justify-content-center"><span
									class="flaticon-shopping-bag"></span></a> <a href="#"
									class="d-flex align-items-center justify-content-center"><span
									class="flaticon-heart"></span></a> <a
									href="<%=request.getContextPath() %>/product-single.jsp"
									class="d-flex align-items-center justify-content-center"><span
									class="flaticon-visibility"></span></a>
							</p>
						</div>
					</div>
					<div class="text text-center">
						<span class="seller">베스트셀러</span> <span class="category">막걸리</span>
						<h2>복분자 막걸리</h2>
						<span class="price">15500₩</span>
					</div>
				</div>
			</div>
			<div class="col-md-3 d-flex">
				<div class="product ">
					<div class="img d-flex align-items-center justify-content-center"
						style="background-image: url(<%=request.getContextPath()%>/images/product-14.jpg);">
						<div class="desc">
							<p class="meta-prod d-flex">
								<a href="#"
									class="d-flex align-items-center justify-content-center"><span
									class="flaticon-shopping-bag"></span></a> <a href="#"
									class="d-flex align-items-center justify-content-center"><span
									class="flaticon-heart"></span></a> <a
									href="<%=request.getContextPath() %>/product-single.jsp"
									class="d-flex align-items-center justify-content-center"><span
									class="flaticon-visibility"></span></a>
							</p>
						</div>
					</div>
					<div class="text text-center">
						<span class="new">신상품</span> <span class="category">전통주</span>
						<h2>양반안동소주</h2>
						<span class="price">14500₩</span>
					</div>
				</div>
			</div>
			<div class="col-md-3 d-flex">
				<div class="product ">
					<div class="img d-flex align-items-center justify-content-center"
						style="background-image: url(<%=request.getContextPath()%>/images/product-16.jpg);">
						<div class="desc">
							<p class="meta-prod d-flex">
								<a href="#"
									class="d-flex align-items-center justify-content-center"><span
									class="flaticon-shopping-bag"></span></a> <a href="#"
									class="d-flex align-items-center justify-content-center"><span
									class="flaticon-heart"></span></a> <a
									href="<%=request.getContextPath() %>/product-single.jsp"
									class="d-flex align-items-center justify-content-center"><span
									class="flaticon-visibility"></span></a>
							</p>
						</div>
					</div>
					<div class="text text-center">
						<span class="category">전통주</span>
						<h2>전주 모주</h2>
						<span class="price">12500₩</span>
					</div>
				</div>
			</div>

			<div class="col-md-3 d-flex">
				<div class="product ">
					<div class="img d-flex align-items-center justify-content-center"
						style="background-image: url(<%=request.getContextPath()%>/images/product-24.jpg);">
						<div class="desc">
							<p class="meta-prod d-flex">
								<a href="#"
									class="d-flex align-items-center justify-content-center"><span
									class="flaticon-shopping-bag"></span></a> <a href="#"
									class="d-flex align-items-center justify-content-center"><span
									class="flaticon-heart"></span></a> <a
									href="<%=request.getContextPath() %>/product-single.jsp"
									class="d-flex align-items-center justify-content-center"><span
									class="flaticon-visibility"></span></a>
							</p>
						</div>
					</div>
					<div class="text text-center">
						<span class="category">증류주</span>
						<h2>명랑 스컬</h2>
						<span class="price">17500₩</span>
					</div>
				</div>
			</div>
			<div class="col-md-3 d-flex">
				<div class="product ">
					<div class="img d-flex align-items-center justify-content-center"
						style="background-image: url(<%=request.getContextPath()%>/images/product-30.jpg);">
						<div class="desc">
							<p class="meta-prod d-flex">
								<a href="#"
									class="d-flex align-items-center justify-content-center"><span
									class="flaticon-shopping-bag"></span></a> <a href="#"
									class="d-flex align-items-center justify-content-center"><span
									class="flaticon-heart"></span></a> <a
									href="<%=request.getContextPath() %>/product-single.jsp"
									class="d-flex align-items-center justify-content-center"><span
									class="flaticon-visibility"></span></a>
							</p>
						</div>
					</div>
					<div class="text text-center">
						<span class="category">증류주</span>
						<h2>안동소주 일품 골드</h2>
						<span class="price">17500₩</span>
					</div>
				</div>
			</div>
			<div class="col-md-3 d-flex">
				<div class="product ">
					<div class="img d-flex align-items-center justify-content-center"
						style="background-image: url(<%=request.getContextPath()%>/images/product-18.jpg);">
						<div class="desc">
							<p class="meta-prod d-flex">
								<a href="#"
									class="d-flex align-items-center justify-content-center"><span
									class="flaticon-shopping-bag"></span></a> <a href="#"
									class="d-flex align-items-center justify-content-center"><span
									class="flaticon-heart"></span></a> <a
									href="<%=request.getContextPath() %>/product-single.jsp"
									class="d-flex align-items-center justify-content-center"><span
									class="flaticon-visibility"></span></a>
							</p>
						</div>
					</div>
					<div class="text text-center">
						<span class="category">전통주</span>
						<h2>첨 내린 담금주</h2>
						<span class="price">25500₩</span>
					</div>
				</div>
			</div>
			<div class="col-md-3 d-flex">
				<div class="product ">
					<div class="img d-flex align-items-center justify-content-center"
						style="background-image: url(<%=request.getContextPath()%>/images/product-26.jpg);">
						<div class="desc">
							<p class="meta-prod d-flex">
								<a href="#"
									class="d-flex align-items-center justify-content-center"><span
									class="flaticon-shopping-bag"></span></a> <a href="#"
									class="d-flex align-items-center justify-content-center"><span
									class="flaticon-heart"></span></a> <a
									href="<%=request.getContextPath() %>/product-single.jsp"
									class="d-flex align-items-center justify-content-center"><span
									class="flaticon-visibility"></span></a>
							</p>
						</div>
					</div>
					<div class="text text-center">
						<span class="category">증류주</span>
						<h2>배상면주가 보리아락21</h2>
						<span class="price">17500₩</span>
					</div>
				</div>
			</div>
		</div>
		<div class="row justify-content-center">
			<div class="col-md-4">
				<a href="<%=request.getContextPath() %>/product1.jsp"
					class="btn btn-primary py-4 d-block "
					style="font-family: 'Cafe24SsurroundAir'; font-size:20px;">전체 상품 확인 
					<span class="fa fa-long-arrow-right"></span>
				</a>
			</div>
		</div>
	</div>
</section>



<center>
	<div class="col-md-7 heading-section text-center">
		<h2 style="font-family: 'Cafe24SsurroundAir';">찾아오는 길</h2>
	</div>

	<!-- * 카카오맵 - 지도퍼가기 -->
	<!-- 1. 지도 노드 -->
	<div id="daumRoughmapContainer1623659655194"
		class="root_daum_roughmap root_daum_roughmap_landing align-items-center"></div>


	<!--2. 설치 스크립트
	* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.-->
	<script charset="UTF-8" class="daum_roughmap_loader_script"
		src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

	<!-- 3. 실행 스크립트 -->
	<script charset="UTF-8">
		new daum.roughmap.Lander({
			"timestamp" : "1623659655194",
			"key" : "268zg",
			"mapWidth" : "1000",
			"mapHeight" : "450"
		}).render();
	</script>
</center>
<br>
<%@ include file="inc/bottom.jsp"%>