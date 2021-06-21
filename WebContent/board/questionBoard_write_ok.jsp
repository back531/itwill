<%@page import="com.ksool.board.model.Q_BoardVO"%>
<%@page import="com.ksool.board.model.Q_BoardDAO"%>
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
		String title=request.getParameter("title");
		String userid=request.getParameter("userid");
		String content=request.getParameter("content");
		
		//ip 읽어오기
		String ip=request.getRemoteAddr();
		String ip2=request.getRemoteHost();
		System.out.println("ip="+ip+", ip2="+ip2);
		
		//2.
		Q_BoardDAO dao = new Q_BoardDAO();
		Q_BoardVO vo = new Q_BoardVO();
		vo.setContent(content);
		vo.setName(userid);
		vo.setTitle(title);
		try{
			int cnt=dao.insert_Q_Board(vo);
			
			//3.
			if(cnt>0){ %>
				<script type="text/javascript">
					alert('글쓰기처리 되었습니다.');
					location.href="questionBoard.jsp";
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



