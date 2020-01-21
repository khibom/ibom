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

}
