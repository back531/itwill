<%@page import="java.sql.Timestamp"%>
<%@page import="com.ksool.board.model.NoticeVO"%>
<%@page import="com.ksool.board.model.NoticeDAO"%>
<%@page import="com.ksool.common.Utility"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.IOException"%>
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
		//write.jsp에서 post방식으로 서브밋
		//파일 업로드 처리하기
		String upPath=Utility.UPLOAD_PATH;
		String saveDir = application.getRealPath(upPath);
		saveDir = config.getServletContext().getRealPath(upPath);
		saveDir = Utility.TEST_UPLOAD_PATH;
		int maxSize=2*1024*1024;
		
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
			}else{
				originFileName="default_img.jpg";
			}
			
			//1.
			String content=mr.getParameter("content");
			String image_name=mr.getParameter("image_name");
			String subtitle=mr.getParameter("subtitle");
			String title=mr.getParameter("title");
			
			//ip 읽어오기
			String ip=request.getRemoteAddr();
			String ip2=request.getRemoteHost();
			System.out.println("ip="+ip+", ip2="+ip2);
			
			//2.
			NoticeDAO dao = new NoticeDAO();
			NoticeVO vo = new NoticeVO();
			vo.setContent(content);
			vo.setImage_name(originFileName);
			vo.setSubtitle(subtitle);
			vo.setTitle(title);

			
			int cnt=dao.insert_notice(vo);
			
			//3.
			if(cnt>0){ %>
				<script type="text/javascript">
					alert('글쓰기처리 되었습니다.');
					location.href="Notice.jsp";
				</script>				
			<%}else{%>
				<script type="text/javascript">
					alert('글쓰기처리 실패');
					history.back();
				</script>				
			<%}
		}catch(IOException e){
			e.printStackTrace();%>
			<script type="text/javascript">
				alert('2M 이상의 파일은 업로드할 수 없습니다.');
				history.back();
			</script>		
	<%	}catch(SQLException e){
			e.printStackTrace();
		}
	%>
</body>
</html>



