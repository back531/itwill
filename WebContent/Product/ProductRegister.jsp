<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="../inc/top.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<script type="text/javascript" src="./resources/js/validation.js"></script>
<script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('.btList').click(function(){
			location.href="Productlist.jsp";
		});
		
		$('form[name=newProduct]').submit(function(){
			$('.form-control').each(function(idx, item){
				if($(this).val().length<1){
					alert($(this).prev().text()+"을(를) 입력하세요");
					$(item).focus();
					event.preventDefault();
					return false;
				}
			});
		});
	});
</script>
<title>상품 등록</title>

<section class="hero-wrap hero-wrap-2"
	style="background-image: url('../images/image01.png'); font-family: 'Jeju Gothic', serif;"
	data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-center">
			<div class="col-md-9 ftco-animate mb-5 text-center">
				<p class="breadcrumbs mb-0">
					<span class="mr-2"><a href="index.jsp">Home <i
							class="fa fa-chevron-right"></i></a></span> <span>상품 <i
						class="fa fa-chevron-right"></i></span>
				</p>
				<h2 class="mb-0 bread">상품 등록</h2>
			</div>
		</div>
	</div>
</section>
<section style="margin-left: 150px;
			    margin-right: 150px;
			    margin-top: 50px;
			    margin-bottom: 50px;
			    font-family: 'Jeju Gothic', serif;">
	
	<div class="container">
		<div>
			<a href="<%=request.getContextPath()%>/login/logout.jsp">logout</a>
		</div>
		
		<form name="newProduct" action="ProductRegister_ok.jsp" class="form-horizontal" method="post" 
		enctype="multipart/form-data">
		
			
			<div class="form-group row">
				<label class="col-sm-2">카테고리 번호</label>
				<div class="com-sm-3">
					<input type="text" id="CT_NO" name="CT_NO" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">상품 이름</label>
				<div class="com-sm-3">
					<input type="text" id="P_NAME" name="P_NAME" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">상품 가격</label>
				<div class="com-sm-3">
					<input type="text" id="P_PRICE" name="P_PRICE" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">상품 종류</label>
				<div class="com-sm-3">
					<input type="text" id="P_CT" name="P_CT" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">상품 설명</label>
				<div class="com-sm-3">
					<textarea id="P_CONTENT" name="P_CONTENT" class="form-control" rows="12" cols="40"></textarea>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">상품 재고</label>
				<div class="com-sm-3">
					<input type="text" id="P_STOCK" name="P_STOCK" class="form-control">
				</div>
			</div>
		
			<div class="form-group row">
				<label class="col-sm-2">상품 이미지</label>
				<div>
					<input type="file" id="upfile" name="upfile" class="form-control">
				</div>
			</div>
				
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type = "Button" value="상품등록" class="btList"/>
				</div>
			</div>
			
		</form>
	</div>

</html>
<br>
<%@ include file="../inc/bottom.jsp"%>