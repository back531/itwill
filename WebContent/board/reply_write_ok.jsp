<%@page import="com.ksool.board.model.ReplyVO"%>
<%@page import="com.ksool.board.model.ReplyDAO"%>
<%@page import="com.ksool.board.model.R_BoardVO"%>
<%@page import="com.ksool.board.model.R_BoardDAO"%>
<%@page import="com.ksool.common.Utility"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.IOException"%>

<%@page import="java.sql.SQLException"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//write.jsp에서 post방식으로 서브밋
		//1.
		request.setCharacterEncoding("utf-8");
		String content=request.getParameter("content");
		String userid=request.getParameter("userid");
		String no = request.getParameter("no");
		
		//ip 읽어오기
		String ip=request.getRemoteAddr();
		String ip2=request.getRemoteHost();
		System.out.println("ip="+ip+", ip2="+ip2);
		
		//2.
		ReplyDAO dao = new ReplyDAO();
		ReplyVO vo = new ReplyVO();
		vo.setContent(content);
		vo.setUserid(userid);
		vo.setNo(Integer.parseInt(no));
		try{
			int cnt=dao.insert_reply(vo);
			
			//3.
			if(cnt>0){ %>
				<script type="text/javascript">
					alert('글쓰기처리 되었습니다.');
					location.href="reviewBoard_detail.jsp?no=<%=no%>";
				</script>				
			<%}else{%>
				<script type="text/javascript">
					alert('글쓰기처리 실패');
					history.back();
				</script>				
			<%}
		}catch(SQLException e){
			e.printStackTrace();
		}
	%>
</body>
</html>



