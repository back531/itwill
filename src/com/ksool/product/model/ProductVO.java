package com.ksool.product.model;

import java.security.Timestamp;

public class ProductVO {
	private int PID;
	private String CT_NO;
	private String P_NAME;
	private int P_PRICE;
	private String P_CT;
	private String P_CONTENT;
	private int P_STOCK;
	private Timestamp P_REGDATE;
	private String P_STATE;
	private String Imagemain;
	
	public ProductVO() {
		super();
	}

	
	
	public ProductVO(int pID, String cT_NO, String p_NAME, int p_PRICE, String p_CT, String p_CONTENT, int p_STOCK,
			Timestamp p_REGDATE, String p_STATE, String imagemain) {
		super();
		this.PID = pID;
		this.CT_NO = cT_NO;
		this.P_NAME = p_NAME;
		this.P_PRICE = p_PRICE;
		this.P_CT = p_CT;
		this.P_CONTENT = p_CONTENT;
		this.P_STOCK = p_STOCK;
		this.P_REGDATE = p_REGDATE;
		this.P_STATE = p_STATE;
		this.Imagemain = imagemain;
	}
		
	

	public int getPID() {
		return PID;
	}



	public void setPID(int pID) {
		PID = pID;
	}



	public String getCT_NO() {
		return CT_NO;
	}



	public void setCT_NO(String cT_NO) {
		CT_NO = cT_NO;
	}



	public String getP_NAME() {
		return P_NAME;
	}



	public void setP_NAME(String p_NAME) {
		P_NAME = p_NAME;
	}



	public int getP_PRICE() {
		return P_PRICE;
	}



	public void setP_PRICE(int p_PRICE) {
		P_PRICE = p_PRICE;
	}



	public String getP_CT() {
		return P_CT;
	}



	public void setP_CT(String p_CT) {
		P_CT = p_CT;
	}



	public String getP_CONTENT() {
		return P_CONTENT;
	}



	public void setP_CONTENT(String p_CONTENT) {
		P_CONTENT = p_CONTENT;
	}



	public int getP_STOCK() {
		return P_STOCK;
	}



	public void setP_STOCK(int p_STOCK) {
		P_STOCK = p_STOCK;
	}



	public Timestamp getP_REGDATE() {
		return P_REGDATE;
	}



	public void setP_REGDATE(Timestamp p_REGDATE) {
		P_REGDATE = p_REGDATE;
	}



	public String getP_STATE() {
		return P_STATE;
	}



	public void setP_STATE(String p_STATE) {
		P_STATE = p_STATE;
	}



	public String getImagemain() {
		return Imagemain;
	}



	public void setImagemain(String imagemain) {
		Imagemain = imagemain;
	}



	@Override
	public String toString() {
		return "ProductVO [PID=" + PID + ", CT_NO=" + CT_NO + ", P_NAME=" + P_NAME + ", P_PRICE=" + P_PRICE + ", P_CT="
				+ P_CT + ", P_CONTENT=" + P_CONTENT + ", P_STOCK=" + P_STOCK + ", P_COLOR=" +  ", P_REGDATE="
				+ P_REGDATE + ", P_STATE=" + P_STATE + ", Imagemain=" + Imagemain + "]";
	}
	
	
	
	
	
	
	
	
	
}
