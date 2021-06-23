<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   
<%
   String t_userid=(String)session.getAttribute("userid");
   boolean t_login=false;
   if(t_userid!=null && !t_userid.isEmpty()){ //세션에 값이 있으면
      t_login=true;  //로그인 된 경우
   }
   
   String admin = "admin";
%>   

 <%
   Cookie[] ckArr=request.getCookies();
   String ck_value="";
   if(ckArr!=null){
      for(int i=0;i<ckArr.length;i++){
         String name=ckArr[i].getName();
         if(name.equals("ck_userid")){
            ck_value=ckArr[i].getValue();
            break;
         }
      }//for
   }
%>


<!DOCTYPE html>
<html lang="en">
<head>
<title>K-Sool</title>
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
   href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,600">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
   integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
   crossorigin="anonymous">
<link rel="stylesheet"
   href="https://use.fontawesome.com/releases/v5.0.6/css/all.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link
   href="https://fonts.googleapis.com/css2?family=Spectral:ital,wght@0,200;0,300;0,400;0,500;0,700;0,800;1,200;1,300;1,400;1,500;1,700&display=swap"
   rel="stylesheet">
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script
   src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
   integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
   crossorigin="anonymous"></script>
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
   integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
   crossorigin="anonymous"></script>
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
   crossorigin="anonymous">
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
   integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
   crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css"
   href="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/codemirror.css">
<link rel="stylesheet" type="text/css"
   href="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/theme/monokai.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"
   crossorigin="anonymous"></script>
<script
   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
   integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
   crossorigin="anonymous"></script>

<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
   integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
   crossorigin="anonymous">
<script
   src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
   integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
   crossorigin="anonymous"></script>

<link
   href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css"
   rel="stylesheet">
<script
   src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/css/style.css">
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/css/animate.css">
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/css/owl.carousel.min.css">
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/css/owl.theme.default.min.css">
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/css/magnific-popup.css">
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/css/flaticon.css">
   
   <script src="../js/jquery-3.6.0.min.js"></script>
   <script src="../js/bootstrap.min.js"></script>
   


<script type="text/javascript">
   $(document).ready(function() {
      var floatPosition = parseInt($("#floatMenu").css('top'));

      $(window).scroll(function() {
         var scrollTop = $(window).scrollTop();
         var newPosition = scrollTop + floatPosition + "px";
         
         $("#floatMenu").stop().animate({
            "top" : newPosition
         }, 500); 

      }).scroll();
   });

   
    $(function() {
        $(window).scroll(function() {
            if ($(this).scrollTop() > 300) {
                $('#MOVE_TOP_BTN').fadeIn();
            } else {
                $('#MOVE_TOP_BTN').fadeOut();
            }
        });
        
        $("#MOVE_TOP_BTN").click(function() {
            $('html, body').animate({
                scrollTop : 0
            }, 500);
            return false;
        });
    });
    
</script> 
<Script type="text/javascript">
   $(function(){
      $('#login').click(function(){
               if($('#userid').val().length<1){
                  alert('아이디 입력하세요');
                  $('#userid').focus();
                  event.preventDefault();
               }else if($('#pwd').val().length<1){
                   alert('비밀번호를 입력하세요');
                   $('#pwd').focus();
                   event.preventDefault();
               }
      });
   });
</script>

</head>
<body>

   <div class="wrap">
      <div class="container">
         <div class="row">
            <div class="col-md-6 d-flex align-items-center">
               <p class="mb-0 phone pl-md-2">
                  <a href="#" class="mr-2"><span class="fa fa-phone mr-1"></span>
                     +00 1234 567</a> <a href="#"><span class="fa fa-paper-plane mr-1"></span>
                     youremail@email.com</a>
               </p>
            </div>
            <div class="col-md-6 d-flex justify-content-md-end">
               <div class="social-media mr-4">
                  <p class="mb-0 d-flex">
                     <a href="#"
                        class="d-flex align-items-center justify-content-center"><span
                        class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a> <a
                        href="#"
                        class="d-flex align-items-center justify-content-center"><span
                        class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a> <a
                        href="#"
                        class="d-flex align-items-center justify-content-center"><span
                        class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
                     <a href="#"
                        class="d-flex align-items-center justify-content-center"><span
                        class="fa fa-dribbble"><i class="sr-only">Dribbble</i></span></a>
                  </p>
               </div>
               <div class="reg">
                  <p class="mb-0">
            <%if(!t_login){ %>               
                    <a data-toggle="modal" href="#exampleModal">로그인</a>
                  <a data-toggle="modal" href="#regimodal">회원가입</a>  
               <%}else{ %>
                  <a href="<%=request.getContextPath()%>/login/logout.jsp">로그아웃</a>
                  <a href="<%=request.getContextPath() %>/member/mypage.jsp">마이 페이지</a>
               <%} %>
                  </p>
               </div>
            </div>
         </div>
      </div>
   </div>

   <nav
      class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
      id="ftco-navbar">
      <div class="container" style="width: 1700px">
         <a class="navbar-brand"
            href="<%=request.getContextPath()%>/index.jsp">K-<span>Sool</span></a>
         <div class="order-lg-last btn-group">
            <a href="#" class="btn-cart dropdown-toggle dropdown-toggle-split"
               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
               <span class="flaticon-shopping-bag"></span>
               <div class="d-flex justify-content-center align-items-center">
                  <small>3</small>
               </div>
            </a>
            <div class="dropdown-menu dropdown-menu-right">
               <div class="dropdown-item d-flex align-items-start" href="#">
                  <div class="img"
                     style="background-image: url(<%=request.getContextPath()%>images/prod-1.jpg);">
                     
                     </div>
                  <div class="text pl-3">
                     <h4>Bacardi 151</h4>
                     <p class="mb-0">
                        <a href="#" class="price">$25.99</a><span class="quantity ml-3">Quantity:
                           01</span>
                     </p>
                  </div>
               </div>
               <div class="dropdown-item d-flex align-items-start" href="#">
                  <div class="img"
                     style="background-image: url(<%=request.getContextPath()%>images/prod-2.jpg);"></div>
                  <div class="text pl-3">
                     <h4>Jim Beam Kentucky Straight</h4>
                     <p class="mb-0">
                        <a href="#" class="price">$30.89</a><span class="quantity ml-3">Quantity:
                           02</span>
                     </p>
                  </div>
               </div>
               <div class="dropdown-item d-flex align-items-start" href="#">
                  <div class="img"
                     style="background-image: url(<%=request.getContextPath()%>images/prod-3.jpg);"></div>
                  <div class="text pl-3">
                     <h4>Citadelle</h4>
                     <p class="mb-0">
                        <a href="#" class="price">$22.50</a><span class="quantity ml-3">Quantity:
                           01</span>
                     </p>
                  </div>
               </div>
               <a class="dropdown-item text-center btn-link d-block w-100"
                  href="<%=request.getContextPath()%>/order/cart.jsp"> View All <span
                  class="ion-ios-arrow-round-forward"></span>
               </a>
            </div>
         </div>

         <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#ftco-nav" aria-controls="ftco-nav"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
         </button>

         <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
               <li class="nav-item"><a
                  href="<%=request.getContextPath()%>/board/Notice.jsp"
                  class="nav-link">공지사항</a></li>
               <li class="nav-item"><a href="<%=request.getContextPath()%>/order/subscribeInfo.jsp" class="nav-link">구독하기</a></li>
               <li class="nav-item dropdown"><a
                  class="nav-link dropdown-toggle" href="#" id="dropdown04"
                  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">상품</a>
                  <div class="dropdown-menu" aria-labelledby="dropdown04">
                     <a class="dropdown-item"
                        href="<%=request.getContextPath()%>/Product/Productlist.jsp">전체상품</a> <a
                        class="dropdown-item"
                        href="<%=request.getContextPath()%>/Product/ProductlistA.jsp">전통주</a> <a
                        class="dropdown-item"
                        href="<%=request.getContextPath()%>/Product/ProductlistM.jsp">막걸리</a> <a
                        class="dropdown-item"
                        href="<%=request.getContextPath()%>/Product/ProductlistZ.jsp">증류주</a>
                        <%if(admin.equals(session.getAttribute("userid"))){ %>
                        <a
	                        class="dropdown-item"
	                        href="<%=request.getContextPath()%>/Product/ProducRegister.jsp">상품등록</a>
                        <%} %>
                  </div></li>               <li class="nav-item dropdown"><a
                  class="nav-link dropdown-toggle" href="#" id="dropdown04"
                  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">게시판</a>
                  <div class="dropdown-menu" aria-labelledby="dropdown04">
                     <a class="dropdown-item"
                        href="<%=request.getContextPath()%>/board/questionBoard.jsp">문의
                        게시판</a> <a class="dropdown-item"
                        href="<%=request.getContextPath()%>/board/reviewBoard.jsp">후기
                        게시판</a>
                  </div></li>
            </ul>
         </div>
      </div>
   </nav>         
   <section>
      <!-- END nav -->
      

      
   <!-- 로그인 모달시작 -->
         <div class="modal fade" id="exampleModal" tabindex="1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="font-family: 'Cafe24SsurroundAir';">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <div class="container">
      <div class="row">
        <div class="page-header">
        </div>
        <div class="box">
          <div class="login-box well">
        <form name="frmLogin" method="post" action="<%=request.getContextPath() %>/login/login_ok.jsp">
            <legend>로그인</legend>
            <div class="form-group">
                <label for="userid" >아이디</label>
                <input name="userid" id="userid" placeholder="UserId" type="text" class="form-control" value="<%=ck_value%>"/>
            </div>
            <div class="form-group">
                <label for="password">비밀번호</label>
                <input name="pwd" id="pwd"  placeholder="Password" type="password" class="form-control" />
            </div>
            <input type="checkbox" name="chkSave" id="chkSave"
               <%if(ck_value!=null && !ck_value.isEmpty()){ %>
                  checked="checked"
               <%} %>
            >
         
         <label for="chkSave">아이디 저장하기</label>
           <!--  <span class='text-center'><a href="/bbs/index.php?mid=index&act=dispMemberFindAccount" class="text-sm">비밀번호 찾기</a></span> -->
            <div class="form-group">
            <a href="<%=request.getContextPath()%>/member/register4.jsp" class="btn btn-default btn-block m-t-md">회원가입</a>
            </div>
       
          </div>
        </div>
      </div>
    </div>
      </div>
      <div class="modal-footer">
        <input type="submit" id="login" name="login" class="btn btn-danger btn-block" value="Login" />
      </div>
       </form>
    </div>
    
  </div>
</div>
<!-- 모달끝 -->

<!-- 회원가입 모달시작 -->
<div class="modal fade" id="regimodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="font-family: 'Cafe24SsurroundAir';">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">회원가입</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
   <div class="input-form-backgroud row" >
      <div class="input-form col-md-12 mx-auto">
   
        <form class="validation-form" novalidate name="frm1" method="post" action="<%=request.getContextPath() %>/member/register4_ok.jsp">
          <div class="row">
            <div class="col-md-8 mb-3">
              <label for="userid">아이디</label>
              <input type="text" class="form-control" name="userid" id="xuserid" placeholder="" style="ime-mode:inactive">
              <div class="invalid-feedback">
                아이디를 입력해주세요.
              </div>
            </div>
            <div class="col-md-4 mb-3">
            <div>&nbsp;<br></div>
              <input type="button" value="중복확인" id="btnChkId" class="btn btn-outline-secondary" title="새창열림">
              <div class="invalid-feedback">
                  중복확인해주세요.
              </div>
            </div>
          </div>
          
                  <div class="row">
            <div class="col-md-6 mb-3">
              <label for="pwd">비밀번호</label>
              <input type="password" class="form-control" id="xpwd" name="pwd"  placeholder="" value="" >
              <div class="invalid-feedback">
                비밀번호를 입력해주세요.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="pwd2">비밀번호 확인</label>
              <input type="password" class="form-control" id="xpwd2" name="pwd2" placeholder="" value="" >
              <div class="invalid-feedback">
                  비밀번호 중복 확인을 입력해주세요.
              </div>
            </div>
          </div>
                   
              <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">이름</label>
              <input type="text" class="form-control" id="name"  name="name" placeholder="" value="" >
              <div class="invalid-feedback">
                  이름을 입력해주세요.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="hp">전화번호</label>
              <input type="text" class="form-control" id="hp"  name="hp" placeholder="-빼고 입력해주세요" value="" >
              <div class="invalid-feedback">
                  전화번호를 입력해주세요.
              </div>
            </div>
          </div>
         
          <div class="mb-3">
            <label for="email">이메일</label>
            <input type="email" class="form-control" id="email"  name="email" placeholder="you@example.com" required>
            <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>
          </div>

          <div class="mb-3">
            <label for="address">주소</label>
            <input type="text" class="form-control" id="address"  name="address" placeholder="서울특별시 강남구" required>
            <div class="invalid-feedback">
              주소를 입력해주세요.
            </div>
          </div>

          <div class="mb-3">
            <label for="addressDetail">상세주소<span class="text-muted">&nbsp;(필수 아님)</span></label>
            <input type="text" class="form-control" id="addressDetail"  name="addressDetail" placeholder="상세주소를 입력해주세요.">
          </div>
       <hr class="mb-4">
          <div class="mb-4" >
            <input type="checkbox"  id="aggrement2" required>
             <a data-toggle="modal" href="#aggrement2Modal">이용약관에 동의합니다.</a>
         <br>
            <input type="checkbox"  id="aggrement" required>
            <a data-toggle="modal" href="#aggrementModal">개인정보 수집 및 이용에 동의합니다.</a>
 
         </div>
          <button class="btn btn-danger btn-block"  type="submit" id="wr_submit">join us</button>
        
         <input type ="hidden" name="chkId" id="chkId">
        </form>
      </div>
    </div>
    <footer class="my-3 text-center text-small">
      <p class="mb-1">&copy; 2021 k-sool</p>
    </footer>
  </div>
    </div>
  </div>
      </div>

<!-- 모달끝 -->
<!-- 이용약관 모달 -->
 <div class="modal fade" id="aggrement2Modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true" style="font-family: 'Cafe24SsurroundAir';">
  <div class="modal-dialog modal-dialog-scrollable" role="document">
    <div class="modal-content" >
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalScrollableTitle">이용 약관</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <pre style="font-family: 'Cafe24SsurroundAir';">
        인터넷 쇼핑몰 『테스트쇼핑몰』회원 약관

제1조(목적)
이 약관은 (주)k-sool (전자상거래 사업자)가 운영하는 k-sool(이하 "몰"이라 한다)에서 제공하는 인터넷 관련 서비스(이하 "서비스"라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리·의무 및 책임사항을 규정함을 목적으로 합니다.

 「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다」

제2조(정의)
①"몰" 이란 (주)테스트닷컴 회사가 재화 또는 용역(이하 "재화등"이라 함)을 이용자에게 제공하기 위하여 컴퓨터등 정보통신설비를 이용하여 재화등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.

②"이용자"란 "몰"에 접속하여 이 약관에 따라 "몰"이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.

③ '회원'이라 함은 "몰"에 개인정보를 제공하여 회원등록을 한 자로서, "몰"의 정보를 지속적으로 제공받으며, "몰"이 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.

④ '비회원'이라 함은 회원에 가입하지 않고 "몰"이 제공하는 서비스를 이용하는 자를 말합니다.

제3조 (약관등의 명시와 설명 및 개정) 
① "몰"은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호·모사전송번호·전자우편주소, 사업자등록번호, 통신판매업신고번호, 개인정보관리책임자등을 이용자가 쉽게 알 수 있도록 테스트샵 사이버몰의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.

② "몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회·배송책임·
환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등
을 제공하여 이용자의 확인을 구하여야 합니다.

③ "몰"은 전자상거래등에서의소비자보호에관한법률, 약관의규제에관한법률, 전자거래기본법, 전자
서명법, 정보통신망이용촉진등에관한법률, 방문판매등에관한법률, 소비자보호법 등 관련법을 위배하
지 않는 범위에서 이 약관을 개정할 수 있습니다.

④ "몰"이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기
화면에 그 적용일자 7일이전부터 적용일자 전일까지 공지합니다.
다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두
고 공지합니다. 이 경우 "몰"은 개정전 내용과 개정후 내용을 명확하게 비교하여 이용자가 알기 쉽
도록 표시합니다. 

⑤ "몰"이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되
고 그 이전에 이미 체결된 계약에 대해서는 개정전의 약관조항이 그대로 적용됩니다. 다만 이미 계
약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지
기간내에 '몰"에 송신하여 "몰"의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.

⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래등에서의소비자보호
에관한법률, 약관의규제등에관한법률, 공정거래위원회가 정하는 전자상거래등에서의소비자보호지침 
및 관계법령 또는 상관례에 따릅니다.

제4조(서비스의 제공 및 변경) 
① "몰"은 다음과 같은 업무를 수행합니다.
1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결
2. 구매계약이 체결된 재화 또는 용역의 배송
3. 기타 "몰"이 정하는 업무

②"몰"은 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 
의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 
내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다.

③"몰"이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화등의 품절 또는 기술적 사양의 
변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시 통지합니다.

④전항의 경우 "몰"은 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, "몰"이 고의 또는 과
실이 없음을 입증하는 경우에는 그러하지 아니합니다.

제5조(서비스의 중단) 
① "몰"은 컴퓨터 등 정보통신설비의 보수점검·교체 및 고장, 통신의 두절 등의 사유가 발생한 경
우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.

②"몰"은 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입
은 손해에 대하여 배상합니다. 단, "몰"이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 
아니합니다.

③사업종목의 전환, 사업의 포기, 업체간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우
에는 "몰"은 제8조에 정한 방법으로 이용자에게 통지하고 당초 "몰"에서 제시한 조건에 따라 소비
자에게 보상합니다. 다만, "몰"이 보상기준 등을 고지하지 아니한 경우에는 이용자들의 마일리지 
또는 적립금 등을 "몰"에서 통용되는 통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합
니다.

제6조(회원가입) 
① 이용자는 "몰"이 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시
를 함으로서 회원가입을 신청합니다.

② "몰"은 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각호에 해당하지 않는 한 
회원으로 등록합니다.
1. 가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제
7조제3항에 의한 회원자격 상실후 3년이 경과한 자로서 "몰"의 회원재가입 승낙을 얻은 경우에는 
예외로 한다.
2. 등록 내용에 허위, 기재누락, 오기가 있는 경우
3. 기타 회원으로 등록하는 것이 "몰"의 기술상 현저히 지장이 있다고 판단되는 경우

③ 회원가입계약의 성립시기는 "몰"의 승낙이 회원에게 도달한 시점으로 합니다.

④ 회원은 제15조제1항에 의한 등록사항에 변경이 있는 경우, 즉시 전자우편 기타 방법으로 "몰"에 
대하여 그 변경사항을 알려야 합니다.

제7조(회원 탈퇴 및 자격 상실 등) 
① 회원은 "몰"에 언제든지 탈퇴를 요청할 수 있으며 "몰"은 즉시 회원탈퇴를 처리합니다.

② 회원이 다음 각호의 사유에 해당하는 경우, "몰"은 회원자격을 제한 및 정지시킬 수 있습니다.
1. 가입 신청시에 허위 내용을 등록한 경우
2. "몰"을 이용하여 구입한 재화등의 대금, 기타 "몰"이용에 관련하여 회원이 부담하는 채무를 기
일에 지급하지 않는 경우
3. 다른 사람의 "몰" 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우
4. "몰"을 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우

③ "몰"이 회원 자격을 제한·정지 시킨후, 동일한 행위가 2회이상 반복되거나 30일이내에 그 사유
가 시정되지 아니하는 경우 "몰"은 회원자격을 상실시킬 수 있습니다.

④ "몰"이 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하
고, 회원등록 말소전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.

제8조(회원에 대한 통지)
① "몰"이 회원에 대한 통지를 하는 경우, 회원이 "몰"과 미리 약정하여 지정한 전자우편 주소로 
할 수 있습니다.

② "몰"은 불특정다수 회원에 대한 통지의 경우 1주일이상 "몰" 게시판에 게시함으로서 개별 통지
에 갈음할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 
개별통지를 합니다.

제9조(구매신청)
"몰"이용자는 "몰"상에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며, "몰"은 이용자가 
구매신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다.  단, 회원인 경우 제2호 
내지 제4호의 적용을 제외할 수 있습니다.
1. 재화등의 검색 및 선택
2. 성명, 주소, 전화번호, 전자우편주소(또는 이동전화번호) 등의 입력
3. 약관내용, 청약철회권이 제한되는 서비스, 배송료·설치비 등의 비용부담과 관련한 내용에 대한 
확인
4. 이 약관에 동의하고 위 3.호의 사항을 확인하거나 거부하는 표시(예, 마우스 클릭)
5. 재화등의 구매신청 및 이에 관한 확인 또는 "몰"의 확인에 대한 동의
6. 결제방법의 선택


본 약관은 2014년 [7월 1일]부터 시행합니다. 
</pre>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger btn-block" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<!-- 모달끝 -->
<!-- 개인정보 모달 -->
<div class="modal fade" id="aggrementModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true" style="font-family: 'Cafe24SsurroundAir';">
  <div class="modal-dialog modal-dialog-scrollable" role="document">
    <div class="modal-content" >
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalScrollableTitle">개인정보 수집 및 이용 동의</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <pre style="font-family: 'Cafe24SsurroundAir';">
'00000'는 (이하 ‘회사’는) 고객님의 개인정보를 중요시하며, “정보통신망 이용촉진 및 정보보호”에 관한 법률을 준수하고 있습니다.
회사는 개인정보취급방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.
회사는 개인정보취급방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.

1. 수집하는 개인정보 항목
2. 개인정보의 수집 및 이용목적
3. 개인정보의 보유 및 이용기간
4. 개인정보의 파기절차 및 방법
5. 개인정보 제공
6. 수집한 개인정보의 위탁
7. 이용자 및 법정대리인의 권리와 그 행사방법
8. 개인정보 자동 수집 장치의 설치, 운영 및 그 거부에 관한 사항
9. 개인정보에 관한 민원서비스

1. 수집하는 개인정보 항목
회사는 상담, 서비스 신청 등등을 위해 아래와 같은 개인정보를 수집하고 있습니다.
- 수집항목 : 이름, 나이, 성별, 몸무게 - 상담 참여시 : 이름, 나이, 성별, 연락처, 궁금증& 문의사항 - 개인정보 수집방법 : 상담신청, 이벤트 참여

2. 개인정보의 수집 및 이용목적 회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.
- 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 상담, 요금정산, 구매 및 요금결제, 물품배송 또는 청구지 등 발송

3. 개인정보의 보유 및 이용기간 원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 예외없이 해당 정보를 지체 없이 파기합니다. 단, 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 아래와 같이 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다.
- 보존 항목 : 이름, 나이, 자택전화번호, 휴대전화번호 - 보존 근거 : 전자상거래등에서의 소비자보호에 관한 법률
- 보존 기간 : 5년 - 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년 (전자상거래등에서의 소비자보호에 관한 법률)
- 상담 참여시 : 이벤트 페이지에 별도 명시한 수집 동의받은 날로부터 동의받은 기간 동안 보관

4. 개인정보의 파기절차 및 방법 회사는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.
- 파기절차 고객님이 상담신청 등을 위해 입력하신 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기되어집니다.
- 파기방법 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.

5. 개인정보 제공 회사는 이용자의 개인정보를 원칙적으로 외부에 제공하지 않습니다. 다만, 아래의 경우에는 에외로 합니다.
- 이용자들이 사전에 동의한 경우 - 법령의 규정에 희거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우

6. 수집한 개인정보의 위탁 회사는 고객님의 동의없이 고객님의 정보를 외부 업체에 위탁하지 않습니다.
향후 그러한 필요가 생길 경우, 위탁 대상자와 위탁 업무 내용에 대해 고객님에게 통지하고 필요한 경우 사전 동의를 받도록 하겠습니다.

7. 이용자 및 법정대리인의 권리와 그 행사방법 귀하가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다.

8. 개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항 쿠키 등 인터넷 서비스 이용 시 자동 생성되는 개인정보를 수집하는 장치를 운영하지 않습니다.

9. 개인정보에 관한 민원서비스 회사는 고객의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 관련 부서 및 개인정보관리책임자를 지정하고 있습니다.
귀하께서는 회사의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 혹은 담당부서로 신고하실 수 있습니다.
회사는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.

- 개인정보관리책임자 성명 : 0000
- 전화번호 : 02-0000-0000
- 이메일 : 0000000@naver.com

기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.

1. 개인분쟁조정위원회 (www.1336.or.kr/1336)
2. 정보보호마크인증위원회 (www.eprivacy.or.kr/02-580-0533~4)
3. 대검찰청 인터넷범죄수사센터 (http://icic.sppo.go.kr/02-3480-3600)
4. 경찰청 사이버테러대응센터 (www.ctrc.go.kr/02-392-0330)
</pre>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger btn-block" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>



<!-- 모달끝 -->
<script type="text/javascript">
 $(function(){
    $('#wr_submit').click(function(){
         if($('#name').val().length<1){
            alert('이름을 입력하세요');
            $('#name').focus();
            event.preventDefault();
         }else if($('#xpwd').val().length<1){
             alert('비밀번호를 입력하세요');
             $('#xpwd').focus();
             event.preventDefault();
          }else if($('#xpwd').val()!=$('#xpwd2').val()){
             alert('비밀번호가 일치하지 않습니다.');
             $('#xpwd2').focus();
             event.preventDefault();        
          }else if($('#chkId').val()!='Y'){
              alert('중복확인 필수 입니다.');
              $('#btnChkId').focus();
              event.preventDefault();   
          }else if ($('#aggrement2').is (":checked")==false ) {
             alert('이용약관 동의 해주세요.');
             $('#aggrement2').focus();
             event.preventDefault();  
           }else if ($('#aggrement').is (":checked")==false ) {
              alert('개인정보 동의 해주세요.');
              $('#aggrement').focus();
              event.preventDefault();  
           }     
        });
    $('#btnChkId').click(function(){
        var userid=$('#xuserid').val();
        
        open('<%=request.getContextPath()%>/member/checkUserid.jsp?userid='+userid,'chk',
              'width=450,height=300,left=30,top=30,location=yes,resizable=yes');
      
       
     });
});
 </script>
      