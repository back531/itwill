package com.mysemi.member.model;

import java.sql.Connection;
import java.sql.SQLException;

//DB작업 이외의 로직을 넣는 클래스
/*
 jsp -> dao -> DB
 jsp -> service -> dao -> DB
 */
public class MemberService {
	private MemberDAO memberDao;
	
	//아이디 중복확인에 사용하는 상수
	public static final int USABLE_ID = 1; // 사용가능한 아이디
	public static final int UNUSABLE_ID = 2; // 이미 존재하는 아이디
	
	//로그인 처리에 사용하는 상수
	public static final int LOGIN_OK=1; //로그인
	public static final int PWD_DISAGREE=2; //비밀번호 불일치
	public static final int ID_NONE=3; //아이디 존재하지 않음
	
	public MemberService() {
		memberDao = new MemberDAO();
	}
	
	public int insertMember(MemberVO vo) throws SQLException {
		int cnt = memberDao.insertMember(vo);
		return cnt;
	}
	
	public int checkDuplicate(String userid) throws SQLException {
		return memberDao.checkDuplicate(userid);
	}
	public int loginProc(String userid, String pwd) throws SQLException {
		return memberDao.loginProc(userid, pwd);

	}
	 public MemberVO selectByUserid(String userid) throws SQLException {
		 return memberDao.selectByUserid(userid);
	 }
	 
	 public int updateMember(MemberVO vo) throws SQLException {
		 return memberDao.updateMember(vo);
		 
	 }
	 public int withdrawMember(String userid) throws SQLException {
			return memberDao.withdrawMember(userid);
	 }
}
