package com.kh.ibom.iusers.model.dao;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.iusers.model.vo.Iusers;

@Repository("iusersDao")
public class IusersDao {

	
	public IusersDao() {}
	
	@Autowired
	private SqlSessionTemplate session;
	
	// 로그인
	public Iusers loginCheck(Iusers iusers) {
		// TODO Auto-generated method stub
		return session.selectOne("iusersMapper.loginCheck", iusers);
	}
	
	// 비번 암호화 회원가입
		public int insertIusers(Iusers iusers) {
			return session.insert("iusersMapper.insertIusers", iusers);
		}
	
	//   아이디 중복 체크
	public int selectIdCheck(String user_id) {
		return session.selectOne("iusersMapper.selectIdCheck", user_id);
	}
	// 내정보보기
		public Iusers selectIusers(String user_id) {
			return session.selectOne("iusersMapper.selectOne", user_id);
		}
	
	// 회원목록 조회
	public ArrayList<Iusers> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
	// 회원 레코드 갯수
	public int countArticle(String search_option, String keyword) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	// 검색한 회원 전체 목록
	public List<Iusers> listAll(String search_option, String keyword) {
		// TODO Auto-generated method stub
		return null;
	}
	
	// 이용자 정보 수정
	public int iusersUp(Iusers iusers) {
		// TODO Auto-generated method stub
		return 0;
	}

	// 관리자 회원정보 삭제
	public int iusersDel(Iusers iusers) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	// 비밀번호 찾기
	public void iusersFindPw(HttpServletResponse response, Iusers iusers) {
		// TODO Auto-generated method stub		
	}

	// 비밀번호 변경
	public void changePw(Iusers iusers) {
		// TODO Auto-generated method stub
		
	}

	// // 로그인 이용자 권한체크 하구 돌보미 정보 조회
	public Iusers selectOne(String ibom_id) {
		return session.selectOne("iusersMapper.selectOne", ibom_id);
	}

	// 예치금을 0원으로 초기화
	public int updateDepoPay(String user_id) {
		return session.delete("iusersMapper.updateDepoPay", user_id);
	}
	public String selectMaxDolEnroll(String date) {
		// 유저 마지막 회원가입자 조회
		return session.selectOne("iusersMapper.selectMaxDolEnroll", date);
	}

	public int selectDateCount(String rollDate) {
		// 이용자 회원가입수 카운트
		return session.selectOne("iusersMapper.selectDateCount", rollDate);
	}
	
	public int idDel(String user_id) {
		// 회원가입 중 취소 버튼 클릭시
		return session.delete("iusersMapper.idDel", user_id);
	}
	
} // end class
