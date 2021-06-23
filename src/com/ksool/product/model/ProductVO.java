package com.ksool.product.model;

import java.security.Timestamp;

public class ProductVO {
	private int PID;
	private String NO;
	private String NAME;
	private int PRICE;
	private String CT;
	private String CONTENT;
	private int STOCK;
	private Timestamp REGDATE;
	private String STATE;
	private String Imagemain;
	
	public ProductVO() {
		super();
	}

	public ProductVO(int pID, String nO, String nAME, int pRICE, String cT, String cONTENT, int sTOCK,
			Timestamp rEGDATE, String sTATE, String imagemain) {
		super();
		PID = pID;
		NO = nO;
		NAME = nAME;
		PRICE = pRICE;
		CT = cT;
		CONTENT = cONTENT;
		STOCK = sTOCK;
		REGDATE = rEGDATE;
		STATE = sTATE;
		Imagemain = imagemain;
	}

	
	
	public int getPID() {
		return PID;
	}

	public void setPID(int pID) {
		PID = pID;
	}

	public String getNO() {
		return NO;
	}

	public void setNO(String nO) {
		NO = nO;
	}

	public String getNAME() {
		return NAME;
	}

	public void setNAME(String nAME) {
		NAME = nAME;
	}

	public int getPRICE() {
		return PRICE;
	}

	public void setPRICE(int pRICE) {
		PRICE = pRICE;
	}

	public String getCT() {
		return CT;
	}

	public void setCT(String cT) {
		CT = cT;
	}

	public String getCONTENT() {
		return CONTENT;
	}

	public void setCONTENT(String cONTENT) {
		CONTENT = cONTENT;
	}

	public int getSTOCK() {
		return STOCK;
	}

	public void setSTOCK(int sTOCK) {
		STOCK = sTOCK;
	}

	public Timestamp getREGDATE() {
		return REGDATE;
	}

	public void setREGDATE(Timestamp rEGDATE) {
		REGDATE = rEGDATE;
	}

	public String getSTATE() {
		return STATE;
	}

	public void setSTATE(String sTATE) {
		STATE = sTATE;
	}

	public String getImagemain() {
		return Imagemain;
	}

	public void setImagemain(String imagemain) {
		Imagemain = imagemain;
	}

	@Override
	public String toString() {
		return "ProductVO [PID=" + PID + ", NO=" + NO + ", NAME=" + NAME + ", PRICE=" + PRICE + ", CT=" + CT
				+ ", CONTENT=" + CONTENT + ", STOCK=" + STOCK + ", REGDATE=" + REGDATE + ", STATE=" + STATE
				+ ", Imagemain=" + Imagemain + "]";
	}

	
	
	
}
