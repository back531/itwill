<%@page import="com.ksool.common.PagingVO"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.ksool.product.model.ProductVO"%>
<%@page import="java.util.List"%>
<%@page import="com.ksool.product.model.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>ㅁ
<%@ include file="../inc/top.jsp"%>


		<!-- 증류주 -->
		
		
<a id="MOVE_TOP_BTN" href="#">TOP </a>
<section class="hero-wrap hero-wrap-2"
	style="background-image: url('<%=request.getContextPath()%>/images/image01.png');"
	data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-center">
			<div class="col-md-9 ftco-animate mb-5 text-center">
				<p class="breadcrumbs mb-0">
					<span class="mr-2"><a href="index.html">Home <i
							class="fa fa-chevron-right"></i></a></span> <span>상품<i
						class="fa fa-chevron-right"></i></span>
				</p>
				<h2 class="mb-0 bread">증&nbsp;류&nbsp;주</h2>
			</div>
		</div>
	</div>
</section>
<%
	request.setCharacterEncoding("utf-8");
	String condition=request.getParameter("searchCondition");
	String keyword=request.getParameter("searchKeyword");
	
	ProductDAO dao = new ProductDAO();

	List<ProductVO> list=null;
	
	try{
		list = dao.selectAll4(condition, keyword);
		
	}catch(SQLException e){
		e.printStackTrace();
	}


	//페이징 처리
	int currentPage=1;  //현재 페이지
	
	if(request.getParameter("currentPage") !=null ){
		currentPage=Integer.parseInt(request.getParameter("currentPage"));
	}
	
	//(1) 현재 페이지와 무관한 변수
	int totalRecord = 0;  
		if(list !=null && !list.isEmpty()){
			totalRecord=list.size();
		}
		int pageSize=9;  
		int blockSize=5;  
	
	PagingVO pageVo = new PagingVO(currentPage, totalRecord, pageSize, blockSize);

%>
<section class="ftco-section">
	<div class="container">
		<div class="row">
			<%     	
	          	int num = pageVo.getNum();
			  	int curPos = pageVo.getCurPos();
			%>
			<div class="col-md-9">
				<div class="row">
			<%	
	          	for(int i=0; i<pageVo.getPageSize();i++){ 
	          		if(num<1) break;
	          		ProductVO dto=list.get(curPos++); //0, 5, 10, 15
			  		num--;
			%>
					<div class="col-md-4 d-flex">
						<div class="product ftco-animate">
							<div class="img d-flex align-items-center justify-content-center"
								style="background-image: url(<%=request.getContextPath() %>/images/<%=dto.getImagemain()%>);">
								<div class="desc">
									<p class="meta-prod d-flex">
										<a href="#" class="d-flex align-items-center justify-content-center">
										<span class="flaticon-shopping-bag"></span></a> 
										<a href="#" class="d-flex align-items-center justify-content-center">
										<span class="flaticon-heart"></span></a> 
										<a href="<%=request.getContextPath() %>/Product/product-single.jsp?pid=<%=dto.getPID() %>" class="d-flex align-items-center justify-content-center">
										<span class="flaticon-visibility"></span></a>
									</p>
								</div>
							</div>
							<div class="text text-center">
									<span class="category"><%=dto.getCT_NO() %></span>
									<h2><%=dto.getP_NAME() %></h2>
									<span class="price"><%=dto.getP_PRICE() %></span>
							</div>
						</div>
					</div>
					
			<%} %>
			
							<!-- 페이지 번호 추가 -->		
							<!-- 이전 블럭으로 이동 -->
							<nav aria-label="...">
							<ul class="pagination" style="justify-content: center; font-family: 'Jeju Gothic', serif;" >
							<%if(pageVo.getFirstPage()>1){ %>
						      <li class="page-item"><a href="Productlist.jsp?currentPage=<%=pageVo.getFirstPage()-1%>&searchCondition=<%=condition%>&searchKeyword=<%=keyword%>"><span class="page-link">이전으로</span></a></li>
						    <%}//if %>
												
							<!-- [1][2][3][4][5][6][7][8][9][10] -->
							<%
								for(int i=pageVo.getFirstPage();i<=pageVo.getLastPage();i++){
									if(i>pageVo.getTotalPage()) break;
									
									if(i == currentPage){%>
									
										<li class="page-item active"><a class="page-link" href="Productlist.jsp?currentPage=<%=i%>&searchCondition=<%=condition%>"><%=i %></a></li>
									
									<%}else{ %>
										<li class="page-item"><a class="page-link" href="Productlist.jsp?currentPage=<%=i%>&searchCondition=<%=condition%>"><%=i %></a></li>
									
									<%}//if %>	
							<%}//for %>
							
							<!-- 다음 블럭으로 이동 -->
							<%if(pageVo.getLastPage() < pageVo.getTotalPage()){ %>
								<li class="page-item active"><a class="page-link" href="Productlist.jsp?currentPage=<%=pageVo.getLastPage()+1%>&searchCondition=<%=condition%>&searchKeyword=<%=keyword%>">다음으로</a></li>
							<%}//if %>
							</ul>
							</nav>
							<!--  페이지 번호 끝 -->
			
						
			</div>
		</div>

	<!-- floating menu -->
				<div class="col-md-3">
					<div id="floatMenu" class="sidebar-box ftco-animate">
						<div class="categories">
							<h3>Product Types</h3>
							<ul class="p-0">
								<li><a href="<%=request.getContextPath()%>/Product/ProductlistA.jsp">>전통주
										<span class="fa fa-chevron-right"></span>
								</a></li>
								<li><a href="<%=request.getContextPath() %>/Product/ProductlistM.jsp">막걸리
										<span class="fa fa-chevron-right"></span>
								</a></li>
								<li><a href="<%=request.getContextPath() %>/Product/ProductlistZ.jsp">증류주
										<span class="fa fa-chevron-right"></span>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
	<span id="brr"></span>
	</div>
	</div>
	
</section>
<br>
<%@ include file="../inc/bottom.jsp"%>