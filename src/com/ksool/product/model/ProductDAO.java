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

			//3 ps
			String sql="insert into PRODUCT(PID, NO, NAME, PRICE, CT, CONTENT, STOCK, REGDATE, STATE, Imagemain)"
					+ "values (PRODUCT_seq.nextval, '', '', '', '',"
					+ "'', '', '', '', '');";
			ps=conn.prepareStatement(sql);
			ps.setString(1, vo.getNO());
			ps.setString(2, vo.getNAME());
			ps.setInt(3, vo.getPRICE());
			ps.setString(4, vo.getCT());
			ps.setString(5, vo.getCONTENT());
			ps.setInt(6, vo.getSTOCK());
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
				int pid=rs.getInt("pid");
				String no=rs.getString("no");
				String name=rs.getString("name");
				int price=rs.getInt("price");
				String ct=rs.getString("ct");
				String content=rs.getString("content");
				int p_stock=rs.getInt("p_stock");
				Timestamp p_regdate=rs.getTimestamp("p_regdate");
				String p_state=rs.getString("p_state");
				String Imagemain=rs.getString("Imagemain");
				
				ProductVO vo = new ProductVO(pid, no, name, price, ct, content, p_stock, null, p_state, Imagemain);
				
						
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
			String sql="select * from product where NO=2";
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
				int pid=rs.getInt("pid");
				String no=rs.getString("no");
				String name=rs.getString("name");
				int price=rs.getInt("price");
				String ct=rs.getString("ct");
				String content=rs.getString("content");
				int p_stock=rs.getInt("p_stock");
				Timestamp p_regdate=rs.getTimestamp("p_regdate");
				String p_state=rs.getString("p_state");
				String Imagemain=rs.getString("Imagemain");
				
				ProductVO vo = new ProductVO(pid, no, name, price, ct, content, p_stock, null, p_state, Imagemain);
				
						
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
			String sql="select * from product where NO=3";
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
				int pid=rs.getInt("pid");
				String no=rs.getString("no");
				String name=rs.getString("name");
				int price=rs.getInt("price");
				String ct=rs.getString("ct");
				String content=rs.getString("content");
				int p_stock=rs.getInt("p_stock");
				Timestamp p_regdate=rs.getTimestamp("p_regdate");
				String p_state=rs.getString("p_state");
				String Imagemain=rs.getString("Imagemain");
				
				ProductVO vo = new ProductVO(pid, no, name, price, ct, content, p_stock, null, p_state, Imagemain);
				
						
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
			String sql="select * from product where NO=4";
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
				int pid=rs.getInt("pid");
				String no=rs.getString("no");
				String name=rs.getString("name");
				int price=rs.getInt("price");
				String ct=rs.getString("ct");
				String content=rs.getString("content");
				int p_stock=rs.getInt("p_stock");
				Timestamp p_regdate=rs.getTimestamp("p_regdate");
				String p_state=rs.getString("p_state");
				String Imagemain=rs.getString("Imagemain");
				
				ProductVO vo = new ProductVO(pid, no, name, price, ct, content, p_stock, null, p_state, Imagemain);
				
						
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
				vo.setNO(rs.getString("no"));
				vo.setNAME(rs.getString("name"));
				vo.setPRICE(rs.getInt("price"));
				vo.setCT(rs.getString("ct"));
				
				String content=rs.getString("content");
				vo.setCONTENT(content);
				
				vo.setSTOCK(rs.getInt("p_stock"));	
				vo.setREGDATE(null);					
				vo.setSTATE(rs.getString("p_state"));
				vo.setImagemain(rs.getString("imagemain"));
				
				
			}
			
			System.out.println("상품조회결과, vo="+vo+", 매개변수 pid="+pid);

			return vo;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}

}
