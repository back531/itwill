<%@page import="com.ksool.common.PagingVO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="com.ksool.board.model.ReplyDAO"%>
<%@page import="com.ksool.board.model.ReplyVO"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.ksool.board.model.R_BoardVO"%>
<%@page import="com.ksool.board.model.R_BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<%
	//list.jsp에서 제목 링크 클릭하면 get방식으로 이동
//=> http://localhost:9090/mystudy/reBoard/detail.jsp?no=4
//1
String no = request.getParameter("no");

if (no == null || no.isEmpty()) {
%>
<script type="text/javascript">
	alert("잘못된 url입니다.");
	location.href = "list.jsp";
</script>

<%
	return;
}

//2
R_BoardDAO dao = new R_BoardDAO();
R_BoardVO vo = null;
try {
	vo = dao.selectByNo(Integer.parseInt(no));
} catch (SQLException e) {
	e.printStackTrace();
}

//3	
String content = vo.getContent();
if (content != null && !content.isEmpty()) {
	//replace \r\n => <br>
	content = content.replace("\r\n", "<br>");
} else {
	//null => ""
	content = "";
}
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
ReplyDAO dao2 = new ReplyDAO();
List<ReplyVO> list = null;

list = dao2.selectAll(Integer.parseInt(no));
System.out.println(list.size());

//페이징 처리
int currentPage=1;  //현재 페이지

if(request.getParameter("currentPage") !=null ){
	currentPage=Integer.parseInt(request.getParameter("currentPage"));
}

int totalRecord = 0;  //전체 레코드 개수, 예) 17
if(list !=null && !list.isEmpty()){
	totalRecord=list.size();
}
int pageSize=5;  //한 페이지에 보여줄 레코드 수, 5
int blockSize=5;  //한 블럭에 보여줄 페이지 수, 10

PagingVO pageVo = new PagingVO(currentPage, totalRecord, pageSize, blockSize);
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
							class="fa fa-chevron-right"></i></a></span> <span>후기 게시판 <i
						class="fa fa-chevron-right"></i></span>
				</p>
				<h2 class="mb-0 bread"><%=no%>번 후기 글
				</h2>
			</div>
		</div>
	</div>
</section>

<section
	style="margin-left: 150px; margin-right: 150px; margin-top: 50px; margin-bottom: 50px; font-family: 'Jeju Gothic', serif;">
	<div class="container">
		<form action="reply_write_ok.jsp" method="POST">

			<div class="form-group">
				<label for="title">제목</label> <input readonly="readonly" type="text"
					class="form-control" value="<%=vo.getTitle()%>" id="title"
					name="title">
			</div>
			<div class="form-group">
				<label for="userid">작성자</label> <input readonly="readonly"
					type="text" class="form-control" value="<%=vo.getName()%>"
					id="userid" name="userid">
			</div>

			<div class="form-group">
				<label for="content">후기 내용</label>
			</div>
			<div
				style="border: 1px solid #e9ecef; opacity: 1; overflow: auto; border-radius: 5px;">
				<p><%=content%></p>
			</div>
			<br>


			<div class="text-center">
				<%
					if (vo.getName().equals(session.getAttribute("userid"))) {
				%>
				<button type="button" class="btn btn-primary"
					onclick="location.href='reviewBoard.jsp'">목록으로</button>
				<button type="button" class="btn btn-primary"
					onclick="location.href='reviewBoard_edit.jsp?no=<%=no%>'">수정하기</button>
				<button type="reset" class="btn btn-primary" data-toggle="modal"
					data-target="#myModal">삭제하기</button>
				<%
					} else {
				%>
				<button type="button" class="btn btn-primary"
					onclick="location.href='reviewBoard.jsp'">목록으로</button>
				<%
					}
				%>
			</div>
		</form>	
			<br>
			<form action="reply_write_ok.jsp" method="POST">
			<%int num = pageVo.getNum();
			  int curPos = pageVo.getCurPos();
			
			  for(int i=0; i<pageVo.getPageSize(); i++){
				  if(num<1) break;
						ReplyVO vo2 = list.get(curPos++);
						num--;%>	
						<div class="card mb-2">
						<div class="card-body">
							<div class="form-inline mb-2">
								<label for="replyId"><i	class="fa fa-user-circle-o fa-2x"></i></label> 
								<p style="margin-bottom: 0px; margin-left: 5px; margin-top: 7px;"><%=vo2.getUserid() %></p>
							</div>
							<div class="form-inline mb-2">
								<p>작성일자 : <%=sdf.format(vo2.getRegdate()) %></p>
							</div>
							<div class="text-center">
								<p style="text-align: left;"><%=vo2.getContent() %></p>
							</div>
						</div>
						</div>
				<%}//for%>
				
			<div class="divPage">
	<!-- 페이지 번호 추가 -->		
	<!-- 이전 블럭으로 이동 -->
	<nav aria-label="...">
	<ul class="pagination" style="justify-content: center; font-family: 'Jeju Gothic', serif;" >
	<%if(pageVo.getFirstPage()>1){ %>
		<li class="page-item"><a href="reviewBoard_detail.jsp?currentPage=<%=pageVo.getFirstPage()-1%>&no=<%=no%>"><span class="page-link">이전으로</span></a></li>
	<%}//if %>
						
	<!-- [1][2][3][4][5][6][7][8][9][10] -->
	<%
		for(int i=pageVo.getFirstPage();i<=pageVo.getLastPage();i++){
			if(i>pageVo.getTotalPage()) break;
			
			if(i == currentPage){%>
			
				<li class="page-item active"><a class="page-link" href="reviewBoard_detail.jsp?currentPage=<%=i%>&no=<%=no%>"><%=i %></a></li>
			
			<%}else{ %>
				<li class="page-item"><a class="page-link" href="reviewBoard_detail.jsp?currentPage=<%=i%>&no=<%=no %>"><%=i %></a></li>
			
			<%}//if %>	
	<%}//for %>
	
	<!-- 다음 블럭으로 이동 -->
	<%if(pageVo.getLastPage() < pageVo.getTotalPage()){ %>
		<li class="page-item"><a class="page-link" href="reviewBoard_detail.jsp?currentPage=<%=pageVo.getLastPage()+1%>&no=<%=no %>">다음으로</a></li>
	<%}//if %>
	</ul>
	</nav>
	<!--  페이지 번호 끝 -->
</div>
			
			<div class="card mb-2">
				<div class="card-body">
					<ul class="list-group list-group-flush">
						<li class="list-group-item">
								<%if(session.getAttribute("userid")==null){ %>
									<p class="text-center"><a href="../login/login4.jsp">로그인</a> 후 이용해주세요</p>
								<%}else{ %>
							<div class="form-inline mb-2">
								<label for="replyId">
									<i class="fa fa-user-circle-o fa-2x"></i></label> 
									<input type="text" class="form-control ml-2" value="<%=session.getAttribute("userid") %>"id="userid" name="userid" readonly="readonly">
									<input type="hidden" class="form-control ml-2" value="<%=no %>"id="no" name="no" readonly="readonly">
							</div>
							<div class="text-center">
								<textarea class="form-control" id="content" name="content" rows="3"></textarea>
								<button type="submit" class="btn btn-dark mt-3">댓글작성</button>
							</div>
							<%} %>
						</li>
					</ul>
				</div>
			</div>
		</form>	
	</div>
	


	<script type="text/javascript">
		$(function() {
			$('form[name=frmDelete]').submit(function() {
				if ($('#pwd').val().length < 1) {
					alert('비밀번호 입력하세요');
					$('#pwd').focus();
					event.preventDefault();
				} else {
					if (!confirm('삭제하시겠습니까?')) {
						event.preventDefault();
					}
				}
			});
		});
	</script>
	<form name="frmDelete" method="post" action="reviewBoard_delete_ok.jsp">
		<input type="hidden" name="no" value="<%=vo.getNo()%>">

		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title text-center" id="myModalLabel">후기글 삭제</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<label for="pwd">비밀번호</label> <input type="password"
							class="form-control" placeholder="비밀번호를 입력하세요." id="pwd"
							name="pwd" style="font-family: auto;">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
						<button type="submit" class="btn btn-primary">삭제</button>
					</div>
				</div>
			</div>
		</div>
	</form>
</section>
<%@ include file="../inc/bottom.jsp"%>
