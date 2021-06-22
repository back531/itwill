package com.mysemi.member.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.ksool.db.ConnectionPoolMgr2;

public class MemberDAO {
   private ConnectionPoolMgr2 pool;
   
   public MemberDAO() {
      pool=new ConnectionPoolMgr2();
   }
   
   public int insertMember(MemberVO vo) throws SQLException {
      Connection conn=null;
      PreparedStatement ps=null;
      try {
         conn=pool.getConnection();
         
         String sql="insert into memb(userid, pwd, name, hp, email,"
               + " address, addressDetail)"
               + " values( ?, ?, ?, ?, ?, ?, ?)";
         ps=conn.prepareStatement(sql);
         ps.setString(1, vo.getUserid());
         ps.setString(2, vo.getPwd());
         ps.setString(3, vo.getName());
         ps.setString(4, vo.getHp());
         ps.setString(5, vo.getEmail());
         ps.setString(6, vo.getAddress());
         ps.setString(7, vo.getAddressDetail());
         
         int cnt=ps.executeUpdate();
         System.out.println("회원가입 결과, cnt="+cnt+", 매개변수 vo="+vo);
         
         return cnt;
      }finally {
         pool.dbClose(ps, conn);
      }
   }
   
   public int checkDuplicate(String userid) throws SQLException {
      Connection conn=null;
      PreparedStatement ps=null;
      ResultSet rs=null;
      
      try {
         conn=pool.getConnection();
         
         String sql="select count(*) from memb"
               + " where userid=?";
         ps=conn.prepareStatement(sql);
         ps.setString(1, userid);
         
         int result=0;
         rs=ps.executeQuery();
         if(rs.next()) {
            int count=rs.getInt(1);
            if(count>0) {  //이미 존재하는 아이디
               result=MemberService.UNUSABLE_ID;
            }else { //사용가능한 아이디
               result=MemberService.USABLE_ID;               
            }
         }
         System.out.println("아이디 중복확인 결과, result="+result
            +", 매개변수 userid="+userid);
         
         return result;
      }finally {
         pool.dbClose(rs, ps, conn);
      }
   }
   
   public int loginProc(String userid, String pwd) throws SQLException {
      Connection conn=null;
      PreparedStatement ps=null;
      ResultSet rs=null;
      
      try {
         conn=pool.getConnection();
         
         String sql="select pwd from memb"
               + " where userid=? and outdate is null";
         ps=conn.prepareStatement(sql);
         
         ps.setString(1, userid);
         
         rs=ps.executeQuery();
         
         int result=0;
         if(rs.next()) {
            String dbPwd=rs.getString(1);
            if(dbPwd.equals(pwd)) {
               result=MemberService.LOGIN_OK;
            }else {
               result=MemberService.PWD_DISAGREE;               
            }
         }else {
            result=MemberService.ID_NONE;
         }
         System.out.println("로그인 처리 결과, result="+result
               +", 매개변수 userid="+userid+", pwd="+pwd);
         
         return result;
      }finally {
         pool.dbClose(rs, ps, conn);
      }
   }
   
   public MemberVO selectByUserid(String userid) throws SQLException {
      Connection conn=null;
      PreparedStatement ps=null;
      ResultSet rs=null;
      
      MemberVO vo = new MemberVO();
      try {
         conn=pool.getConnection();
         
         String sql="select * from memb where userid=?";
         ps=conn.prepareStatement(sql);
         ps.setString(1, userid);
         
         rs=ps.executeQuery();
         if(rs.next()) {
            vo.setGrade(rs.getInt("grade"));
            vo.setPoint(rs.getInt("point"));
            vo.setAddress(rs.getString("address"));
            vo.setAddressDetail(rs.getString("addressDetail"));
            vo.setEmail(rs.getString("Email"));
            vo.setHp(rs.getString("hp"));
            vo.setName(rs.getString("name"));
            vo.setOutdate(rs.getTimestamp("outdate"));
            vo.setPwd(rs.getString("pwd"));
            vo.setJoindate(rs.getTimestamp("joindate"));
            vo.setUserid(rs.getString("Userid"));
            vo.setStatus(rs.getInt("status")); 
            
         }
         System.out.println("회원조회 결과, vo="+vo+", 매개변수 userid="+userid);
         
         return vo;
      }finally {
         pool.dbClose(rs, ps, conn);
      }
   }
   
   public int updateMember(MemberVO vo) throws SQLException {
      Connection conn=null;
      PreparedStatement ps=null;
      try {
         conn=pool.getConnection();
         
         String sql="update memb"
               + " set email=?, hp=?, address=?, addressDetail=?, "
               + " name=?"
               + " where userid=?";
         ps=conn.prepareStatement(sql);
         ps.setString(1, vo.getEmail());
         ps.setString(2, vo.getHp());
         ps.setString(3, vo.getAddress());
         ps.setString(4, vo.getAddressDetail());
         ps.setString(5, vo.getName());
         ps.setString(6, vo.getUserid());
         
         int cnt=ps.executeUpdate();
         System.out.println("회원수정 결과, cnt="+cnt+", 매개변수 vo="+vo);
         
         return cnt;
      }finally {
         pool.dbClose(ps, conn);
      }
   }
   
   public int withdrawMember(String userid) throws SQLException {
      Connection conn=null;
      PreparedStatement ps=null;
      try {
         conn=pool.getConnection();
         
         String sql="update memb"
               + " set outdate=sysdate"
               + " where userid=?";
         ps=conn.prepareStatement(sql);         
         ps.setString(1, userid);
         
         int cnt=ps.executeUpdate();
         System.out.println("회원탈퇴 결과, cnt="+cnt+", 매개변수 userid="+userid);
         
         return cnt;
      }finally {
         pool.dbClose(ps, conn);
      }
   }

	/* 관리자 로그인 */
   public boolean admin_login(String admin_id,String admin_pass){
	    Connection conn=null;
	    PreparedStatement ps=null;
	    ResultSet rs=null;
	    
		boolean b = false;
		try {
			conn=pool.getConnection();
			String sql = "select * from admin where admin_id = ? and admin_pass = ?";
			
			ps = conn.prepareStatement(sql);
			ps.setString(1, admin_id);
			ps.setString(2, admin_pass);
			rs = ps.executeQuery();
			b=rs.next();
		} catch (Exception e) {
			System.out.println("admin_login err : " + e);
		} finally {
			try {
				if(rs!=null)rs.close();
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {
			}
		}		
		return b;
	}
}




