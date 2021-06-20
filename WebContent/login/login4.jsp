<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Login </title>
    <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/css/login.css">
  	
</head>
 <style>
 @font-face{
 	font-family:'Cafe24SsurroundAir';
 	src:url('../font/Cafe24SsurroundAir.ttf')
 }
 
 body{
 	font-family:Cafe24SsurroundAir;
 }
 </style>
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
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<Script type="text/javascript">
	$(function(){
		$('#lg_submit').click(function(){
			$('.sr-only').each(function(idx, item){
				if($(this).val().length<1){
					$(this).next().show();
					event.preventDefault();
					$(item).focus();
				}else{
					$(this).next().hide();					
				}
			});
		});
	});
</Script>
<body>
  <main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
    <div class="container">
      <div class="card login-card">
        <div class="row no-gutters">
          <div class="col-md-5">
            <img src="../images/coc.jpg" alt="login" class="login-card-img" width="400px"  height="350px">
            <p class="text-white font-weight-medium text-center flex-grow align-self-end footer-link text-small">
              Free <a href="https://www.bootstrapdash.com/" target="_blank" class="text-white">Bootstrap dashboard templates</a> from Bootstrapdash
            </p>
          </div>
          <div class="col-md-7">
            <div class="card-body">
              <div class="brand-wrapper">
                <br>
              </div>
              <p class="login-card-description">계정을 입력하세요</p>
              <form name="frmLogin" method="post"	action="login_ok.jsp">
                  <div class="form-group">
                    <label for="userid" class="sr-only"></label>
                    <input type="userid" name="userid" id="userid" class="form-control" placeholder="아이디 입력" value="<%=ck_value%>">
                  </div>
                  <div class="form-group mb-4">
                    <label for="pwd" class="sr-only">Password</label>
                    <input type="password" name="pwd" id="pwd" class="form-control" placeholder="***********">
                  </div>
      
                  <input name="login" id="lg_submit" class="btn btn-block login-btn mb-4" type="submit" value="Login">
                  		<input type="checkbox" name="chkSave" id="chkSave"
					<%if(ck_value!=null && !ck_value.isEmpty()){ %>
						checked="checked"
					<%} %>
				>
			
				<label for="chkSave">아이디 저장하기</label>
                </form>
                <a href="#!" class="forgot-password-link">Forgot password?</a>
                <p class="login-card-footer-text">계정이 없으신가요? <a href="../member/register4.jsp" class="text-reset">회원가입 하기</a></p>
                <nav class="login-card-footer-nav">
                
                  <a href="#!">이용 약관 확인하기</a>
                </nav>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
</body>
</html>
 

