<%@page import="com.mysemi.member.model.MemberService"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ include file="../login/loginCheck.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="vo"
		class="com.mysemi.member.model.MemberVO" scope="page"></jsp:useBean>
	
<jsp:useBean id="memberService"
		class="com.mysemi.member.model.MemberService" scope="session"></jsp:useBean>
<%
request.setCharacterEncoding("utf-8"); 
	
String pwd=request.getParameter("pwwd");
String address=request.getParameter("addrress");
String addressDetail=request.getParameter("addrressDetail");
String hp=request.getParameter("hpp");
String email=request.getParameter("emmail");
// 세션

String userid=(String)session.getAttribute("userid");
String name=(String)session.getAttribute("userName");

vo.setAddress(address);
vo.setAddressDetail(addressDetail);
vo.setEmail(email);
vo.setHp(hp);
vo.setName(name);
vo.setPwd(pwd);
vo.setUserid(userid);

//2
String msg="비밀번호 체크 실패",url="/member/memberEdit4.jsp";
try{
	int result=memberService.loginProc(userid,pwd);
	if(result==MemberService.LOGIN_OK){
		int cnt=memberService.updateMember(vo); 
		if(cnt>0){
			msg="회원수정 성공";
			url="/index.jsp";
		}else{
		 	msg="회원수정 실패!";
		}
	}else if(result==MemberService.PWD_DISAGREE){
		msg="비밀번호가 일치하지 않습니다.";
	}
}catch(SQLException e){
	e.printStackTrace();
}

%>

<jsp:forward page="../common/message.jsp"></jsp:forward>
</body>
</html>