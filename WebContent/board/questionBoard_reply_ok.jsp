<%@page import="com.ksool.board.model.Q_BoardVO"%>
<%@page import="com.ksool.board.model.Q_BoardDAO"%>
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
	//reply.jsp에서 post방식으로 서브밋됨
	//1.
	request.setCharacterEncoding("utf-8");
	
	String title=request.getParameter("title");
	String name=request.getParameter("userid");
	String content=request.getParameter("content");
	String groupNo=request.getParameter("groupNo");
	String step=request.getParameter("step");
	String sortNo=request.getParameter("sortNo");
		
	//2 
	Q_BoardDAO dao = new Q_BoardDAO();
	Q_BoardVO vo = new Q_BoardVO();
	vo.setContent(content);
	vo.setName(name);
	vo.setTitle(title);
	vo.setGroupNo(Integer.parseInt(groupNo));
	vo.setStep(Integer.parseInt(step));
	vo.setSortNo(Integer.parseInt(sortNo));
	
	int cnt = dao.reply(vo);
	
	//3
	if(cnt>0){ %>
		<script type="text/javascript">
			alert('답변이 등록되었습니다.');
			location.href="questionBoard.jsp";
		</script>	
<%	}else{%>
		<script type="text/javascript">
			alert('답변처리 실패.');
			history.go(-1);
		</script>			
<%	}%>
</body>
</html>