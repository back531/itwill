<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
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
							class="fa fa-chevron-right"></i></a></span> <span>문의 게시판 <i
						class="fa fa-chevron-right"></i></span>
				</p>
				<h2 class="mb-0 bread">문의 게시판</h2>
			</div>
		</div>
	</div>
</section>
<section style="margin-left: 150px;
			    margin-right: 150px;
			    margin-top: 50px;
			    margin-bottom: 50px;
			    font-family: 'Jeju Gothic', serif;">
<button type="button" class="btn btn-outline-primary text-justify" onclick="location.href='questionBoard_write.jsp'">문의글 작성</button>
<table class="table table-hover center-block">
    <tr>
      <th scope="col">순번</th>
      <th scope="col">제목</th>
      <th scope="col">아이디</th>
      <th scope="col">작성날짜</th>
      <th scope="col">조회수</th>
    </tr>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>19세 미만도 구매할 수 있나요?</td>
      <td>어린이</td>
      <td>2021-06-16</td>
      <td>15</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>배송은 얼마나 걸리나요?</td>
      <td>술꾼</td>
      <td>2021-06-15</td>
      <td>1</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>배송과정에서 파손이 있습니다.</td>
      <td>사기꾼</td>
      <td>2021-06-14</td>
      <td>22</td>
    </tr>
  </tbody>
</table>

	<nav aria-label="...">
		<ul class="pagination" style="justify-content: center; font-family: 'Jeju Gothic', serif;" >
			<li class="page-item disabled"><span class="page-link">이전으로</span>
			</li>
			<li class="page-item active"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><span class="page-link"> 2 <span
					class="sr-only">(current)</span>
			</span></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">다음으로</a></li>
		</ul>
		
	</nav>
</section>
<%@ include file="../inc/bottom.jsp"%>