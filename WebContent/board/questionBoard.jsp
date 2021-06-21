<%@page import="com.mysemi.member.model.MemberVO"%>
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
<%	if(keyword!=null && !keyword.isEmpty() ){ %>
		<p>검색어 : <%=keyword %>, <%=list.size() %>건 검색되었습니다.</p>
<%	}else{
		keyword="";
	}%>
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
				<td colspan="5" class="text-center">데이터가 없습니다.</td>
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

<div class="divPage">
	<!-- 페이지 번호 추가 -->		
	<!-- 이전 블럭으로 이동 -->
	<nav aria-label="...">
	<ul class="pagination" style="justify-content: center; font-family: 'Jeju Gothic', serif;" >
	<%if(pageVo.getFirstPage()>1){ %>
		<li class="page-item"><a href="questionBoard.jsp?currentPage=<%=pageVo.getFirstPage()-1%>&searchCondition=<%=condition%>&searchKeyword=<%=keyword%>"><span class="page-link">이전으로</span></a></li>
	<%}//if %>
						
	<!-- [1][2][3][4][5][6][7][8][9][10] -->
	<%
		for(int i=pageVo.getFirstPage();i<=pageVo.getLastPage();i++){
			if(i>pageVo.getTotalPage()) break;
			
			if(i == currentPage){%>
			
				<li class="page-item active"><a class="page-link" href="questionBoard.jsp?currentPage=<%=i%>&searchCondition=<%=condition%>&searchKeyword=<%=keyword%>"><%=i %></a></li>
			
			<%}else{ %>
				<li class="page-item"><a class="page-link" href="questionBoard.jsp?currentPage=<%=i%>&searchCondition=<%=condition%>&searchKeyword=<%=keyword%>"><%=i %></a></li>
			
			<%}//if %>	
	<%}//for %>
	
	<!-- 다음 블럭으로 이동 -->
	<%if(pageVo.getLastPage() < pageVo.getTotalPage()){ %>
		<li class="page-item"><a class="page-link" href="questionBoard.jsp?currentPage=<%=pageVo.getLastPage()+1%>&searchCondition=<%=condition%>&searchKeyword=<%=keyword%>">다음으로</a></li>
	<%}//if %>
	</ul>
	</nav>
	<!--  페이지 번호 끝 -->
</div>

<div class="divSearch text-center">
   	<form name="frmSearch" method="post" action='questionBoard.jsp'>
        <select name="searchCondition">
            <option value="title" 
            	<% if("title".equals(condition)){%>
            		selected="selected"
            	<%} %>
            >제목</option>
            <option value="content"
            	<% if("content".equals(condition)){%>
            		selected="selected"
            	<%} %>
            >내용</option>
            <option value="name" 
            	<% if("name".equals(condition)){%>
            		selected="selected"
            	<%} %>
            >작성자</option>
        </select>   
        <input type="text" name="searchKeyword" title="검색어 입력"
        	value="<%=keyword%>">   
		<input type="submit" value="검색">
		<%	if(keyword!=null && !keyword.isEmpty() ){ %>
		<p>검색어 : <%=keyword %>, <%=list.size() %>건 검색되었습니다.</p>
		<%	}else{
			keyword="";
		}%>
    </form>
</div>
</section>
<%@ include file="../inc/bottom.jsp"%>