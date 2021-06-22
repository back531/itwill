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

public class Q_BoardDAO {
	private ConnectionPoolMgr1 pool;

	public Q_BoardDAO() {
		pool=ConnectionPoolMgr1.getInstance();
	}

	public int insert_Q_Board(Q_BoardVO vo) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;

		try {
			//1,2 conn
			conn=pool.getConnection();

			//3 ps
			String sql="insert into q_board(no, name, title, content, groupNo)"
					+ " values(q_board_seq.nextval,?,?,?,q_board_seq.nextval)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, vo.getName());
			ps.setString(2, vo.getTitle());
			ps.setString(3, vo.getContent());


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
	public List<Q_BoardVO> selectAll(String condition, String keyword) 
			throws SQLException{
		
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;

		List<Q_BoardVO> list = new ArrayList<Q_BoardVO>();
		try {
			//1,2
			conn=pool.getConnection();

			//3
			String sql="select * from q_board";
			//검색의 경우
			if(keyword!=null && !keyword.isEmpty()) {
				sql+=" where "+ condition +" like '%' || ? || '%'";
			}
			sql+=" order by groupno desc, sortno";

			ps=conn.prepareStatement(sql);
			if(keyword!=null && !keyword.isEmpty()) {
				ps.setString(1, keyword);
			}	

			//4
			rs=ps.executeQuery();
			while(rs.next()) {
				int no=rs.getInt("no");
				int readcount=rs.getInt("readcount");
				String name=rs.getString("name");
				String title=rs.getString("title");
				String content=rs.getString("content");
				Timestamp regdate=rs.getTimestamp("regdate");

				int groupNo=rs.getInt("groupno");
				int step=rs.getInt("step");
				int sortNo=rs.getInt("sortno");
				String delFlag=rs.getString("delflag");

				
				Q_BoardVO vo = new Q_BoardVO(no, name, title, regdate, readcount, content, groupNo, step, sortNo, delFlag);
						
				list.add(vo);
			}

			return list;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}

	public Q_BoardVO selectByNo(int no) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;

		Q_BoardVO vo = new Q_BoardVO();
		try {
			//1,2
			conn=pool.getConnection();

			//3
			String sql="select * from q_board where no=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, no);

			//4
			rs=ps.executeQuery();
			if(rs.next()) {
				vo.setNo(no);

				String content=rs.getString("content");
				vo.setContent(content);

				vo.setName(rs.getString("name"));
				vo.setReadcount(rs.getInt("readcount"));
				vo.setRegdate(rs.getTimestamp("regdate"));
				vo.setTitle(rs.getString("title"));	
				
				vo.setGroupNo(rs.getInt("groupno"));
				vo.setStep(rs.getInt("step"));
				vo.setSortNo(rs.getInt("sortno"));
				vo.setDelFlag(rs.getString("delflag"));	
				
			}
			
			System.out.println("글상세조회 결과, vo="+vo+", 매개변수 no="+no);

			return vo;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}

	public int update_Q_Board(Q_BoardVO vo) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;

		try {
			//1,2 conn
			conn=pool.getConnection();

			//3 ps
			String sql="update q_board set title=?, content=? where no=?";

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

	public int updateReadCount(int no) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;

		try {
			conn=pool.getConnection();

			String sql="update q_board"
					+ " set readcount=readcount+1"
					+ " where no=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, no);

			int cnt=ps.executeUpdate();
			System.out.println("조회수 증가 결과 cnt="+cnt+", 매개변수 no="+no);

			return cnt;
		}finally {
			pool.dbClose(ps, conn);
		}
	}

	public void delete_qboard(Q_BoardVO vo) throws SQLException {
		Connection conn = null;
		CallableStatement ps = null;

		try {
			conn = pool.getConnection();
			String sql = "call delete_q_board(?, ?, ?)";
			ps = conn.prepareCall(sql);
			ps.setInt(1, vo.getNo());
			ps.setInt(2, vo.getStep());
			ps.setInt(3, vo.getGroupNo());

			boolean bool = ps.execute();
			System.out.println("삭제 결과 bool = "+bool+", 매개변수 vo= "+vo);			
		}finally {
			pool.dbClose(ps, conn);
		}

	}
	
	public int reply(Q_BoardVO vo) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		
		int cnt=0;
		try {
			conn=pool.getConnection();
			//트랜잭션 시작
			conn.setAutoCommit(false);  //자동 커밋되지 않도록 지정
			
			//[1] update
			String sql="update q_board"
					+ " set sortno=sortno+1"
					+ " where groupno=? and sortno>?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, vo.getGroupNo());
			ps.setInt(2, vo.getSortNo());
			
			cnt=ps.executeUpdate();
			
			//[2] insert
			sql="insert into q_board(no, name,title, content, "
					+ "groupno, step, sortno)"
					+ "values(q_board_seq.nextval, ?,?,?,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, vo.getName());
			ps.setString(2, vo.getTitle());
			ps.setString(3, vo.getContent());
			ps.setInt(4, vo.getGroupNo());
			ps.setInt(5, vo.getStep()+1);
			ps.setInt(6, vo.getSortNo()+1);
			
			cnt=ps.executeUpdate();
			System.out.println("답변하기 결과, cnt="+cnt+", 매개변수 vo="+vo);
			
			//모두 성공하면 커밋
			conn.commit();
		}catch(SQLException e) {
			//하나라도 실패하면 롤백
			conn.rollback();
			e.printStackTrace();
		}finally {
			//다시 자동 커밋되도록 셋팅
			conn.setAutoCommit(true);
			pool.dbClose(ps, conn);
		}
		
		return cnt;
	}
	
	public boolean checkPwd(int no, String pwd) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		try {
			conn=pool.getConnection();
			
			String sql="select pwd from q_board where no=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, no);
			
			rs=ps.executeQuery();
			
			boolean bool=false;
			if(rs.next()) {
				String dbPwd=rs.getString(1);
				if(dbPwd.equals(pwd)) {
					bool=true;
				}
			}
			System.out.println("비밀번호 체크 결과, bool="+bool+", 매개변수 no="
					+no+", pwd="+pwd);
			
			return bool;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}
}





