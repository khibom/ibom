package com.kh.ibom.user_grade.model.service;

import java.util.ArrayList;

import com.kh.ibom.user_grade.model.vo.UserGrade;

public interface UserGradeService {

	// 이용자 판정등급 목록
	ArrayList<UserGrade> selectAll();
	// 이용판정등급 추가
	int insertuserGrade(UserGrade usergrade);
	// 이용판정 등급 수정
	int userGradeUp(UserGrade usergrade);
	// 이용판정등급 삭제
	void userGradeDel(String igrade_no);
	

}
