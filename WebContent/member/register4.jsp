<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<script type="text/javascript">
 $(function(){
	 $('#wr_submit').click(function(){
         if($('#name').val().length<1){
            alert('이름을 입력하세요');
            $('#name').focus();
            event.preventDefault();
         }else if($('#pwd').val().length<1){
             alert('비밀번호를 입력하세요');
             $('#pwd').focus();
             event.preventDefault();
          }else if($('#pwd').val()!=$('#pwd2').val()){
             alert('비밀번호가 일치하지 않습니다.');
             $('#pwd2').focus();
             event.preventDefault();        
          }else if($('#chkId').val()!='Y'){
              alert('중복확인 필수 입니다.');
              $('#btnChkId').focus();
              event.preventDefault();                  
           }         
        });
	 $('#btnChkId').click(function(){
	     var userid=$('#userid').val();
	     
	     open('checkUserid.jsp?userid='+userid,'chk',
	           'width=350,height=200,left=30,top=30,location=yes,resizable=yes');
	   
	    
	  });
});
 </script>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원가입 화면</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <style>

 @font-face{
 	font-family:'Cafe24SsurroundAir';
 	src:url('../font/Cafe24SsurroundAir.ttf')
 }
 
 body{
 	font-family:Cafe24SsurroundAir;
 }

    body {
      min-height: 100vh;

      
    }

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
  </style>


</head>

<body>
  <div class="container">
    <div class="input-form-backgroud row" >
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">회원가입</h4>
        <form class="validation-form" novalidate name="frm1" method="post" action="register4_ok.jsp">
          <div class="row">
            <div class="col-md-8 mb-3">
              <label for="userid">아이디</label>
              <input type="text" class="form-control" name="userid" id="userid" placeholder="" style="ime-mode:inactive">
              <div class="invalid-feedback">
                아이디를 입력해주세요.
              </div>
            </div>
            <div class="col-md-4 mb-3">
         	<div>&nbsp;</div>
         	  <input type="button" class="btn btn-outline-secondary" value="중복확인" id="btnChkId" title="새창열림">
              <div class="invalid-feedback">
               	중복확인해주세요.
              </div>
            </div>
          </div>
          
                  <div class="row">
            <div class="col-md-6 mb-3">
              <label for="pwd">비밀번호</label>
              <input type="password" class="form-control" id="pwd" name="pwd"  placeholder="" value="" >
              <div class="invalid-feedback">
                비밀번호를 입력해주세요.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="pwd2">비밀번호 확인</label>
              <input type="password" class="form-control" id="pwd2" name="pwd2" placeholder="" value="" >
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
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="aggrement" required>
            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
          </div>
          <div class="mb-4"></div>
          <button class="btn btn-primary btn-lg btn-block"  type="submit" id="wr_submit">join us</button>
        
         <input type ="text" name="chkId" id="chkId">
        </form>
      </div>
    </div>
    <footer class="my-3 text-center text-small">
      <p class="mb-1">&copy; 2021 k-sool</p>
    </footer>
  </div>

</body>

