package com.kh.ibom.limit_grade.model.service;

import java.util.ArrayList;

import com.kh.ibom.limit_grade.model.vo.LimitGrade;

public interface LimitGradeService {
	
	ArrayList<LimitGrade> selectList();
	
	
	// 이용제한 등급 목록 조회
	ArrayList<LimitGrade> limitGradeList();

	// 이용제한 등급 추가
	int limitGradeAdd(LimitGrade limitgrade);

	// 이용제한 등급 삭제
	void limitGradeDel(String limit_code);

	// 이용제한 등급 수정
	int limitGradeUp(LimitGrade limitgrade);

}
