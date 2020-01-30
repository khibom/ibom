package com.kh.ibom.certified.model.service;

import com.kh.ibom.certified.model.vo.Certified;

public interface CertifiedService {
	// 인증코드 저장
	//int insertCode(String certified_key);
	// 인증코드 저장
	void insertAuthCode(Certified certi);

	
	// 인증키 확인
	int selectKey(String key);

	// 인증키 삭제 
	void deleteCerti(String key);

	
	

	

	
	

}// end class
