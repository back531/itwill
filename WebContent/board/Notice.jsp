<%@page import="java.util.Locale"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.ksool.board.model.NoticeVO"%>
<%@page import="java.util.List"%>
<%@page import="com.ksool.board.model.NoticeDAO"%>
<%@page import="com.ksool.common.PagingVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<%
NoticeDAO dao = new NoticeDAO();
List<NoticeVO> list=null;

try{
	list=dao.selectAll();
}catch(SQLException e){
	e.printStackTrace();
}

int currentPage=1;  //현재 페이지

if(request.getParameter("currentPage") !=null ){
	currentPage=Integer.parseInt(request.getParameter("currentPage"));
}

int totalRecord = 0;  //전체 레코드 개수, 예) 17
if(list !=null && !list.isEmpty()){
	totalRecord=list.size();
}
int pageSize=4;  //한 페이지에 보여줄 레코드 수, 5
int blockSize=5;  //한 블럭에 보여줄 페이지 수, 10

PagingVO pageVo = new PagingVO(currentPage, totalRecord, pageSize, blockSize);

SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 E요일", Locale.KOREAN);

%>
    <section class="hero-wrap hero-wrap-2" style="background-image: url('../images/image01.png'); font-family: 'Jeju Gothic', serif;" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate mb-5 text-center">
          	<p class="breadcrumbs mb-0"><span class="mr-2"><a href="index.html">Home <i class="fa fa-chevron-right"></i></a></span> <span>공지사항 <i class="fa fa-chevron-right"></i></span></p>
            <h2 class="mb-0 bread">공지사항</h2>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section" style="font-family: 'Jeju Gothic', serif;">
      <div class="container">
        <div class="row d-flex">
      <%if(list==null || list.isEmpty()){ %>
      	<p class="text-center">등록된 데이터가 없습니다.</p>
      <%}else{ %> 
      <%
		  	int num=pageVo.getNum();
		  	int curPos=pageVo.getCurPos();
		  	
		  	for(int i=0;i<pageVo.getPageSize() ;i++){
		  		if(num<1) break;
		  		NoticeVO vo=list.get(curPos++); //0, 5, 10, 15
		  		num--;
	  %>
          <div class="col-lg-6 d-flex align-items-stretch ftco-animate">
          	<div class="blog-entry d-md-flex">
          		<a class="block-20 img" style="background-image: url('notice_image/<%=vo.getImage_name()%>');"></a>
              <div class="text p-4 bg-light">
              	<div class="meta">
              		<p><span class="fa fa-calendar"></span><%=sdf.format(vo.getRegdate()) %></p>
              	</div>
                <h3 class="heading mb-3" id="title"><a><%=vo.getTitle() %></a></h3>
                <p><%=vo.getSubtitle() %></p>
                <a href="" data-toggle="modal" data-target="#title_<%=vo.getNo() %>" class="btn-custom" >자세히 보기<span class="fa fa-long-arrow-right"></span></a>
              </div>
            </div>
          </div>
		    <!-- Modal -->
		<div class="modal fade" id="title_<%=vo.getNo() %>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h4 class="modal-title" id="myModalLabel"><%=vo.getTitle() %></h4>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		      </div>
		      <div class="modal-body" >
		       <p><%=vo.getContent() %><p>
		      </div>
		    </div>
		  </div>
		</div>
		
      		<%}//for %>
		<!--반복처리 끝  -->
	  <%}//if %>
	    </div>
      </div>
      <%if(session.getAttribute("userid").equals("admin")){ %>
	      <div class="text-center">
	     	 <a href="Notice_write.jsp" >공지글 작성</a>      
	      </div>
	  <%} %>
      <!-- 페이지 번호 추가 -->		
	  <!-- 이전 블럭으로 이동 -->
		<nav aria-label="...">
		<ul class="pagination" style="justify-content: center; font-family: 'Jeju Gothic', serif;" >
		<%if(pageVo.getFirstPage()>1){ %>
		<li class="page-item"><a href="Notice.jsp?currentPage=<%=pageVo.getFirstPage()-1%>"><span class="page-link">이전으로</span></a></li>
	    <%}//if %>
												
		<!-- [1][2][3][4][5][6][7][8][9][10] -->
		<%
		for(int i=pageVo.getFirstPage();i<=pageVo.getLastPage();i++){
			if(i>pageVo.getTotalPage()) break;
									
			if(i == currentPage){%>
									
				<li class="page-item active"><a class="page-link" href="Notice.jsp?currentPage=<%=i%>"><%=i %></a></li>
									
			<%}else{ %>
				<li class="page-item"><a class="page-link" href="Notice.jsp?currentPage=<%=i%>"><%=i %></a></li>
									
			<%}//if %>	
				<%}//for %>
							
		<!-- 다음 블럭으로 이동 -->
			<%if(pageVo.getLastPage() < pageVo.getTotalPage()){ %>
					<li class="page-item active"><a class="page-link" href="Notice.jsp?currentPage=<%=pageVo.getLastPage()+1%>">다음으로</a></li>
			<%}//if %>
				</ul>
		</nav>
	<!--  페이지 번호 끝 -->
    </section>	
<%@ include file="../inc/bottom.jsp"%>