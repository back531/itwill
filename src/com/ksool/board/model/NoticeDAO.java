package com.ksool.board.model;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.ksool.db.ConnectionPoolMgr1;

public class NoticeDAO {
	private ConnectionPoolMgr1 pool;
	
	public NoticeDAO() {
		pool=ConnectionPoolMgr1.getInstance();
	}
	
	public int insert_notice(NoticeVO vo) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;

		try {
			//1,2 conn
			conn=pool.getConnection();

			//3 ps
			String sql="insert into notice(no, title, subtitle, content, regdate, image_name)"
					+ " values(notice_seq.nextval,?,?,?,sysdate,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, vo.getTitle());
			ps.setString(2, vo.getSubtitle());
			ps.setString(3, vo.getContent());
			ps.setString(4, vo.getImage_name());



			//4 exec
			int cnt=ps.executeUpdate();
			System.out.println("글쓰기 결과, cnt="+cnt+", 매개변수 vo="+vo);

			return cnt;
		}finally {
			pool.dbClose(ps, conn);
		}
	}

	/**
	 * 전체조회와 검색의 경우 모두 사용
	 * @param condition
	 * @param keyword
	 * @return
	 * @throws SQLException
	 */
	public List<NoticeVO> selectAll() 
			throws SQLException{
		
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;

		List<NoticeVO> list = new ArrayList<NoticeVO>();
		try {
			//1,2
			conn=pool.getConnection();

			//3
			String sql="select * from notice order by no desc";

			ps=conn.prepareStatement(sql);

			//4
			rs=ps.executeQuery();
			while(rs.next()) {
				int no = rs.getInt("no");
				String title=rs.getString("title");
				String subtitle=rs.getString("subtitle");
				String content=rs.getString("content");
				Timestamp regdate=rs.getTimestamp("regdate");
				String image_name=rs.getString("image_name");

				NoticeVO vo = new NoticeVO(no, title, subtitle, content, regdate, image_name);
						
				list.add(vo);
			}

			return list;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}

	public int update_notice(NoticeVO vo) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;

		try {
			//1,2 conn
			conn=pool.getConnection();

			//3 ps
			String sql="update notice set title=?, content=? where no=?";

			ps=conn.prepareStatement(sql);
			ps.setString(1, vo.getTitle());
			ps.setString(2, vo.getContent());
			ps.setInt(3, vo.getNo());

			
			//4 exec
			int cnt=ps.executeUpdate();
			System.out.println("글수정 결과, cnt="+cnt+", 매개변수 vo="+vo);

			return cnt;
		}finally {
			pool.dbClose(ps, conn);
		}
	}

	public void delete_qboard(NoticeVO vo) throws SQLException {
		Connection conn = null;
		CallableStatement ps = null;

		try {
			conn = pool.getConnection();
			String sql = "call delete_notice(?, ?, ?)";
			ps = conn.prepareCall(sql);
			ps.setInt(1, vo.getNo());


			boolean bool = ps.execute();
			System.out.println("삭제 결과 bool = "+bool+", 매개변수 vo= "+vo);			
		}finally {
			pool.dbClose(ps, conn);
		}
	}
}
