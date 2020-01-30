package com.kh.ibom.limit_grade.model.dao;


import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.limit_grade.model.vo.LimitGrade;

@Repository("limitgradeDao")
public class LimitGradeDao {

	
	@Autowired
	private SqlSessionTemplate session;
	
	public LimitGradeDao () {}

	// 이용제한 등급 목록 조회
	public ArrayList<LimitGrade> limitGradeList() {
		return null;
	}

	// 이용제한 등급 추가
	public int limitGradeAdd(LimitGrade limitgrade) {
		return 0;
	}
	
	// 이용제한 등급 수정
	public int limitGradeUp(LimitGrade limitgrade) {
		return 0;
	}
	
	
	
	
}// end class
