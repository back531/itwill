<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>K-Sool</title>
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
   href="https://fonts.googleapis.com/css2?family=Spectral:ital,wght@0,200;0,300;0,400;0,500;0,700;0,800;1,200;1,300;1,400;1,500;1,700&display=swap"
   rel="stylesheet">
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/animate.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/owl.carousel.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/owl.theme.default.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/magnific-popup.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/flaticon.css">

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
                     <a href="#" class="mr-2">회원가입</a> <a href="#">로그인</a>
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
         <a class="navbar-brand" href="index.html">K-<span>Sool</span></a>
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
                  <div class="img" style="background-image: url(<%=request.getContextPath()%>images/prod-1.jpg);"></div>
                  <div class="text pl-3">
                     <h4>Bacardi 151</h4>
                     <p class="mb-0">
                        <a href="#" class="price">$25.99</a><span class="quantity ml-3">Quantity:
                           01</span>
                     </p>
                  </div>
               </div>
               <div class="dropdown-item d-flex align-items-start" href="#">
                  <div class="img" style="background-image: url(<%=request.getContextPath()%>images/prod-2.jpg);"></div>
                  <div class="text pl-3">
                     <h4>Jim Beam Kentucky Straight</h4>
                     <p class="mb-0">
                        <a href="#" class="price">$30.89</a><span class="quantity ml-3">Quantity:
                           02</span>
                     </p>
                  </div>
               </div>
               <div class="dropdown-item d-flex align-items-start" href="#">
                  <div class="img" style="background-image: url(<%=request.getContextPath()%>images/prod-3.jpg);"></div>
                  <div class="text pl-3">
                     <h4>Citadelle</h4>
                     <p class="mb-0">
                        <a href="#" class="price">$22.50</a><span class="quantity ml-3">Quantity:
                           01</span>
                     </p>
                  </div>
               </div>
               <a class="dropdown-item text-center btn-link d-block w-100"
                  href="cart.html"> View All <span
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
               <li class="nav-item"><a href="blog.html" class="nav-link">공지사항</a></li>
               <li class="nav-item"><a href="about.html" class="nav-link">구독하기</a></li>
               <li class="nav-item dropdown"><a
                  class="nav-link dropdown-toggle" href="#" id="dropdown04"
                  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">상품</a>
                  <div class="dropdown-menu" aria-labelledby="dropdown04">
                     <a class="dropdown-item" href="<%=request.getContextPath() %>/product1.jsp">전체상품</a> <a
                        class="dropdown-item" href="<%=request.getContextPath() %>/product2.jsp">전통주</a> <a
                        class="dropdown-item" href="<%=request.getContextPath() %>/product3.jsp">막걸리</a> <a
                        class="dropdown-item" href="<%=request.getContextPath() %>/product4.jsp">증류주</a>
                  </div></li>
               <li class="nav-item dropdown"><a
                  class="nav-link dropdown-toggle" href="#" id="dropdown04"
                  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">게시판</a>
                  <div class="dropdown-menu" aria-labelledby="dropdown04">
                     <a class="dropdown-item" href="product.html">문의 게시판</a> <a
                        class="dropdown-item" href="product.html">후기 게시판</a>
                  </div></li>
            </ul>
         </div>
      </div>
   </nav>
   <section>
   <!-- END nav -->