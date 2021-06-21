package com.ksool.orderitem.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.ksool.db.ConnectionPoolMgr2;

public class OrderItemDAO {
	private ConnectionPoolMgr2 pool;
	
	public OrderItemDAO() {
		pool=new ConnectionPoolMgr2();
	}
	
	public int insertOrderItem(OrderItemVO vo) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		
		try {
			conn=pool.getConnection();
			
			String sql="insert into order_item(o_no, userid, o_name, o_addr1, o_addr2, o_phone, o_require)"
					+ " values(ORDERITEM_SEQ.nextval,?,?,?,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, vo.getUserid());
			ps.setString(2, vo.getO_NAME());
			ps.setString(3, vo.getO_ADDR1());
			ps.setString(4, vo.getO_ADDR2());
			ps.setString(5, vo.getO_PHONE());
			ps.setString(6, vo.getO_REQUIRE());
			
			int cnt=ps.executeUpdate();
			System.out.printf("주문 테이블 입력 cnt="+cnt, "매개변수 vo="+vo);
			return cnt;
		}finally {
			pool.dbClose(ps, conn);
		}
	}
}
