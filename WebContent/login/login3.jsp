<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
	Cookie[] ckArr=request.getCookies();
 	String ck_value="";
 	if(ckArr!=null){
 		for(int i=0; i<ckArr.length;i++){
 			String name = ckArr[i].getName();
 			if(name.equals("userid"))	{
 			ck_value= ckArr[i].getValue();
 			break;
 		}
 		}
 	}
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<script type="text/javascript">
$(function(){
	$('#lg_submit').click(function(){
		$('.infobox').each(function(idx, item){
			if($(this).val().length<1){
				$(this).next().show();
				event.preventDefault();
				$(item).focus();
			}else{
				$(this).next().hide();					
			}
		});
	});
});
</script>
<style type="text/css">
	.error{
		color: red;
		display: none;
	}
</style>
<body>
<article class="simpleForm">
	<form name="frmLogin" method="post"	action="login_ok.jsp">
		<fieldset>
			<legend>로그인</legend>
			<div>
				<input type="text" name="userid" id="userid" class="infobox"
					value="<%=ck_value%>" placeholder="아이디를 입력하세요">
				<span class="error">아이디 미입력!</span>
			</div>
			<div>
				<input type="password" name="pwd" id="pwd" class="infobox"
				 placeholder="비밀번호를 입력하세요">
				<span class="error">비밀번호 미입력!</span>
			</div>
			<div class="align_center">
				<input type="submit" id="lg_submit" value="로그인">
				<input type="checkbox" name="chkSave" id="chkSave"
					<%if(ck_value!=null && !ck_value.isEmpty()){ %>
						checked="checked"
					<%} %>
				>
				<label for="chkSave">아이디 저장하기</label>
			</div>

				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="basic-addon1">@</span>
					</div>
					<input type="text" class="form-control" placeholder="Username"
						aria-label="Username" aria-describedby="basic-addon1">
				</div>
			</fieldset>
	</form>
</article>
			
</body>
</html>