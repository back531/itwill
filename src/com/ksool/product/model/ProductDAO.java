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
	
	/* 상품등록 */
	public int insert_Product(ProductVO vo) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;

		try {
			//1,2 conn
			conn=pool.getConnection();
			
			conn.setAutoCommit(true);
			
			//3 ps
			String sql="insert into PRODUCT(PID, CT_NO, P_NAME, P_PRICE, P_CT, P_CONTENT, P_STOCK, P_REGDATE, P_STATE, Imagemain)"
					+ "values (PRODUCT_seq.nextval, '', '', '', '',"
					+ "'', '', '', '', '');";
			ps=conn.prepareStatement(sql);
			ps.setString(1, vo.getCT_NO());
			ps.setString(2, vo.getP_NAME());
			ps.setInt(3, vo.getP_PRICE());
			ps.setString(4, vo.getCT_NO());
			ps.setString(5, vo.getP_CONTENT());
			ps.setInt(6, vo.getP_STOCK());
			ps.setString(7, vo.getImagemain());


			//4 exec
			int cnt=ps.executeUpdate();
			System.out.println("등록결과, cnt="+cnt+", 매개변수 vo="+vo);

			return cnt;
		}finally {
			pool.dbClose(ps, conn);
		}
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
			conn.setAutoCommit(true);
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
				int PID=rs.getInt("PID");
				String CT_NO=rs.getString("CT_NO");
				String P_NAME=rs.getString("P_NAME");
				int P_PRICE=rs.getInt("P_PRICE");
				String P_CT=rs.getString("P_CT");
				String P_CONTENT=rs.getString("P_CONTENT");
				int P_STOCK=rs.getInt("P_STOCK");
				Timestamp P_REGDATE=rs.getTimestamp("P_REGDATE");
				String P_STATE=rs.getString("P_STATE");
				String Imagemain=rs.getString("Imagemain");
				
				ProductVO vo = new ProductVO(PID, CT_NO, P_NAME, P_PRICE, P_CT, P_CONTENT, P_STOCK, null, P_STATE, Imagemain);
				
						
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
			conn.setAutoCommit(true);
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
				int PID=rs.getInt("PID");
				String CT_NO=rs.getString("CT_NO");
				String P_NAME=rs.getString("P_NAME");
				int P_PRICE=rs.getInt("P_PRICE");
				String P_CT=rs.getString("P_CT");
				String P_CONTENT=rs.getString("P_CONTENT");
				int P_STOCK=rs.getInt("P_STOCK");
				Timestamp P_REGDATE=rs.getTimestamp("P_REGDATE");
				String P_STATE=rs.getString("P_STATE");
				String Imagemain=rs.getString("Imagemain");
				
				ProductVO vo = new ProductVO(PID, CT_NO, P_NAME, P_PRICE, P_CT, P_CONTENT, P_STOCK, null, P_STATE, Imagemain);
				
						
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
			conn.setAutoCommit(true);
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
				int PID=rs.getInt("PID");
				String CT_NO=rs.getString("CT_NO");
				String P_NAME=rs.getString("P_NAME");
				int P_PRICE=rs.getInt("P_PRICE");
				String P_CT=rs.getString("P_CT");
				String P_CONTENT=rs.getString("P_CONTENT");
				int P_STOCK=rs.getInt("P_STOCK");
				Timestamp P_REGDATE=rs.getTimestamp("P_REGDATE");
				String P_STATE=rs.getString("P_STATE");
				String Imagemain=rs.getString("Imagemain");
				
				ProductVO vo = new ProductVO(PID, CT_NO, P_NAME, P_PRICE, P_CT, P_CONTENT, P_STOCK, null, P_STATE, Imagemain);
				
						
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
			conn.setAutoCommit(true);
			//3
			String sql="select * from product where CT_NO=4";
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
				int PID=rs.getInt("PID");
				String CT_NO=rs.getString("CT_NO");
				String P_NAME=rs.getString("P_NAME");
				int P_PRICE=rs.getInt("P_PRICE");
				String P_CT=rs.getString("P_CT");
				String P_CONTENT=rs.getString("P_CONTENT");
				int P_STOCK=rs.getInt("P_STOCK");
				Timestamp P_REGDATE=rs.getTimestamp("P_REGDATE");
				String P_STATE=rs.getString("P_STATE");
				String Imagemain=rs.getString("Imagemain");
				
				ProductVO vo = new ProductVO(PID, CT_NO, P_NAME, P_PRICE, P_CT, P_CONTENT, P_STOCK, null, P_STATE, Imagemain);				
						
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
			conn.setAutoCommit(true);
			//3
			String sql="select * from product where PID=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, pid);

			//4
			rs=ps.executeQuery();
			if(rs.next()) {
				vo.setPID(rs.getInt("pid"));
				vo.setCT_NO(rs.getString("CT_NO"));
				vo.setP_NAME(rs.getString("P_NAME"));
				vo.setP_PRICE(rs.getInt("P_PRICE"));
				vo.setP_CT(rs.getString("P_CT"));
				
				String content=rs.getString("content");
				vo.setP_CONTENT(content);
				
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
