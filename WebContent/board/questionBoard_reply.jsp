<%@page import="java.sql.SQLException"%>
<%@page import="com.ksool.board.model.Q_BoardVO"%>
<%@page import="com.ksool.board.model.Q_BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<%@ include file="../login/loginCheck.jsp"%>
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/lang/summernote-ko-KR.js"></script>
<%
	//detail.jsp에서 [답변]클릭하면 get방식으로 이동
	//=> http://localhost:9090/mystudy/reBoard/reply.jsp?no=2
	//1
	String no=request.getParameter("no");
	if(no==null || no.isEmpty()){ %>
		<script type="text/javascript">
			alert('잘못된 url입니다.');
			location.href="questionBoard.jsp";
		</script>
	<%	return;	
	}
	
	//2
	Q_BoardDAO dao = new Q_BoardDAO();
	Q_BoardVO vo=null;
	try{
		vo=dao.selectByNo(Integer.parseInt(no));
	}catch(SQLException e){
		e.printStackTrace();
	}
	
	//3
	
%>
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
				<h2 class="mb-0 bread">문의글 작성</h2>
			</div>
		</div>
	</div>
</section>
<section style="margin-left: 150px;
			    margin-right: 150px;
			    margin-top: 50px;
			    margin-bottom: 50px;
			    font-family: 'Jeju Gothic', serif;">
	<form name="frmWrite" method="post" action="questionBoard_reply_ok.jsp">
	<input type="hidden" name="groupNo" value="<%=vo.getGroupNo() %>">
	<input type="hidden" name="step" value="<%=vo.getStep() %>">
	<input type="hidden" name="sortNo" value="<%=vo.getSortNo() %>">
<div class="container">
		<div class="form-group">
			<label for="title">제목</label>
			<input type="text" class="form-control" id="title" name="title" value="Re: <%=vo.getTitle()%>"/>
		</div>
		<div class="form-group">
			<label for="userid">아이디</label>
			<input type="text" class="form-control" readonly="readonly"  id="userid" name="userid" value="<%=session.getAttribute("userid")%>">
		</div>
	
		<div class="form-group">
			<label for="content">문의 내용</label>
			<textarea id="summernote" class="form-control summernote" rows="5" id="content" name="content"></textarea>
		</div>
		<div class="text-center">
			<button type="submit" class="btn btn-primary">문의 등록</button>
			<button type="reset" class="btn btn-primary">등록 취소</button>
		</div>
</div>
	</form>
<script>
$('#summernote').summernote({
	placeholder: "문의 내용을 상세히 입력해주세요",
	tabsize: 2,
	height: 400
});
</script>
</section>
<%@ include file="../inc/bottom.jsp"%>
