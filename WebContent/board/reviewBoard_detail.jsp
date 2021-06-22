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

ReplyDAO dao2 = new ReplyDAO();
List<ReplyVO> list = null;

list = dao2.selectAll(Integer.parseInt(no));
System.out.println(list.size());
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
		<form action="#" method="POST">

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
			<br>
			
			<%for(int i=0; i<list.size(); i++){
						ReplyVO vo2 = list.get(i);%>	
						<div class="card mb-2">
						<div class="card-body">
							<div class="form-inline mb-2">
								<label for="replyId"><i	class="fa fa-user-circle-o fa-2x"></i></label> 
								<p style="margin-bottom: 0px; margin-left: 5px; margin-top: 7px;"><%=vo2.getUserid() %></p>
							</div>
							<div class="form-inline mb-2">
								<p>작성일자 : <%=vo2.getRegdate() %></p>
							</div>
							<div class="text-center">
								<textarea class="form-control" id="exampleFormControlTextarea1"
									rows="3"><%=vo2.getContent() %></textarea>
							</div>
						</div>
						</div>
				<%}//for%>
			<div class="card mb-2">
				<div class="card-body">
					<ul class="list-group list-group-flush">
						<li class="list-group-item">
							<div class="form-inline mb-2">
								<label for="replyId"><i
									class="fa fa-user-circle-o fa-2x"></i></label> <input type="text"
									class="form-control ml-2" placeholder="Enter yourId"
									id="replyId">
							</div>
							<div class="text-center">
								<textarea class="form-control" id="exampleFormControlTextarea1"
									rows="3"></textarea>
								<button type="button" class="btn btn-dark mt-3"
									onClick="javascript:addReply();">댓글작성</button>
							</div>
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
