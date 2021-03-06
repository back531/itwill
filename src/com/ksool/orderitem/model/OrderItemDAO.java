package com.ksool.orderitem.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.ksool.db.ConnectionPoolMgr2;
import com.ksool.order.model.CartVO;

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
	
	public int insertSubscribe(OrderItemVO vo) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		
		try {
			conn=pool.getConnection();
			
			String sql="insert into order_item(o_no, userid, o_name, o_addr1, o_addr2, o_phone, o_state, o_require)"
					+ " values(ORDERITEM_SEQ.nextval,?,?,?,?,?,'구독',?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, vo.getUserid());
			ps.setString(2, vo.getO_NAME());
			ps.setString(3, vo.getO_ADDR1());
			ps.setString(4, vo.getO_ADDR2());
			ps.setString(5, vo.getO_PHONE());
			ps.setString(6, vo.getO_REQUIRE());
			
			int cnt=ps.executeUpdate();
			System.out.printf("구독 신청 cnt="+cnt, "매개변수 vo="+vo);
			return cnt;
		}finally {
			pool.dbClose(ps, conn);
		}
	}
	
	public List<OrderItemVO> selectAll(String userid) throws SQLException{
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;

		List<OrderItemVO> list=new ArrayList<OrderItemVO>();
		try {
			conn=pool.getConnection();

			String sql="select * from order_item where userid=? order by o_no desc";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);

			rs=ps.executeQuery();
			while(rs.next()) {
				int o_no=rs.getInt("o_no");
				String o_name=rs.getString("o_name");
				String o_addr1=rs.getString("o_addr1");
				String o_addr2=rs.getString("o_addr2");
				String o_phone=rs.getString("o_phone");
				Timestamp o_date=rs.getTimestamp("o_date");
				String o_state=rs.getString("o_state");
				String o_require=rs.getString("o_require");
				
				OrderItemVO vo=new OrderItemVO(o_no, userid, o_name, o_addr1, o_addr2, o_phone, o_date, o_state, o_require);

				list.add(vo);
			}
			System.out.println("전체 조회 결과 list.size="+list.size());
			return list;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}
}
