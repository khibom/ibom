package com.kh.ibom.firstaid.model.servcie;

import java.util.ArrayList;

import com.kh.ibom.firstaid.model.vo.Firstaid;

public interface FirstaidService {
	// 응급처치 동의서 등록
	int firstaidIn(Firstaid firstaid);
	// 응급 처치 동의서 수정
	int firstaidUp(Firstaid firstaid);
	
	// (관리자) 응급처지 동의서 목록 조회
	ArrayList<Firstaid> firstaidList();
	
	// 응급처지 동의서 입력
	int insertFirstaid(Firstaid aid);
	
	// 내정보 보기에서 응급처치 동의서 수정
	Firstaid selectOne(String user_id);

}
