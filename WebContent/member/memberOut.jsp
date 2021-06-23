<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<%@include file="../login/loginCheck.jsp"%>
<%
String userid=(String)session.getAttribute("userid");
String uname=(String)session.getAttribute("userName");
%>
<script type="text/javascript">
	$(function (){
		
	  $('#submit').click(function(){
		  
		if($'#pwd').val().length<1){
		alert('비밀번호를 입력하세요');
		$('#pwd').focus();
		event.preventDefault();
		}else{
			if(!confirm('회원탈퇴하시겠습니까?')){
				event.preventDefault();
			}
		}
	  });
	});

</script>


<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<body>
<title>회원 탈퇴</title>
</head>
<link rel="stylesheet" href="https://static-breeze.nike.co.kr/kr/ko_kr/css/common_new-2.css?20210623073500">
<body>
<section class="hero-wrap hero-wrap-2"
   style="background-image: url('../images/image01.png'); font-family: 'Jeju Gothic', serif;"
   data-stellar-background-ratio="0.5">
   <div class="overlay"></div>
   <div class="container">
      <div
         class="row no-gutters slider-text align-items-end justify-content-center">
         <div class="col-md-9 ftco-animate mb-5 text-center">
            <p class="breadcrumbs mb-0">
               <span class="mr-2"><a href="index.jsp">Home <i
                     class="fa fa-chevron-right"></i></a></span> <span>마이페이지 <i
                  class="fa fa-chevron-right"></i></span>
            </p>
            <h2 class="mb-0 bread">마이 페이지</h2>
         </div>
      </div>
   </div>
</section>
<!-- 바디  -->
	<section class="wrapper">
			
			<section class="content-area">
				

				<article class="contents width-max">
					<div class="customer-title">
						<h2 class="tit">MY PAGE</h2>
					</div>
				</article>
				<article class="contents width-xlarge">
					<div class="customer-wapper min-height_large">
						
	
		<div class="customer-aside mypage pc-only">
			<div class="customer-name">
				<span class="ns-profile icon-user"></span>
				<span><%=uname %></span>
				
			</div>
			
			
			<div class="lnb">
				 <h2 class="title m_init"><a data-click-area="Mypagenav" data-click-name="my member grade" href="/kr/ko_kr/account/grade">회원등급 현황</a></h2>
			</div>
			<div class="lnb">
				<h2 class="title">쇼핑정보</h2>
				<a class="btn-link sky-blue normal" data-click-area="Mypagenav" data-click-name="Order/Shpping" href="/kr/ko_kr/account/orders">주문 배송<i class="icon-arrow_right right"></i></a>
				<a class="btn-link sky-blue normal" data-click-area="mypagenav" data-click-name="inventory: ROPIS_BOPIS" href="/kr/ko_kr/account/orders/pickupOrders">매장픽업/오시는 길<i class="icon-arrow_right right"></i></a>	
				
			</div>
			<div class="lnb">
				<h2 class="title">활동정보</h2>
				<a class="btn-link sky-blue normal" data-click-area="Mypagenav" data-click-name="Wish list" href="<%=request.getContextPath() %>/order/cart.jsp">장바구니<i class="icon-arrow_right right"></i></a>
				
				<a class="btn-link sky-blue normal" data-click-area="Mypagenav" data-click-name="My MILE" href="/kr/ko_kr/account/customerCredits?customerCreditType=MILEAGE">나의 MiLE<i class="icon-arrow_right right"></i></a>
				
				<a class="btn-link sky-blue normal" data-click-area="Mypagenav" data-click-name="Write Review" href="<%=request.getContextPath()%>/board/reviewBoard.jsp">상품리뷰<i class="icon-arrow_right right"></i></a>
				
			</div>
			<div class="lnb">
				<h2 class="title">나의정보</h2>
				<a class="btn-link sky-blue normal" data-click-area="Mypagenav" data-click-name="Account Settting" href="<%=request.getContextPath()%>/member/memberEdit4.jsp">회원정보 수정<i class="icon-arrow_right right"></i></a>
				<a class="btn-link sky-blue normal" data-click-area="Mypagenav" data-click-name="Withdrawal" href="<%=request.getContextPath()%>/member/memberOut.jsp">회원 탈퇴<i class="icon-arrow_right right"></i></a>
			</div>



			<div class="lnb">
				<h2 class="title">고객센터</h2>
				<a href="<%=request.getContextPath() %>/board/questionBoard.jsp" class="btn-link sky-blue normal" data-click-area="Mypagenav" data-click-name="1:1 chat inquiry" target="_blank">문의 게시판<i class="icon-arrow_right right"></i></a>
				<a href="#" class="btn-link sky-blue normal" data-click-area="Mypagenav" data-click-name="1:1 email inquiry" target="_blank">E-mail 문의<i class="icon-arrow_right right"></i></a>
			</div>
			<div class="lnb">
				<h2 class="title">k-sool 고객센터</h2>
				<p class="phone"><a href="tel:080-022-0182">000-0000-0000</a></p>
				<p class="txt">월~일: 오전 9시 ~ 오후 8시</p>
			</div>
		</div>
	








<!--  -->

						
	    <div class="pt_account customer-contents min-height_large show" width="400px" height="700px">
	        
	        <div class="customer-order">
	            
	            
	            <h2 class="title">
					<span class="label uk-float-left">회원 탈퇴</span>
					
				</h2>
<!--  -->

<!--  -->
<article class="simpleForm">
<form name="frmOut" method="post" action="memberOut_ok.jsp" >
<fieldset> 
<p class="p">회원을 탈퇴하시겠습니까?</p>
<div> <label for="pwd" class="p">비밀번호</label>
<input type="password" name="pwd" id="pwd">
</div>
<div class="align_center">
<br>
<br>
<input type="submit" id="submit" class="btn btn-outline-dark" value="회원탈퇴">
<input type="reset"class="btn btn-outline-dark"  value="취소">
</div>
</fieldset>
</form>
</article>
<%@include file="../inc/bottom.jsp"%>
