package com.ksool.board.model;

import java.sql.Timestamp;

public class ReplyVO {
	private int no;
	private String userid;
	private String content;
	private String delflag;
	private Timestamp regdate;
	
	public ReplyVO() {
		super();
	}

	public ReplyVO(int no, String userid, String content, String delflag, Timestamp regdate) {
		super();
		this.no = no;
		this.userid = userid;
		this.content = content;
		this.delflag = delflag;
		this.regdate = regdate;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDelflag() {
		return delflag;
	}

	public void setDelflag(String delflag) {
		this.delflag = delflag;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	@Override
	public String toString() {
		return "ReplyVO [no=" + no + ", userid=" + userid + ", content=" + content + ", delflag=" + delflag
				+ ", regdate=" + regdate + "]";
	}

}
