package com.kh.ibom.authority.model.service;

import com.kh.ibom.authority.model.vo.Authority;

public interface AuthorityService {
	
	// 회원가입 아이디 중복 검사용
	int idCheck(String user_id);
	//해쉬함수 처리가 되어있지 않다면 해쉬함수 처리등록
	int updatePwd(Authority au);
	//비밀번호 틀린숫자 체크
	int selectEnabledCount(String ibom_id);
	//휴먼계정처리
	void upEnabled(String ibom_id);
	//최근 로그인 시간 등록
	void UpdateRecentLogin(String ibom_id);
	//비밀번호 카운트 초기화
	void resetEnabledCount(String ibom_id);
	//비밀번호 카운트 시킴
	void insertCount(String ibom_id);

}
