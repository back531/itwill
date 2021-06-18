package KSool.Board.model;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import KSool.Board.db.ConnectionPoolMgr1;

public class ReBoardDAO {
	private ConnectionPoolMgr1 pool;

	public ReBoardDAO() {
		pool=ConnectionPoolMgr1.getInstance();
	}

	public int insertReBoard(ReBoardVO vo) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;

		try {
			//1,2 conn
			conn=pool.getConnection();

			//3 ps
			String sql="insert into reBoard(no, name, pwd, title, email, "
					+ "content, groupNo, fileName, fileSize, originalFileName)"
					+ " values(reBoard_seq.nextval, ?,?,?,?,?, "
					+ " reBoard_seq.nextval,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, vo.getName());
			ps.setString(2, vo.getPwd());
			ps.setString(3, vo.getTitle());
			ps.setString(4, vo.getEmail());
			ps.setString(5, vo.getContent());
			ps.setString(6, vo.getFileName());
			ps.setLong(7, vo.getFileSize());
			ps.setString(8, vo.getOriginalFileName());

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
	public List<ReBoardVO> selectAll(String condition, String keyword) 
			throws SQLException{
		/*
		select * from BOARD 
		where title like '%안녕%'
		order by no desc;

		select * from BOARD 
		where name like '%길동%'
		order by no desc;

		select * from BOARD 
		where content like '%내용%'
		order by no desc;
		 */
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;

		List<ReBoardVO> list = new ArrayList<ReBoardVO>();
		try {
			//1,2
			conn=pool.getConnection();

			//3
			String sql="select * from reBoard";
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
				String pwd=rs.getString("pwd");
				String email=rs.getString("email");
				String content=rs.getString("content");
				Timestamp regdate=rs.getTimestamp("regdate");

				int groupNo=rs.getInt("groupno");
				int step=rs.getInt("step");
				int sortNo=rs.getInt("sortno");
				String delFlag=rs.getString("delflag");

				String filename=rs.getString("filename");
				String originFilename=rs.getString("originalFilename");
				int downcount=rs.getInt("downcount");
				long fileSize=rs.getInt("fileSize");
				
				ReBoardVO vo = new ReBoardVO(no, name, pwd, title, email, 
						regdate, readcount, content, groupNo, step, 
						sortNo, delFlag, filename, fileSize, 
						downcount, originFilename);
						
				list.add(vo);
			}
			System.out.println("글 목록 조회 결과 list.size="+list.size()
			+ ", 매개변수 condition="+condition+", keyword="+keyword);

			return list;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}

	public ReBoardVO selectByNo(int no) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;

		ReBoardVO vo = new ReBoardVO();
		try {
			//1,2
			conn=pool.getConnection();

			//3
			String sql="select * from reBoard where no=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, no);

			//4
			rs=ps.executeQuery();
			if(rs.next()) {
				vo.setNo(no);

				String content=rs.getString("content");
				vo.setContent(content);

				vo.setEmail(rs.getString("email"));
				vo.setName(rs.getString("name"));
				vo.setPwd(rs.getString("pwd"));
				vo.setReadcount(rs.getInt("readcount"));
				vo.setRegdate(rs.getTimestamp("regdate"));
				vo.setTitle(rs.getString("title"));	
				
				vo.setGroupNo(rs.getInt("groupno"));
				vo.setStep(rs.getInt("step"));
				vo.setSortNo(rs.getInt("sortno"));
				vo.setDelFlag(rs.getString("delflag"));	
				
				vo.setFileName(rs.getString("filename"));
				vo.setOriginalFileName(rs.getString("originalFilename"));
				vo.setDownCount(rs.getInt("downcount"));
				vo.setFileSize(rs.getInt("fileSize"));
			}
			
			System.out.println("글상세조회 결과, vo="+vo+", 매개변수 no="+no);

			return vo;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}

	public int updateReBoard(ReBoardVO vo) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;

		try {
			//1,2 conn
			conn=pool.getConnection();

			//3 ps
			String sql="update reBoard set name=?, title=?, email=?, content=?";
			if(vo.getFileName()!=null && !vo.getFileName().isEmpty()) {
				sql+=", filename=?, filesize=?, originalFilename=?";		
			}
			sql+=" where no=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, vo.getName());
			ps.setString(2, vo.getTitle());
			ps.setString(3, vo.getEmail());
			ps.setString(4, vo.getContent());
			if(vo.getFileName()!=null && !vo.getFileName().isEmpty()) {
				ps.setString(5, vo.getFileName());
				ps.setLong(6, vo.getFileSize());
				ps.setString(7, vo.getOriginalFileName());
				ps.setInt(8, vo.getNo());				
			}else {	
				ps.setInt(5, vo.getNo());
			}
			
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

			String sql="update reBoard"
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
	
	public int updateDownCount(int no) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		
		try {
			conn=pool.getConnection();
			
			String sql="update reBoard"
					+ " set downcount=downcount+1"
					+ " where no=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, no);
			
			int cnt=ps.executeUpdate();
			System.out.println("다운로드수 증가 결과 cnt="+cnt+", 매개변수 no="+no);
			
			return cnt;
		}finally {
			pool.dbClose(ps, conn);
		}
	}

	public void deleteReBoard(ReBoardVO vo) throws SQLException {
		Connection conn = null;
		CallableStatement ps = null;

		try {
			conn = pool.getConnection();
			String sql = "call deleteReboard(?, ?, ?)";
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
	
	public int reply(ReBoardVO vo) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		
		int cnt=0;
		try {
			conn=pool.getConnection();
			//트랜잭션 시작
			conn.setAutoCommit(false);  //자동 커밋되지 않도록 지정
			
			//[1] update
			String sql="update reboard"
					+ " set sortno=sortno+1"
					+ " where groupno=? and sortno>?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, vo.getGroupNo());
			ps.setInt(2, vo.getSortNo());
			
			cnt=ps.executeUpdate();
			
			//[2] insert
			sql="insert into reBoard(no, name, pwd, title, email, content, "
					+ "groupno, step, sortno)"
					+ "values(reBoard_seq.nextval, ?,?,?,?,?,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, vo.getName());
			ps.setString(2, vo.getPwd());
			ps.setString(3, vo.getTitle());
			ps.setString(4, vo.getEmail());
			ps.setString(5, vo.getContent());
			ps.setInt(6, vo.getGroupNo());
			ps.setInt(7, vo.getStep()+1);
			ps.setInt(8, vo.getSortNo()+1);
			
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
			
			String sql="select pwd from reboard where no=?";
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





