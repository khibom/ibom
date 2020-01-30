package com.kh.ibom.user_family.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.ibom.user_family.model.vo.UserFamily;

public interface UserFamilyService {
	
	// 가족 목록 조회
	List<UserFamily> selectUserFamilyList(String user_id);
		
		// 가족등록
	int insertUserFamily(UserFamily userfamily);
	
	// 가족정보 수정
	int userFamilyUp(UserFamily userfamily);
	// 가족정보 삭제
	void userFamilyDel(String family_code);
	
	// 서비스 유아 정보조회
	UserFamily userServiceList(String fmCode);
	
	// 형규 추가 ===============================================
	//서비스2에 아이 리스트 가져오기
		ArrayList<UserFamily> selectChildList(String user_id);
	
	// 형규 추가 끝 ------------------------------------------------------------------------------------------------------------------

}// end class
