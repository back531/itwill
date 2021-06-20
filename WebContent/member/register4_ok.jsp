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
request.setCharacterEncoding("utf-8"); 
%>
<jsp:useBean id="memVo" class="com.mysemi.member.model.MemberVO" scope="page"> </jsp:useBean>
<jsp:useBean id="memberDao" class="com.mysemi.member.model.MemberDAO" scope="session"></jsp:useBean>
   <%
      
   request.setCharacterEncoding("utf-8");
   String userid=request.getParameter("userid");
   String pwd=request.getParameter("pwd");
   String name=request.getParameter("name");
   String hp=request.getParameter("hp");
   String email=request.getParameter("email");
   String address=request.getParameter("address");
   String addressDetail=request.getParameter("addressDetail");
   
   memVo.setAddress(address);
   memVo.setAddressDetail(addressDetail);
   memVo.setEmail(email);
   memVo.setHp(hp);
   memVo.setName(name);
   memVo.setPwd(pwd);
   memVo.setUserid(userid);
   
   
      String msg = "회원가입 실패!", url="/member/register4.jsp";
      try{
         int cnt = memberDao.insertMember(memVo);
         //3
         if(cnt>0){
            msg="회원가입되었습니다";
            url="../index.jsp";
         }
      }catch(SQLException e){
         e.printStackTrace();
      }
      
      request.setAttribute("msg", msg);
      request.setAttribute("url", url);
   %>
   
   <jsp:forward page="../common/message.jsp"></jsp:forward>
   
</body>
</html>