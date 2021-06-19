package com.ksool.order.model;

public class CartVO {
	private int C_NO;
	private String M_ID2;
	private String C_PNAME;
	private int C_QTY; 
	private int C_PRICE;
	private String PID;
	
	public CartVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CartVO(int c_NO, String m_ID2, String c_PNAME, int c_QTY, int c_PRICE, String pID) {
		super();
		C_NO = c_NO;
		M_ID2 = m_ID2;
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

	public String getM_ID2() {
		return M_ID2;
	}

	public void setM_ID2(String m_ID2) {
		M_ID2 = m_ID2;
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
		return "CartVO [C_NO=" + C_NO + ", M_ID2=" + M_ID2 + ", C_PNAME=" + C_PNAME + ", C_QTY=" + C_QTY + ", C_PRICE="
				+ C_PRICE + ", PID=" + PID + "]";
	}

	
	
}
