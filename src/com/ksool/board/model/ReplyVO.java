package com.ksool.board.model;

import java.sql.Timestamp;

public class ReplyVO {
	private int no;
	private int bno;
	private String userid;
	private String content;
	private String delflag;
	private Timestamp regdate;
	
	public ReplyVO() {
		super();
	}

	public ReplyVO(int no, int bno, String userid, String content, String delflag, Timestamp regdate) {
		super();
		this.no = no;
		this.bno = bno;
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

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
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

	@Override
	public String toString() {
		return "ReplyVO [no=" + no + ", bno=" + bno + ", userid=" + userid + ", content=" + content + ", delflag="
				+ delflag + ", regdate=" + regdate + "]";
	}

	

}
