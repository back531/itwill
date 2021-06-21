package com.ksool.product.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.ksool.board.model.Q_BoardVO;
import com.ksool.db.ConnectionPoolMgr1;
import com.ksool.db.ConnectionPoolMgr2;
import com.ksool.order.model.CartVO;

public class ProductDAO {
	
	private ConnectionPoolMgr1 pool;

	public ProductDAO() {
		pool=ConnectionPoolMgr1.getInstance();
	}
	
	public List<ProductVO> selectAll(String condition, String keyword) 
			throws SQLException{
		
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;

		List<ProductVO> list = new ArrayList<ProductVO>();
		try {
			//1,2
			conn=pool.getConnection();

			//3
			String sql="select * from product";
			//검색의 경우
			if(keyword!=null && !keyword.isEmpty()) {
				sql+=" where "+ condition +" like '%' || ? || '%'";
			}
			sql+=" order by pid desc";

			ps=conn.prepareStatement(sql);
			if(keyword!=null && !keyword.isEmpty()) {
				ps.setString(1, keyword);
			}	

			//4
			rs=ps.executeQuery();
			while(rs.next()) {
				String pid=rs.getString("pid");
				String ct_no=rs.getString("ct_no");
				String p_name=rs.getString("p_name");
				int p_price=rs.getInt("p_price");
				String p_ct=rs.getString("p_ct");
				String p_content=rs.getString("p_content");
				int p_stock=rs.getInt("p_stock");
				Timestamp p_regdate=rs.getTimestamp("p_regdate");
				String p_state=rs.getString("p_state");
				String Imagemain=rs.getString("Imagemain");
				
				ProductVO vo = new ProductVO(pid, ct_no, p_name, p_price, p_ct, p_content, p_stock, null, p_state, Imagemain);
				
						
				list.add(vo);
			}

			return list;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}
}
