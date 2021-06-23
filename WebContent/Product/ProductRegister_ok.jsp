<%@page import="java.io.File"%>
<%@page import="com.ksool.common.Utility2"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.ksool.common.Utility"%>
<%@page import="java.io.IOException"%>
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
		String upPath=Utility2.UPLOAD_PATH;
		String saveDir = application.getRealPath(upPath);
		saveDir = config.getServletContext().getRealPath(upPath);
		saveDir = Utility2.TEST_UPLOAD_PATH;
		int maxSize=5*1024*1024;
		
		try{
			MultipartRequest mr = new MultipartRequest(request, saveDir, maxSize,
					"utf-8", new DefaultFileRenamePolicy());
			System.out.println("업로드 완료!");	
		
			String fileName=mr.getFilesystemName("upfile");
			String originFileName="";
			long fileSize=0;
			//업로드한 경우에만 파일 크기 얻어오기
			if(fileName!=null && !fileName.isEmpty()){
				originFileName=mr.getOriginalFileName("upfile");
				File file=mr.getFile("upfile");
				fileSize=file.length();
			}
		
		//1. 요청 파라미터 읽어오기
		//post - 요청 파라미터에 대한 한글 인코딩 처리
		request.setCharacterEncoding("utf-8");	
		String CT_NO=request.getParameter("CT_NO");
		String P_NAME=request.getParameter("P_NAME");
		String P_PRICE=request.getParameter("P_PRICE");
		String P_CT=request.getParameter("P_CT");
		String P_CONTENT=request.getParameter("P_CONTENT");
		String P_STOCK=request.getParameter("P_STOCK");
		String getImagemain=request.getParameter("getImagemain");
	
		//2. db작업
		ProductDAO dao = new ProductDAO();		
		ProductVO vo = new ProductVO(); 
		
		vo.setImagemain(getImagemain);
		vo.setP_STOCK(Integer.parseInt(P_STOCK));
		vo.setP_CONTENT(P_CONTENT);
		vo.setP_CT(P_CT);
		vo.setP_PRICE(Integer.parseInt(P_PRICE));
		vo.setP_NAME(P_NAME);
		vo.setCT_NO(CT_NO);

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
	}catch(IOException e){
		e.printStackTrace();%>
		<script type="text/javascript">
			alert('5M 이상의 파일은 업로드할 수 없습니다.');
			history.back();
		</script>		
	<%	}catch(SQLException e){
			e.printStackTrace();
		}
		
	%>
</body>
</html>