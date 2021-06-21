package com.ksool.orderproduct;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.ksool.db.ConnectionPoolMgr2;

public class OrderProductDAO {
	private ConnectionPoolMgr2 pool;

	public OrderProductDAO() {
		pool=new ConnectionPoolMgr2();
	}
	
	public int insertOrderProduct(String userid) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		
		try {
			conn=pool.getConnection();
			
			String sql="insert into order_product(col,pid,o_qty, o_price, o_no)"
					+ " select c.c_no, c.c_pname, c.c_qty, c.c_price, o.o_no"
					+ " from cart c join order_item o"
					+ " on c.userid=o.userid where c.userid=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);
			
			int cnt=ps.executeUpdate();
			System.out.println("주문상품 입력 cnt="+cnt);
			return cnt;
		}finally {
			
		}
	}
}
