<%@page import="com.ksool.board.model.R_BoardVO"%>
<%@page import="com.ksool.board.model.R_BoardDAO"%>
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
   String pwd = request.getParameter("pwd");
   
   R_BoardDAO dao = new R_BoardDAO();
   R_BoardVO vo = new R_BoardVO();
   
   vo.setNo(Integer.parseInt(no));

   
   try{
	  if(pwd.equals(session.getAttribute("pwd"))){ 
	     dao.delete_r_board(vo); %>	      
         <script type="text/javascript">
            alert("삭제가 완료되었습니다.");
            location.href="reviewBoard.jsp";
         </script>
	  <%}else{ %>
         <script type="text/javascript">
            alert("비밀번호가 일치하지 않습니다.");
            history.go(-1);
         </script>
	  <%}
   }catch(SQLException e){
      e.printStackTrace();
   }
   
%>
</body>
</html>