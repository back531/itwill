package com.ksool.product.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.ksool.db.ConnectionPoolMgr1;
import com.ksool.db.ConnectionPoolMgr2;
import com.ksool.order.model.CartVO;

public class ProductDAO {
	
	private ConnectionPoolMgr2 pool;
	
	public ProductDAO() {
		pool=new ConnectionPoolMgr2();
	}
	
	public List<ProductVO> selectAll() throws SQLException{
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		List<ProductVO> list=new ArrayList<ProductVO>();
		try {
			conn=pool.getConnection();
			
			String sql="select * from product order by PID";
			ps=conn.prepareStatement(sql);
			
			rs=ps.executeQuery();
			while(rs.next()) {
				String PID =rs.getString(1);
				String CT_NO=rs.getString(2);
				String P_NAME=rs.getString(3);
				int P_PRICE=rs.getInt(4);
				String P_CT=rs.getString(5);
				String P_CONTENT=rs.getString(6);
				int P_STOCK=rs.getInt(7);
				String P_COLOR=rs.getString(8);
				Timestamp P_REGDATE=rs.getTimestamp(9);
				String P_STATE=rs.getString(10);
				
				ProductVO vo = new ProductVO(PID, CT_NO, P_NAME, P_PRICE, P_CT, P_CONTENT, P_STOCK, P_COLOR, null, P_STATE);
				
				list.add(vo);
			}
			System.out.println("전체 조회 결과 list.size="+list.size());
			return list;
		}finally {
			pool.dbClose(rs, ps, conn);				
		}
	}
}
