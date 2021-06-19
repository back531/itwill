<%@page import="com.ksool.common.Utility"%>
<%@page import="com.ksool.common.PagingVO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.ksool.board.model.Q_BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="com.ksool.board.model.Q_BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
	String condition=request.getParameter("searchCondition");
	String keyword=request.getParameter("searchKeyword");
	
	Q_BoardDAO dao = new Q_BoardDAO();
	List<Q_BoardVO> list=null;
	try{
		list=dao.selectAll(condition, keyword);
	}catch(SQLException e){
		e.printStackTrace();
	}
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
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
	int blockSize=10;  //한 블럭에 보여줄 페이지 수, 10
	
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
		<%if(list==null || list.isEmpty()){ %>
			<tr>
				<td colspan="5" class="align_center">데이터가 없습니다.</td>
			</tr>
		<%}else{ %> 
		  	<!--게시판 내용 반복문 시작  -->		
		  	<%
		  	int num=pageVo.getNum();
		  	int curPos=pageVo.getCurPos();
		  	
		  	for(int i=0;i<pageVo.getPageSize() ;i++){
		  		if(num<1) break;
		  		Q_BoardVO vo=list.get(curPos++); //0, 5, 10, 15
		  		num--;
		  	%>
				<tr class="align_center">
					<td><%=vo.getNo() %></td>
					<td class="align_left">
						<%if(vo.getDelFlag().equalsIgnoreCase("Y")){ %>
							<span style="color:gray">삭제된 글입니다.</span>
						<%}else{ %>
							<!-- 답변글인 경우 단계별로 이미지 보여주기 -->
							<%=Utility.displayRe(vo.getStep()) %>	
								
							<!-- 제목이 긴 경우 일부만 보여주기 -->					
							<a href="countUpdate.jsp?no=<%=vo.getNo() %>">
								<%=Utility.cutTitle(vo.getTitle(), 30) %>
							</a>
							
							<!-- 24시간 이내의 글인 경우 new 이미지 보여주기 -->
							<%=Utility.displayNew(vo.getRegdate()) %>
						<%}//if %>	
					</td>
					<td><%=vo.getName() %></td>
					<td><%=sdf.format(vo.getRegdate()) %></td>
					<td><%=vo.getReadcount() %></td>		
				</tr> 
			<%}//for %>
		  	<!--반복처리 끝  -->
	  	<%}//if %>
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