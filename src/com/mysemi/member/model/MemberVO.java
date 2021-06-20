package com.mysemi.member.model;

import java.sql.Timestamp;

public class MemberVO {
    private String userid; 
    private String pwd;
    private String name;
    private String hp ;
    private String email;
    private String address;
    private String addressDetail;
    private int status;
    private Timestamp outdate ;
    private Timestamp joindate ;
    private int grade;
    private int point;
    
	public MemberVO() {
		super();
	}

	public MemberVO(String userid, String pwd, String name, String hp, String email, String address, String addressDetail,
			int status, Timestamp outdate, Timestamp joindate, int grade, int point) {
		super();
		this.userid = userid;
		this.pwd = pwd;
		this.name = name;
		this.hp = hp;
		this.email = email;
		this.address = address;
		this.addressDetail = addressDetail;
		this.status = status;
		this.outdate = outdate;
		this.joindate = joindate;
		this.grade = grade;
		this.point = point;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getHp() {
		return hp;
	}

	public void setHp(String hp) {
		this.hp = hp;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddressDetail() {
		return addressDetail;
	}

	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Timestamp getOutdate() {
		return outdate;
	}

	public void setOutdate(Timestamp outdate) {
		this.outdate = outdate;
	}

	public Timestamp getJoindate() {
		return joindate;
	}

	public void setJoindate(Timestamp joindate) {
		this.joindate = joindate;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	@Override
	public String toString() {
		return "MemberVO [userid=" + userid + ", pwd=" + pwd + ", name=" + name + ", hp=" + hp + ", email=" + email
				+ ", address=" + address + ", addressDetail=" + addressDetail + ", status=" + status + ", outdate="
				+ outdate + ", joindate=" + joindate + ", grade=" + grade + ", point=" + point + "]";
	}
    
	
    
}
