package com.ksool.board.model;

import java.sql.Timestamp;

public class NoticeVO {
	private int no;
	private String title;
	private String subtitle;
	private String content;
	private Timestamp regdate;
	private String image_name;
	
	public NoticeVO() {
		super();
	}

	public NoticeVO(int no, String title, String subtitle, String content, Timestamp regdate, String image_name) {
		super();
		this.no = no;
		this.title = title;
		this.subtitle = subtitle;
		this.content = content;
		this.regdate = regdate;
		this.image_name = image_name;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSubtitle() {
		return subtitle;
	}

	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}

	public String getImage_name() {
		return image_name;
	}

	public void setImage_name(String image_name) {
		this.image_name = image_name;
	}

	@Override
	public String toString() {
		return "NoticeVO [no=" + no + ", title=" + title + ", subtitle=" + subtitle + ", content=" + content
				+ ", regdate=" + regdate + ", image_name=" + image_name + "]";
	}
	
	
}
