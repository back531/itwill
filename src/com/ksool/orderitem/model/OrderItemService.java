package com.ksool.orderitem.model;

import java.sql.SQLException;
import java.util.List;

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
	
	public List<OrderItemVO> selectAll(String userid) throws SQLException{
		return orderitemDao.selectAll(userid);
	}
}
