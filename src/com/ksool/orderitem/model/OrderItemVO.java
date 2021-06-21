package com.ksool.orderitem.model;

import java.sql.Timestamp;

public class OrderItemVO {
	private int O_NO;
	private String userid;
	private String O_NAME;
	private String O_ADDR1;
	private String O_ADDR2;
	private String O_PHONE;
	private Timestamp O_DATE;
	private String O_STATE;
	private String O_REQUIRE;
	
	public OrderItemVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrderItemVO(int o_NO, String userid, String o_NAME, String o_ADDR1, String o_ADDR2, String o_PHONE,
			Timestamp o_DATE, String o_STATE, String o_REQUIRE) {
		super();
		O_NO = o_NO;
		this.userid = userid;
		O_NAME = o_NAME;
		O_ADDR1 = o_ADDR1;
		O_ADDR2 = o_ADDR2;
		O_PHONE = o_PHONE;
		O_DATE = o_DATE;
		O_STATE = o_STATE;
		O_REQUIRE = o_REQUIRE;
	}

	public int getO_NO() {
		return O_NO;
	}

	public void setO_NO(int o_NO) {
		O_NO = o_NO;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getO_NAME() {
		return O_NAME;
	}

	public void setO_NAME(String o_NAME) {
		O_NAME = o_NAME;
	}

	public String getO_ADDR1() {
		return O_ADDR1;
	}

	public void setO_ADDR1(String o_ADDR1) {
		O_ADDR1 = o_ADDR1;
	}

	public String getO_ADDR2() {
		return O_ADDR2;
	}

	public void setO_ADDR2(String o_ADDR2) {
		O_ADDR2 = o_ADDR2;
	}

	public String getO_PHONE() {
		return O_PHONE;
	}

	public void setO_PHONE(String o_PHONE) {
		O_PHONE = o_PHONE;
	}

	public Timestamp getO_DATE() {
		return O_DATE;
	}

	public void setO_DATE(Timestamp o_DATE) {
		O_DATE = o_DATE;
	}

	public String getO_STATE() {
		return O_STATE;
	}

	public void setO_STATE(String o_STATE) {
		O_STATE = o_STATE;
	}

	public String getO_REQUIRE() {
		return O_REQUIRE;
	}

	public void setO_REQUIRE(String o_REQUIRE) {
		O_REQUIRE = o_REQUIRE;
	}

	@Override
	public String toString() {
		return "OrderItemVO [O_NO=" + O_NO + ", userid=" + userid + ", O_NAME=" + O_NAME + ", O_ADDR1=" + O_ADDR1
				+ ", O_ADDR2=" + O_ADDR2 + ", O_PHONE=" + O_PHONE + ", O_DATE=" + O_DATE + ", O_STATE=" + O_STATE
				+ ", O_REQUIRE=" + O_REQUIRE + "]";
	}
	
	
}
