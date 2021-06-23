package com.ksool.order.model;

import java.sql.SQLException;
import java.util.List;

public class CartService {
	private CartDAO cartDao;
	
	public CartService() {
		cartDao=new CartDAO();
	}
	
	public int updateCart(int qty, int no) throws SQLException {
		return cartDao.updateCart(qty, no);
	}
	
	public List<CartVO> selectAll(String userid) throws SQLException{
		return cartDao.selectAll(userid);
	}
	
	public int deleteCart() throws SQLException {
		return cartDao.deleteCart();
	}
	
	public int deleteC(int c_no) throws SQLException {
		return cartDao.deleteC(c_no);
	}
	
}
