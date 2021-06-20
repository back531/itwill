<%@page import="com.ksool.board.model.Q_BoardVO"%>
<%@page import="com.ksool.board.model.Q_BoardDAO"%>
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
			
			//1.
			String title=mr.getParameter("title");
			String content=mr.getParameter("content");
			
			//ip 읽어오기
			String ip=request.getRemoteAddr();
			String ip2=request.getRemoteHost();
			System.out.println("ip="+ip+", ip2="+ip2);
			
			//2.
			Q_BoardDAO dao = new Q_BoardDAO();
			Q_BoardVO vo = new Q_BoardVO();
			vo.setContent(content);
			vo.setTitle(title);
			vo.setFileName(fileName);
			vo.setFileSize(fileSize);
			vo.setOriginalFileName(originFileName);
			
			int cnt=dao.insert_Q_Board(vo);
			
			//3.
			if(cnt>0){ %>
				<script type="text/javascript">
					alert('글쓰기처리 되었습니다.');
					location.href="questionBoard.jsp";
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
				alert('5M 이상의 파일은 업로드할 수 없습니다.');
				history.back();
			</script>		
	<%	}catch(SQLException e){
			e.printStackTrace();
		}
	%>
</body>
</html>



