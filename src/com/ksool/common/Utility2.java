package com.ksool.common;

import java.util.Date;

public class Utility2 {
	public static final String UPLOAD_PATH="upload";
	public static final String TEST_UPLOAD_PATH
	="E:\\workspace_list\\itwill\\WebContent\\images";
	
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
