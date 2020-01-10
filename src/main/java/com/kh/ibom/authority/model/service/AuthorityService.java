package com.kh.ibom.authority.model.service;

public interface AuthorityService {
	
	// 회원가입 아이디 중복 검사용
	int idCheck(String user_id);

}
