<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<section class="hero-wrap hero-wrap-2"
	style="background-image: url('../images/image01.png');"
	data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-center">
			<div class="col-md-9 ftco-animate mb-5 text-center">
				<p class="breadcrumbs mb-0">
					<span class="mr-2"><a href="index.jsp">Home <i
							class="fa fa-chevron-right"></i></a></span> <span>문의 게시판 <i
						class="fa fa-chevron-right"></i></span>
				</p>
				<h2 class="mb-0 bread">문의글 작성</h2>
			</div>
		</div>
	</div>
</section>
<section style="margin-left: 150px;
			    margin-right: 150px;
			    margin-top: 50px;
			    margin-bottom: 50px;">
<div class="container">
	<form action="#" method="POST">
	
		<div class="form-group">
			<label for="title">제목</label>
			<input type="text" class="form-control" placeholder="제목을 입력하세요." id="title" name="title">
		</div>
	
		<div class="form-group">
			<label for="content">문의 내용</label>
			<textarea id="summernote" class="form-control summernote" rows="5" id="content" name="content"></textarea>
		</div>
		<div class="text-center">
			<button type="submit" class="btn btn-primary">문의 등록</button>
			<button type="reset" class="btn btn-primary">등록 취소</button>
		</div>
	</form>
</div>
<script>
$('.summernote').summernote({
	placehorder: "문의 내용을 상세히 입력해주세요",
	tabsize: 2,
	height: 400
});
</script>
</section>
<%@ include file="../inc/bottom.jsp"%>
