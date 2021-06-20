<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	int currentPage=1; 
	
%>
<%@ include file="../inc/top.jsp" %>
<a id="MOVE_TOP_BTN" href="#">TOP
</a>
<!-- 전체상품 출력 -->
	<section class="hero-wrap hero-wrap-2" style="background-image: url('<%=request.getContextPath()%>/images/image01.png');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate mb-5 text-center">
             <p class="breadcrumbs mb-0"><span class="mr-2"><a href="index.html">Home <i class="fa fa-chevron-right"></i></a></span> <span>상품<i class="fa fa-chevron-right"></i></span></p>
            <h2 class="mb-0 bread">전&nbsp;체&nbsp;상&nbsp;품</h2>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section">
	<div class="container">
		<div class="row">
			<div class="col-md-9">
				<div class="row">

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url(<%=request.getContextPath()%>/images/product-1.jpg);">
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
								<span class="category">막걸리</span>
								<h2>금정산성 막걸리</h2>
								<span class="price">17500₩</span>
							</div>
						</div>
					</div>

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url(<%=request.getContextPath()%>/images/product-2.jpg);">
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
								<span class="category">막걸리</span>
								<h2>나루 생 막걸리</h2>
								<span class="price">19500₩</span>
							</div>
						</div>
					</div>

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url(<%=request.getContextPath()%>/images/product-3.jpg);">
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
								<span class="category">막걸리</span>
								<h2>느린마을 막걸리</h2>
								<span class="price">12500₩</span>
							</div>
						</div>
					</div>

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
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
								<span class="category">막걸리</span>
								<h2>다랭이팜 막걸리</h2>
								<span class="price">18500₩</span>
							</div>
						</div>
					</div>

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url(<%=request.getContextPath()%>/images/product-5.jpg);">
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
								<span class="category">막걸리</span>
								<h2>문경 오미자 막걸리 세트</h2>
								<span class="price">24500₩</span>
							</div>
						</div>
					</div>

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url(<%=request.getContextPath()%>/images/product-6.jpg);">
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
								<span class="category">막걸리</span>
								<h2>별산막걸리</h2>
								<span class="price">13500₩</span>
							</div>
						</div>
					</div>

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
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
								<span class="category">막걸리</span>
								<h2>복분자 막걸리</h2>
								<span class="price">15500₩</span>
							</div>
						</div>
					</div>

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url(<%=request.getContextPath()%>/images/product-8.jpg);">
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
								<span class="category">막걸리</span>
								<h2>복순도가 손막걸리</h2>
								<span class="price">15500₩</span>
							</div>
						</div>
					</div>

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url(<%=request.getContextPath()%>/images/product-9.jpg);">
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
								<span class="category">막걸리</span>
								<h2>세종대왕어주</h2>
								<span class="price">15500₩</span>
							</div>
						</div>
					</div>

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url(<%=request.getContextPath()%>/images/product-10.jpg);">
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
								<span class="category">막걸리</span>
								<h2>소백산 막걸리</h2>
								<span class="price">15500₩</span>
							</div>
						</div>
					</div>

					<!-- 여기부터 전통주 -->

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url(<%=request.getContextPath()%>/images/product-11.jpg);">
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
								<h2>주사</h2>
								<span class="price">8500₩</span>
							</div>
						</div>
					</div>

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url(<%=request.getContextPath()%>/images/product-12.jpg);">
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
								<h2>모월인</h2>
								<span class="price">13500₩</span>
							</div>
						</div>
					</div>

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url(<%=request.getContextPath()%>/images/product-13.jpg);">
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
								<h2>방탄복</h2>
								<span class="price">13500₩</span>
							</div>
						</div>
					</div>

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
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
								<span class="category">전통주</span>
								<h2>양반안동소주 명각세트 코발트12년</h2>
								<span class="price">14500₩</span>
							</div>
						</div>
					</div>

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url(<%=request.getContextPath()%>/images/product-15.jpg);">
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
								<h2>이도 담금주</h2>
								<span class="price">13500₩</span>
							</div>
						</div>
					</div>

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
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

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url(<%=request.getContextPath()%>/images/product-17.jpg);">
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
								<h2>조옥화안동소주</h2>
								<span class="price">26500₩</span>
							</div>
						</div>
					</div>

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
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

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url(<%=request.getContextPath()%>/images/product-19.jpg);">
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
								<h2>키트 누룩 유산균 전통주</h2>
								<span class="price">17500₩</span>
							</div>
						</div>
					</div>

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url(<%=request.getContextPath()%>/images/product-20.jpg);">
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
								<h2>한국 애플리주 금과명주</h2>
								<span class="price">21500₩</span>
							</div>
						</div>
					</div>

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url(<%=request.getContextPath()%>/images/product-21.jpg);">
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
								<h2>한산소곡주</h2>
								<span class="price">16500₩</span>
							</div>
						</div>
					</div>

					<!-- 여기부터 증류주 -->
					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url(<%=request.getContextPath()%>/images/product-22.jpg);">
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
								<h2>감홍로</h2>
								<span class="price">17500₩</span>
							</div>
						</div>
					</div>

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url(<%=request.getContextPath()%>/images/product-23.jpg);">
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
								<h2>두레앙</h2>
								<span class="price">17500₩</span>
							</div>
						</div>
					</div>

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
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

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url(<%=request.getContextPath()%>/images/product-25.jpg);">
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
								<h2>문경바람</h2>
								<span class="price">17500₩</span>
							</div>
						</div>
					</div>

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
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

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url(<%=request.getContextPath()%>/images/product-27.jpg);">
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
								<h2>배혜정 담금나라 담금주 일반증류주</h2>
								<span class="price">17500₩</span>
							</div>
						</div>
					</div>

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url(<%=request.getContextPath()%>/images/product-28.jpg);">
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
								<h2>부안참뽕</h2>
								<span class="price">17500₩</span>
							</div>
						</div>
					</div>

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url(<%=request.getContextPath()%>/images/product-29.jpg);">
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
								<h2>사과와인 추사</h2>
								<span class="price">17500₩</span>
							</div>
						</div>
					</div>

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
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

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url(<%=request.getContextPath()%>/images/product-31.jpg);">
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
								<h2>안동소주</h2>
								<span class="price">17500₩</span>
							</div>
						</div>
					</div>

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url(<%=request.getContextPath()%>/images/product-32.jpg);">
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
								<h2>진도 홍주</h2>
								<span class="price">17500₩</span>
							</div>
						</div>
					</div>

					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url(<%=request.getContextPath()%>/images/product-33.jpg);">
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
								<h2>추사백</h2>
								<span class="price">17500₩</span>
							</div>
						</div>
					</div>


				</div>
				<div class="row mt-5">
					<div class="col text-center">
						<div class="block-27">
							<ul>
								<li><a href="#">&lt;</a></li>
								<li class="active"><span>1</span></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">&gt;</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- floating menu -->
			<div class="col-md-3">
				<div id="floatMenu" class="sidebar-box ftco-animate">
					<div class="categories">
						<h3>Product Types</h3>
						<ul class="p-0">
							<li><a href="<%=request.getContextPath() %>/product2.jsp">전통주
									<span class="fa fa-chevron-right"></span>
							</a></li>
							<li><a href="<%=request.getContextPath() %>/product3.jsp">막걸리
									<span class="fa fa-chevron-right"></span>
							</a></li>
							<li><a href="<%=request.getContextPath() %>/product4.jsp">증류주
									<span class="fa fa-chevron-right"></span>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<span id="brr"></span>
</section>
		
		
		<br>
		
<%@ include file="../inc/bottom.jsp" %>