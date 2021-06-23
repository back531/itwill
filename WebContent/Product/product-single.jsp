<%@page import="com.ksool.product.model.ProductVO"%>
<%@page import="com.ksool.product.model.ProductDAO"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../inc/top.jsp" %>
<%
	String pid=request.getParameter("pid");
	
	//2.
	ProductDAO dao = new ProductDAO();
	ProductVO vo=null;
	try{
		vo=dao.selectByPID(Integer.parseInt(pid));
	}catch(SQLException e){
		e.printStackTrace();
	}

%> 
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
    				<a href="<%=request.getContextPath()%>/images/<%=vo.getImagemain()%>" class="image-popup prod-img-bg"><img src="<%=request.getContextPath()%>/images/<%=vo.getImagemain()%>" class="img-fluid" alt="Colorlib Template" style="width: 500px; "></a>
    			</div>
    			<div class="col-lg-6 product-details pl-md-5 ftco-animate">
    				<h3><%=vo.getNAME() %></h3>
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
    				<p class="price"><span><%=vo.getPRICE() %>₩</span></p>
    				
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
	          		<p style="color: #000;"><%=vo.getSTOCK()%></p>
	          	</div>
          	</div>
          	<p><a href="<%=request.getContextPath()%>/order/cart.jsp" class="btn btn-primary py-3 px-5 mr-2">장바구니</a><a href="<%=request.getContextPath()%>/order/order.jsp" class="btn btn-primary py-3 px-5">구매</a></p>
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
	              	<h3 class="mb-4"><%=vo.getNAME() %></h3>
	              	<p><%=vo.getCONTENT() %></p>
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