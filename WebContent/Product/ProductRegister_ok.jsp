<%@page import="com.ksool.product.model.ProductVO"%>
<%@page import="com.ksool.product.model.ProductDAO"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		
		//1. 요청 파라미터 읽어오기
		//post - 요청 파라미터에 대한 한글 인코딩 처리
		request.setCharacterEncoding("utf-8");	
		String no=request.getParameter("no");
		String name=request.getParameter("name");
		String price=request.getParameter("price");
		String content=request.getParameter("content");
		String stock=request.getParameter("stock");
		String getImagemain=request.getParameter("getImagemain");
		
		String ip=request.getRemoteAddr();
		String ip2=request.getRemoteHost();
		System.out.println("ip="+ip+", ip2="+ip2);
	
		//2. db작업
		ProductDAO dao = new ProductDAO();		
		ProductVO vo = new ProductVO(); 
		
		vo.setImagemain(getImagemain);
		

		try{
			int cnt=dao.insert_Product(vo);
			
			//3.
			if(cnt>0){ %>
				<script type="text/javascript">
					alert('상품등록 되었습니다.');
					location.href="Productlist.jsp";
				</script>				
			<%}else{%>
				<script type="text/javascript">
					alert('상품등록 실패');
					history.back();
				</script>				
			<%}
		}catch(SQLException e){
			e.printStackTrace();
		}
	
	%>
</body>
</html>