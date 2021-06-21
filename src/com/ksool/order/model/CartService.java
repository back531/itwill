package com.ksool.order.model;

import java.sql.SQLException;
import java.util.List;

public class CartService {
	private CartDAO cartDao;
	
	public CartService() {
		cartDao=new CartDAO();
	}
	
	public int updateCart(CartVO vo) throws SQLException {
		return cartDao.updateCart(vo);
	}
	
	public List<CartVO> selectAll() throws SQLException{
		return cartDao.selectAll();
	}
	
	public int deleteCart(int c_no) throws SQLException {
		return cartDao.deleteCart(c_no);
	}
}
