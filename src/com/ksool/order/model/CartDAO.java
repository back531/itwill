package com.ksool.order.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ksool.db.ConnectionPoolMgr2;
import com.sun.net.httpserver.Authenticator.Result;


public class CartDAO {
	private ConnectionPoolMgr2 pool;

	public CartDAO() {
		pool=new ConnectionPoolMgr2();
	}

	public int updateCart(int qty, int no) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;

		try {
			conn=pool.getConnection();

			String sql="update cart set c_qty=? where c_no=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, qty);
			ps.setInt(2, no);

			int cnt=ps.executeUpdate();
			System.out.println("수정 결과 cnt="+cnt+", qty="+qty+", no="+no);
			return cnt;
		}finally {
			pool.dbClose(ps, conn);
		}
	}

	public List<CartVO> selectAll(String userid) throws SQLException{
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;

		List<CartVO> list=new ArrayList<CartVO>();
		try {
			conn=pool.getConnection();

			String sql="select * from cart where userid=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userid);

			rs=ps.executeQuery();
			while(rs.next()) {
				int c_no=rs.getInt("c_no");
				String c_pname=rs.getString("c_pname");
				int c_qty=rs.getInt("c_qty");
				int c_price=rs.getInt("c_price");
				String pid=rs.getString("pid");

				CartVO vo=new CartVO(c_no, userid, c_pname, c_qty, c_price, pid);

				list.add(vo);
			}
			System.out.println("전체 조회 결과 list.size="+list.size());
			return list;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}

	public int deleteCart() throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;

		try {
			//1,2 conn
			conn=pool.getConnection();

			//3 ps
			String sql="delete from cart c where exists(select 1 from order_product o where c.c_no=o.col)";
			ps=conn.prepareStatement(sql);

			//4. exec
			int cnt=ps.executeUpdate();
			System.out.println("삭제 결과, cnt="+cnt);

			return cnt;
		}finally {
			pool.dbClose(ps, conn);
		}
	}

	public int deleteC(int c_no) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;

		try {
			//1,2 conn
			conn=pool.getConnection();

			//3 ps
			String sql="delete from cart where c_no=?";
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
