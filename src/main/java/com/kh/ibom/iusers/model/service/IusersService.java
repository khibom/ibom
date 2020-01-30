package com.kh.ibom.iusers.model.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import com.kh.ibom.iusers.model.vo.Iusers;

public interface IusersService {
	
	
	ArrayList<Iusers> selectList();

	Iusers loginCheck(Iusers iusers);
	
	// 비밀번호 암화화된 회원가입
	int insertIusers(Iusers iusers);
	
	// 아이디 중복검사
	int idCheck(String user_id);
	
	// 내정보보기	
	Iusers selectIusers(String user_id);
	
	// 이용자 목록
	ArrayList<Iusers> selectAll();
	
	// 이용자 레코드 갯수
	int countArticle(String search_option, String keyword);
	
	// 이용자 전체목록
	List<Iusers> listAll(String search_option, String keyword);
	
	// 이용자 정보 수정
	int iusersUp(Iusers iusers);
	
	// 관리자 회원정보 삭제
	int iusersDel(Iusers iusers);
	
	// 비밀번호 찾기
	void iusersFindPw(HttpServletResponse response, Iusers iusers);

	// 비밀번호 변경
	void changePw(Iusers iusers);
	
	// // 로그인 이요자 권한체크 하구 돌보미 정보 조회
		Iusers selectOne(String ibom_id);

		// 예치금을 0원으로 초기화
		int updateDepoPay(String user_id);
		//유저 마지막 회원가입자 조회
			String selectMaxDolEnroll(String date);
			//이용자 회원가입수 카운트
			int selectDateCount(String rollDate);

			// 회원가입 중 취소 클릭시
			int idDel(String user_id);
		
}// end class
