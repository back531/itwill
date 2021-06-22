
<%@page import="com.ksool.board.model.ReplyVO"%>
<%@page import="com.ksool.board.model.ReplyDAO"%>
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
   //delete.jsp 에서 post 방식으로 서브밋
   request.setCharacterEncoding("utf-8");

   String no = request.getParameter("no");
   String bno = request.getParameter("bno");
   String pno = request.getParameter("pno");
		   
   ReplyDAO dao = new ReplyDAO();
   ReplyVO vo = new ReplyVO();
   
   vo.setNo(Integer.parseInt(no));
   vo.setBno(Integer.parseInt(bno));
   
   
   try{ 
	     dao.delete_reply(vo);
	     %>
         <script type="text/javascript">
            alert("삭제가 완료되었습니다.");
            location.href="reviewBoard_detail.jsp?no=<%=pno%>";
         </script>
         <%
   }catch(SQLException e){
      e.printStackTrace();
   }
   
%>
</body>
</html>