<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	int currentPage=1; 
	
%>
<%@ include file="../inc/top.jsp" %>
	<section class="hero-wrap hero-wrap-2" style="background-image: url('<%=request.getContextPath()%>/images/image01.png');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate mb-5 text-center">
        
            <h2 class="mb-0 bread">상&nbsp;품&nbsp;상&nbsp;세</h2>
          </div>
        </div>
      </div>
    </section>
    
    <section class="ftco-section">
    	<div class="container">
    		<div class="row">
    			<div class="col-lg-6 mb-5 ftco-animate">
    				<a href="<%=request.getContextPath()%>/images/product-10.jpg" class="image-popup prod-img-bg"><img src="images/product-10.jpg" class="img-fluid" alt="Colorlib Template" style="width: 500px; "></a>
    			</div>
    			<div class="col-lg-6 product-details pl-md-5 ftco-animate">
    				<h3>소백산 막걸리</h3>
    				<div class="rating d-flex">
							<p class="text-left mr-4">
								<a href="#" class="mr-2">5.0</a>
								<a href="#"><span class="fa fa-star"></span></a>
								<a href="#"><span class="fa fa-star"></span></a>
								<a href="#"><span class="fa fa-star"></span></a>
								<a href="#"><span class="fa fa-star"></span></a>
								<a href="#"><span class="fa fa-star"></span></a>
							</p>
							<p class="text-left mr-4">
								<a href="#" class="mr-2" style="color: #000;">100 <span style="color: #bbb;">좋아요</span></a>
							</p>
							<p class="text-left">
								<a href="#" class="mr-2" style="color: #000;">500 <span style="color: #bbb;">판매수</span></a>
							</p>
						</div>
    				<p class="price"><span>27500₩</span></p>
    				
						</p>
						<div class="row mt-4">
							<div class="input-group col-md-6 d-flex mb-3">
	             	<span class="input-group-btn mr-2">
	                	<type="button" class="quantity-left-minus btn"  data-type="minus" data-field="">
	                   <i class="fa fa-minus"></i>
	                	</button>
	            		</span>
	             	<input type="text" id="quantity" name="quantity" class="quantity form-control input-number" value="1" min="1" max="100">
	             	<span class="input-group-btn ml-2">
	                	<type="button" class="quantity-right-plus btn" data-type="plus" data-field="">
	                     <i class="fa fa-plus"></i>
	                 </button>
	             	</span>
	          	</div>
	          	<div class="w-100"></div>
	          	<div class="col-md-12">
	          		<p style="color: #000;">남은 수량 80개</p>
	          	</div>
          	</div>
          	<p><a href="cart.html" class="btn btn-primary py-3 px-5 mr-2">장바구니</a><a href="cart.html" class="btn btn-primary py-3 px-5">구매</a></p>
    			</div>
    		</div>




    		<div class="row mt-5">
          <div class="col-md-12 nav-link-wrap">
            <div class="nav nav-pills d-flex text-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
              
              <a class="nav-link ftco-animate active mr-lg-1" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true">상세설명</a>

            </div>
          </div>
          <div class="col-md-12 tab-wrap">
            
            <div class="tab-content bg-light" id="v-pills-tabContent">

              <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="day-1-tab">
              	<div class="p-4">
	              	<h3 class="mb-4">소백산막걸리</h3>
	              	<p>입국 방식의 누룩과 고두밥을 이용하여 빚은 삼양주 약주를 단식 증류기를 이용해 감압증류 방식으로 증류한 뒤 냉각 여과(칠필터링)을 거쳐 1년 동안 숙성한 후 <br>증류주와 10년 이상 오크통에 숙성한 원주를 블렌딩함
	              		정제수, 소맥분(외국산), 입국, 쌀(국내산), 효모, 아스파탐, 아세설팜칼륨으로 제작</p>
              	</div>
              </div>

              
              </div>
            </div>
          </div>
        </div>
    </section>
    
    
    <script>
		$(document).ready(function(){

		var quantitiy=0;
		   $('.quantity-right-plus').click(function(e){
		        
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		            
		            $('#quantity').val(quantity + 1);

		          
		            // Increment
		        
		    });

		     $('.quantity-left-minus').click(function(e){
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		      
		            // Increment
		            if(quantity>0){
		            $('#quantity').val(quantity - 1);
		            }
		    });	    
		});
	</script>
    
    		<br>
		
<%@ include file="../inc/bottom.jsp" %>