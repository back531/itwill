<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
#icon {
	font-size: 40px;
	color: gray;
}

h3 {
	color: #b7472a;
	font-weight: bold;
}
</style>
</section>
<footer
	style="background-color: black; font-size: large; font-family:'Jeju Gothic', serif;">
	<section style="margin-left: 300px; margin-right: 300px;">
		<br>
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-lg-4 footer-about wow fadeInUp">
						<h3>
							<a class="navbar-brand"
								href="<%=request.getContextPath() %>/index.jsp">K-<span>Sool</span></a>
						</h3>
						<p>저희는 항상 새롭고 창의적인 술을 찾고 고객분들께 품질 좋은 술을 제공하는 회사입니다.</p>
					</div>
					<div
						class="col-md-4 col-lg-3 footer-social wow fadeInUp text-center">
						<h3>Follow us</h3>
						<p>

							<a href="#" id="icon"><i class="fab fa-facebook"></i></a> <a
								href="#" id="icon"><i class="fab fa-google-plus-g"></i></a> <a
								href="#" id="icon"><i class="fab fa-instagram"></i></a> <a
								href="#" id="icon"><i class="fab fa-pinterest"></i></a>
						</p>
					</div>
					<div
						class="col-md-4 col-lg-4 offset-lg-1 footer-contact wow fadeInDown">
						<h3>Contact</h3>
						<p>
							<i class="fas fa-map-marker-alt"></i> 서울 강남구 테헤란로 124 삼원타워 4층
						</p>
						<p>
							<i class="fas fa-phone"></i> Phone: (000) 000-0000
						</p>
						<p>
							<i class="fas fa-envelope"></i> Email: <a
								href="mailto:hello@domain.com">KSool@domain.com</a>
						</p>
						<p>
							<i class="fab fa-skype"></i> Skype: KSool_Online
						</p>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-5 footer-copyright">
						<p>
							&copy; copyright K-Sool Company</a>
						</p>
					</div>
					<div class="col-md-7 footer-menu">
						<nav class="navbar navbar-dark navbar-expand-md">
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#navbarNav"
								aria-controls="navbarNav" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</section>
</footer>



</script>
<!-- loader -->
<div id="ftco-loader" class="show fullscreen">
	<svg class="circular" width="48px" height="48px">
         <circle class="path-bg" cx="24" cy="24" r="22" fill="none"
			stroke-width="4" stroke="#eeeeee" />
         <circle class="path" cx="24" cy="24" r="22" fill="none"
			stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
</div>

<!-- Demo ads. Please ignore and remove. -->
<script src="assets/js/jquery-3.2.1.min.js"></script>
<script src="assets/js/jquery-migrate-3.0.0.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<script src="assets/js/jquery.backstretch.min.js"></script>
<script src="assets/js/wow.min.js"></script>
<script src="assets/js/retina-1.1.0.min.js"></script>
<script src="assets/js/scripts.js"></script>
<script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
<script
	src="<%=request.getContextPath() %>/js/jquery-migrate-3.0.1.min.js"></script>
<script src="<%=request.getContextPath() %>/js/popper.min.js"></script>
<script src="<%=request.getContextPath() %>/js/bootstrap.min.js.js"></script>
<script src="<%=request.getContextPath() %>/js/jquery.easing.1.3.js"></script>
<script src="<%=request.getContextPath() %>/js/jquery.waypoints.min.js"></script>
<script src="<%=request.getContextPath() %>/js/jquery.stellar.min.js"></script>
<script src="<%=request.getContextPath() %>/js/owl.carousel.min.js"></script>
<script
	src="<%=request.getContextPath() %>/js/jquery.magnific-popup.min.js"></script>
<script
	src="<%=request.getContextPath() %>/js/jquery.animateNumber.min.js"></script>
<script src="<%=request.getContextPath() %>/js/scrollax.min.js"></script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="<%=request.getContextPath() %>/js/google-map.js"></script>
<script src="<%=request.getContextPath() %>/js/main.js"></script>
</body>
</html>