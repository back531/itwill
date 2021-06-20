package com.ksool.order.model;

public class CartVO {
	private int C_NO;
	private String userid;
	private String C_PNAME;
	private int C_QTY; 
	private int C_PRICE;
	private String PID;
	
	public CartVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CartVO(int c_NO, String userid, String c_PNAME, int c_QTY, int c_PRICE, String pID) {
		super();
		C_NO = c_NO;
		this.userid = userid;
		C_PNAME = c_PNAME;
		C_QTY = c_QTY;
		C_PRICE = c_PRICE;
		PID = pID;
	}

	public int getC_NO() {
		return C_NO;
	}

	public void setC_NO(int c_NO) {
		C_NO = c_NO;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getC_PNAME() {
		return C_PNAME;
	}

	public void setC_PNAME(String c_PNAME) {
		C_PNAME = c_PNAME;
	}

	public int getC_QTY() {
		return C_QTY;
	}

	public void setC_QTY(int c_QTY) {
		C_QTY = c_QTY;
	}

	public int getC_PRICE() {
		return C_PRICE;
	}

	public void setC_PRICE(int c_PRICE) {
		C_PRICE = c_PRICE;
	}

	public String getPID() {
		return PID;
	}

	public void setPID(String pID) {
		PID = pID;
	}

	@Override
	public String toString() {
		return "CartVO [C_NO=" + C_NO + ", userid=" + userid + ", C_PNAME=" + C_PNAME + ", C_QTY=" + C_QTY
				+ ", C_PRICE=" + C_PRICE + ", PID=" + PID + "]";
	}

	
	
}
