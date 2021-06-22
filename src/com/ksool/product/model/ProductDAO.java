package com.ksool.product.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.ksool.db.ConnectionPoolMgr3;

public class ProductDAO {
	
	private ConnectionPoolMgr3 pool;

	public ProductDAO() {
		pool=ConnectionPoolMgr3.getInstance();
	}
	
	/* 모든상품 조회 */
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
				
				ProductVO vo = new ProductVO(p_stock, ct_no, p_name, p_price, p_ct, p_content, p_stock, null, p_state, Imagemain);
				
						
				list.add(vo);
			}
			return list;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}
	
	/* 전통주만 조회 */
	public List<ProductVO> selectAll2(String condition, String keyword) 
			throws SQLException{
		
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;

		List<ProductVO> list = new ArrayList<ProductVO>();
		try {
			//1,2
			conn=pool.getConnection();

			//3
			String sql="select * from product where CT_NO=1";
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
				
				ProductVO vo = new ProductVO(p_stock, ct_no, p_name, p_price, p_ct, p_content, p_stock, null, p_state, Imagemain);
				
						
				list.add(vo);
			}
			return list;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}
	
	/* 막걸리만 조회 */
	public List<ProductVO> selectAll3(String condition, String keyword) 
			throws SQLException{
		
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;

		List<ProductVO> list = new ArrayList<ProductVO>();
		try {
			//1,2
			conn=pool.getConnection();

			//3
			String sql="select * from product where CT_NO=2";
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
				
				ProductVO vo = new ProductVO(p_stock, ct_no, p_name, p_price, p_ct, p_content, p_stock, null, p_state, Imagemain);
				
						
				list.add(vo);
			}
			return list;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}
	
	
	/* 증류주만 조회 */
	public List<ProductVO> selectAll4(String condition, String keyword) 
			throws SQLException{
		
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;

		List<ProductVO> list = new ArrayList<ProductVO>();
		try {
			//1,2
			conn=pool.getConnection();

			//3
			String sql="select * from product where CT_NO=3";
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
				
				ProductVO vo = new ProductVO(p_stock, ct_no, p_name, p_price, p_ct, p_content, p_stock, null, p_state, Imagemain);
				
						
				list.add(vo);
			}
			return list;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}
	
	public ProductVO selectByPID(int pid) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;

		ProductVO vo = new ProductVO();
		try {
			//1,2
			conn=pool.getConnection();

			//3
			String sql="select * from product where pid=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, pid);

			//4
			rs=ps.executeQuery();
			if(rs.next()) {
				vo.setPID(pid);
				vo.setCT_NO(rs.getString("ct_no"));
				vo.setP_NAME(rs.getString("p_name"));
				vo.setP_PRICE(rs.getInt("p_price"));
				vo.setP_CT(rs.getString("p_ct"));
				
				String p_content=rs.getString("p_content");
				vo.setP_CONTENT(p_content);
				
				vo.setP_STOCK(rs.getInt("p_stock"));	
				vo.setP_REGDATE(null);					
				vo.setP_STATE(rs.getString("p_state"));
				vo.setImagemain(rs.getString("imagemain"));
				
				
			}
			
			System.out.println("상품조회결과, vo="+vo+", 매개변수 pid="+pid);

			return vo;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}

}
