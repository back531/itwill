<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	String t_userid=(String)session.getAttribute("userid");
	boolean t_login=false;
	if(t_userid!=null && !t_userid.isEmpty()){ //세션에 값이 있으면
		t_login=true;  //로그인 된 경우
	}
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
						<a href="<"#">마이 페이지</a>
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
                  </div></li>					<li class="nav-item dropdown"><a
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
   
        <form class="validation-form" novalidate name="frm1" method="post" action="register4_ok.jsp">
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
          <div >
            <input type="checkbox"  id="aggrement" required>
            <label  for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
          </div>
          <div class="mb-4"></div>
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
           }         
        });
	 $('#btnChkId').click(function(){
	     var userid=$('#xuserid').val();
	     
	     open('<%=request.getContextPath()%>/member/checkUserid.jsp?userid='+userid,'chk',
	           'width=350,height=200,left=30,top=30,location=yes,resizable=yes');
	   
	    
	  });
});
 </script>
		