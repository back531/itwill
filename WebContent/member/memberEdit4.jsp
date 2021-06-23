<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.mysemi.member.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="com.mysemi.member.model.MemberService"%>
     <%@ include file="../login/loginCheck.jsp" %>
    <%@ include file="../inc/top.jsp"%>
    
    
<jsp:useBean id="memberService" class="com.mysemi.member.model.MemberService"
   scope="session"></jsp:useBean>
<script type="text/javascript" src="../js/member.js"></script>
   <script src="../js/jquery-3.6.0.min.js"></script>
   <script src="../js/bootstrap.min.js"></script>
   

<%
String userid=(String)session.getAttribute("userid");
String uname=(String)session.getAttribute("userName");
MemberVO vo=null;
String email="", hp="", address="",addressDetail=""; 
try{
vo=memberService.selectByUserid(userid);


hp=vo.getHp();
email=vo.getEmail();
address=vo.getAddress();
addressDetail=vo.getAddressDetail();
if(address==null) address="";
if(addressDetail==null) addressDetail="";

}catch(SQLException e){
	e.printStackTrace();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 <style>
 
    .input-form {
      max-width: 680px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
    .ookiku{
    	font-size :10px;
    	
    }
    .w3-input{
    	color: grey;
    }
  </style>


<script type="text/javascript">
   $(function(){
      $('#submit').click(function(){
         if($('#pwwd').val().length<1){
            alert('비밀번호를 입력하세요');
            $('#pwwd').focus();
            event.preventDefault();
         }else if($('#pwwd').val()!=$('#pwwd2').val()){
            alert('비밀번호가 일치하지 않습니다.');
            $('#pwwd2').focus();
            event.preventDefault();            
         }
      });
   });   
   
   
   
</script>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<body>
<title>회원 수정</title>
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
	




						
	    <div class="pt_account customer-contents min-height_large show" width="400px" height="700px">
	        
	        <div class="customer-order">
	            
	            
	            <h2 class="title">
					<span class="label uk-float-left">회원 정보 수정 </span>
					
				</h2>
	 <!--회원수정 정보폼-->			
			<div class="w3-center w3-large w3-margin-top">
			</div>
			<div>
				<form  name="frm1" method="post" action="../member/memberEdit4_ok.jsp" >
					<p>
						<label for ="userid" class="ookiku">ID</label> 
						<input class="w3-input" type="text" id="userid" name="userid" readonly value="<%=userid %>"> 
					
					</p>
					<p>
						<label for ="pwd" class="ookiku">Password</label> 
						<input class="w3-input" type="password" id="pwwd" name="pwwd" value="" required> 
					</p>
					<p>
						<label class="ookiku">Password Confirm</label> 
						<input class="w3-input" type="password" id="pwwd2" name="pwwd2" required> 
					</p>
					<p>
						<label for ="name" class="ookiku">Name</label> 
						<input class="w3-input" type="text" id="name" name="name" readonly  value="<%=uname%>" required> 
					</p>
					<p>
						<label for ="email" class="ookiku">Email</label> 
						<input class="w3-input" type="text" id="emmail" name="emmail" value="<%=email%>" required> 
					</p>
					<p>
						<label for ="hp" class="ookiku">HP</label> 
						<input class="w3-input" type="text" id="hpp" name="hpp" value="<%=hp%>" required> 
					</p>
					<p>
						<label for ="address" class="ookiku">Address</label> 
						<input class="w3-input" type="text" id="addrress" name="addrress" value="<%=address%>" required> 
					</p>
					<p>
						<label for ="addressDetail" class="ookiku">Address Detail</label> 
						<input class="w3-input" type="text" id="addrressDetail" name="addrressDetail" value="<%=addressDetail%>" required> 
					</p>
					<p class="w3-center">
						<button  id="submit" type="submit" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">회원정보 변경</button>
					</p>
				</form>	
				<br />
	
			</div>
		</div>
	</div>
 <!--회원수정 정보폼-->
	            
	         	
	            
	        </div>
	    </div>

	
					</div>
				</article>
			</section>
			
			
				<!--//
filter error fix temporary @pck 
//-->
<style>
.wideArticleView .contents-side {
    -webkit-transform: translateX(-200%);
    transform: translateX(-200%);
    transition: transform 300ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
}
.contents-side {
    -webkit-transform: translateX(0%);
    transform: translateX(0%);
    transition: transform 300ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
}
@media (max-width: 1024px) {
.contents-side {
    -webkit-transform: translateY(200%);
    transform: translateY(200%);
    transition: transform 300ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
}
.wideArticleView .contents-side {
    -webkit-transform: translateY(0%);
    transform: translateY(0%);
    transition: transform 300ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
}
}

/*2021-06-22 review conflict leaked lines*/
.review-write .opt-value-data-wrap .opt-value-data .opt-txt.error {
    color: red;
}
.review-write .opt-value-data-wrap .opt-value-data .opt-txt {
    display: inline-block;
    font-size: 14px;
    line-height: 36px;
    color: #111111;
    vertical-align: top;
    font-weight: bold;
}
.review-write .opt-value-data-wrap .opt-value-data .opt-strip-type-radio .input-radio > label > .label {
    color: #666;
}

/* 2021-06-23 review mobile selectbox width */
@media (max-width: 768px) {
  .review-write .review-writer-info .select-box.review-writer-height-selectbox,
  .review-write .review-writer-info .select-box.review-writer-weight-selectbox {
    width: 120px;
  }
}
</style>


			
		</section>
</body>
</html>






 
<%@ include file="../inc/bottom.jsp"%>