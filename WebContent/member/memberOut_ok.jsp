<%@page import="java.sql.SQLException"%>
<%@page import="com.mysemi.member.model.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../login/loginCheck.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="memberService" class="com.mysemi.member.model.MemberService" 
   scope="session"></jsp:useBean>
   
<%
   //1
   request.setCharacterEncoding("utf-8");
   String pwd=request.getParameter("pwd");
   String userid=(String)session.getAttribute("userid");
   
   //2
   String msg="비밀번호 체크 실패", url="/member/memberOut.jsp";
   try{
      
      int result=memberService.loginProc(userid, pwd);
      if(result==MemberService.LOGIN_OK){
         int cnt=memberService.withdrawMember(userid);
         if(cnt>0){
            //세션 정보 제거
            session.invalidate();
            
            //쿠키 제거
            Cookie ck = new Cookie("ck_userid", userid);
            ck.setPath("/");
            ck.setMaxAge(0);
            response.addCookie(ck);
            
            msg="회원탈퇴 처리되었습니다.";
            url="/index.jsp";
         }else{
            msg="회원탈퇴 실패!";
         }
      }else if(result==MemberService.PWD_DISAGREE){
         msg="비밀번호가 일치하지 않습니다";
      }
      
   }catch(SQLException e){
      e.printStackTrace();
   }
   
   //3
   request.setAttribute("msg", msg);
   request.setAttribute("url", url);
   
%>
<jsp:forward page="../common/message.jsp"></jsp:forward>
</body>
</html>