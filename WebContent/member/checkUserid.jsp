<%@page import="com.mysemi.member.model.MemberService"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberService" class="com.mysemi.member.model.MemberService" 
   scope="session"></jsp:useBean>
   
<%
 
   request.setCharacterEncoding("utf-8");
   String userid=request.getParameter("userid");
   
   //2
   int result=0;
   if(userid!=null && !userid.isEmpty()){
      try{
         result=memberService.checkDuplicate(userid);         
      }catch(SQLException e){
         e.printStackTrace();
      }
   }
   
   //3
   
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>checkUserid.jsp</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/mainstyle.css"/>
<style type="text/css">

 @font-face{
 	font-family:'Cafe24SsurroundAir';
 	src:url('../font/Cafe24SsurroundAir.ttf')
 }
 
 body{
 	font-family:Cafe24SsurroundAir;
 }
 p{
 	color: orange;
 	}

</style>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
   $(function(){
      $('#btUse').click(function(){
         $(opener.document).find('#userid').val('<%=userid%>');
         $(opener.document).find('#chkId').val('Y');
         
         self.close();
      });
   });
</script>
</head>
<body>

<h2>userid check</h2>
<br>
<form name="frmDup" method="post" action="checkUserid.jsp">
   <label for="userid">아이디</label>
   <input type="text" name="userid" id="userid" value="<%=userid%>">
   <input type="submit" class="btn btn-outline-secondary" value="아이디 확인">
   
   <%if(result==MemberService.UNUSABLE_ID){ %>
      <p>이미 등록된 아이디입니다. 다른 아이디를 입력하세요</p>
   <%}else if(result==MemberService.USABLE_ID){ %>
      <input type="button" class="btn btn-outline-secondary" value="사용" id="btUse"><br><br>
       <p>사용가능한 아이디입니다. [사용] 버튼을 누르세요</p>
   <%}//if %>
</form>

</body>
</html>



