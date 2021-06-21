package com.ksool.orderproduct;

public class OrderProductVO {
	private int COL;
	private String PID;
	private int O_NO;
	private int O_QTY;
	private int O_PRICE;
	
	public OrderProductVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrderProductVO(int cOL, String pID, int o_NO, int o_QTY, int o_PRICE) {
		super();
		COL = cOL;
		PID = pID;
		O_NO = o_NO;
		O_QTY = o_QTY;
		O_PRICE = o_PRICE;
	}

	public int getCOL() {
		return COL;
	}

	public void setCOL(int cOL) {
		COL = cOL;
	}

	public String getPID() {
		return PID;
	}

	public void setPID(String pID) {
		PID = pID;
	}

	public int getO_NO() {
		return O_NO;
	}

	public void setO_NO(int o_NO) {
		O_NO = o_NO;
	}

	public int getO_QTY() {
		return O_QTY;
	}

	public void setO_QTY(int o_QTY) {
		O_QTY = o_QTY;
	}

	public int getO_PRICE() {
		return O_PRICE;
	}

	public void setO_PRICE(int o_PRICE) {
		O_PRICE = o_PRICE;
	}

	@Override
	public String toString() {
		return "OrderProductVO [COL=" + COL + ", PID=" + PID + ", O_NO=" + O_NO + ", O_QTY=" + O_QTY + ", O_PRICE="
				+ O_PRICE + "]";
	}
	
	
}
