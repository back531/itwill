package com.ksool.common;

import java.util.Date;

public class Utility {
	public static final String UPLOAD_PATH="upload";
	public static final String TEST_UPLOAD_PATH
	="C:\\Users\\User\\Desktop\\개발 프로그램\\JSP_Workspace\\semi-5\\WebContent\\upload";
	
	
	public static String displayRe(int step) {
		//답변글인 경우 단계별로 이미지 보여주기
		String result="";
		
		if(step>0){ 
			for(int k=0;k<step;k++){							
				result+="&nbsp";
			}//for 
			
			result+="<img src='../images/re.gif'>";
		}//if 
		
		return result;
	}
		
	public static String cutTitle(String title, int len) {
		//제목이 긴 경우 일부만 보여주기
		String result="";
		if(title.length()>len) {
			result = title.substring(0, len)+"...";
		}else {
			result=title;
		}
		
		return result;
	}

	public static String displayNew(Date regdate) {
		//24시간 이내의 글인 경우 new 이미지 보여주기
		String result="";
		
		Date today = new Date();
		
		long gap=(today.getTime() - regdate.getTime())/1000;		
		gap = gap/(60*60);
		
		if(gap<24) {
			result="<img src='../images/new.gif'>";
		}
		
		return result;
	}
	
	public static String displayFile(String fileName) {
		String result="";
		
		if(fileName!=null && !fileName.isEmpty()) {
			result="<img src='../images/file.gif' alt='file이미지'/>";
		}
		
		return result;
	}
	
	public static String getFileInfo(String originalFileName, long fileSize) {
		String result="";
		
		if(originalFileName!=null && !originalFileName.isEmpty()) {
			float sFileSize = fileSize/1024f;
			sFileSize = Math.round(sFileSize*10)/10f;
			
			result = displayFile(originalFileName) + " "
					+originalFileName + " ("+sFileSize +"KB)";
		}
		
		return result;
	}
}
