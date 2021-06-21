package com.ksool.orderproduct;

import java.sql.SQLException;

public class OrderProductService {
	private OrderProductDAO orderproductDao;
	
	public OrderProductService() {
		orderproductDao=new OrderProductDAO();
	}
	
	public int insertOrderProduct(String userid) throws SQLException {
		return orderproductDao.insertOrderProduct(userid);
	}
}
