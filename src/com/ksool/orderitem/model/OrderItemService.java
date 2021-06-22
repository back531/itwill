package com.ksool.orderitem.model;

import java.sql.SQLException;

public class OrderItemService {
	private OrderItemDAO orderitemDao;
	
	public OrderItemService() {
		orderitemDao=new OrderItemDAO();
	}
	
	public int insertOrderItem(OrderItemVO vo) throws SQLException {
		return orderitemDao.insertOrderItem(vo);
	}
	
	public int insertSubscribe(OrderItemVO vo) throws SQLException {
		return orderitemDao.insertSubscribe(vo);
	}
}
