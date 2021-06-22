package com.ksool.board.model;

import java.sql.Timestamp;

public class R_BoardVO {
	private int no;
	private String name;	
	private String title;
	private Timestamp regdate;
	private int readcount;
	private String content;
	private String delFlag;
	
	public R_BoardVO() {
		super();
	}

	public R_BoardVO(int no, String name, String title, Timestamp regdate, int readcount, String content,
			String delFlag) {
		super();
		this.no = no;
		this.name = name;
		this.title = title;
		this.regdate = regdate;
		this.readcount = readcount;
		this.content = content;
		this.delFlag = delFlag;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}

	public int getReadcount() {
		return readcount;
	}

	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDelFlag() {
		return delFlag;
	}

	public void setDelFlag(String delFlag) {
		this.delFlag = delFlag;
	}

	@Override
	public String toString() {
		return "R_BoardVO [no=" + no + ", name=" + name + ", title=" + title + ", regdate=" + regdate + ", readcount="
				+ readcount + ", content=" + content + ", delFlag=" + delFlag + "]";
	}

	
}
