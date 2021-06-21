package com.ksool.order.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ksool.db.ConnectionPoolMgr2;


public class CartDAO {
	private ConnectionPoolMgr2 pool;
	
	public CartDAO() {
		pool=new ConnectionPoolMgr2();
	}
	
	public int updateCart(CartVO vo) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		
		try {
			conn=pool.getConnection();
			
			String sql="update cart set c_qty=?, c_price=? where c_no=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, vo.getC_QTY());
			ps.setInt(2, vo.getC_PRICE());
			ps.setInt(3, vo.getC_NO());
			
			int cnt=ps.executeUpdate();
			System.out.println("수정 결과 cnt="+cnt+", vo="+vo);
			return cnt;
		}finally {
			pool.dbClose(ps, conn);
		}
	}
	
	public List<CartVO> selectAll() throws SQLException{
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		List<CartVO> list=new ArrayList<CartVO>();
		try {
			conn=pool.getConnection();
			
			String sql="select * from cart order by c_no";
			ps=conn.prepareStatement(sql);
			
			rs=ps.executeQuery();
			while(rs.next()) {
				int c_no=rs.getInt(1);
				String m_id2=rs.getString(2);
				String c_pname=rs.getString(3);
				int c_qty=rs.getInt(4);
				int c_price=rs.getInt(5);
				String pid=rs.getString(6);
				
				CartVO vo=new CartVO(c_no, m_id2, c_pname, c_qty, c_price, pid);
				
				list.add(vo);
			}
			System.out.println("전체 조회 결과 list.size="+list.size());
			return list;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}
	
	public int deleteCart(int c_no) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		
		try {
			//1,2 conn
			conn=pool.getConnection();
			
			//3 ps
			String sql="delete from cart"
					+ " where c_no=?";
			ps=conn.prepareStatement(sql);
			
			ps.setInt(1, c_no);
			
			//4. exec
			int cnt=ps.executeUpdate();
			System.out.println("삭제 결과, cnt="+cnt+", 매개변수 c_no="+c_no);
			
			return cnt;
		}finally {
			pool.dbClose(ps, conn);
		}
	}
}
