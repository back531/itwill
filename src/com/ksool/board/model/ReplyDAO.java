package com.ksool.board.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.ksool.db.ConnectionPoolMgr1;

public class ReplyDAO {
	private ConnectionPoolMgr1 pool;

	public ReplyDAO() {
		pool=ConnectionPoolMgr1.getInstance();
	}
	
	public ReplyVO selectByNo(int no) throws SQLException {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;

		ReplyVO vo = new ReplyVO();
		try {
			//1,2
			conn=pool.getConnection();

			//3
			String sql="select * from reply where no=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, no);

			//4
			rs=ps.executeQuery();
			if(rs.next()) {
				vo.setNo(no);

				String content=rs.getString("content");
				vo.setContent(content);
				vo.setRegdate(rs.getTimestamp("regdate"));
				vo.setDelflag(rs.getString("delflag"));
			}
			
			System.out.println("글상세조회 결과, vo="+vo+", 매개변수 no="+no);

			return vo;
		}finally {
			pool.dbClose(rs, ps, conn);
		}
	}
}
