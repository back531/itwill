package com.ksool.orderproduct;

import java.sql.SQLException;

public class OrderProductService {
	private OrderProductDAO orderproductDao;
	
	public OrderProductService() {
		orderproductDao=new OrderProductDAO();
	}
	
	public int insertOrderProduct() throws SQLException {
		return orderproductDao.insertOrderProduct();
	}
}
