<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<head>
  <meta charset="UTF-8">
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
              <form action="#!">
                  <div class="form-group">
                    <label for="userid" class="sr-only"></label>
                    <input type="email" name="userid" id="email" class="form-control" placeholder="아이디 입력">
                  </div>
                  <div class="form-group mb-4">
                    <label for="password" class="sr-only">Password</label>
                    <input type="password" name="password" id="password" class="form-control" placeholder="***********">
                  </div>
                  <input name="login" id="login" class="btn btn-block login-btn mb-4" type="button" value="Login">
                </form>
                <a href="#!" class="forgot-password-link">Forgot password?</a>
                <p class="login-card-footer-text">계정이 없으신가요? <a href="#!" class="text-reset">회원가입 하기</a></p>
                <nav class="login-card-footer-nav">
                
                  <a href="#!">이용 약관 확인하기</a>
                </nav>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>


