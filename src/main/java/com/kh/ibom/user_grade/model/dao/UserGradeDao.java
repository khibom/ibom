package com.kh.ibom.user_grade.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.user_grade.model.vo.UserGrade;

@Repository("ugradeDao")
public class UserGradeDao {
	
	@Autowired
	private SqlSessionTemplate session;
	
	public UserGradeDao() {}
	
	// 판정등급 목록
	public ArrayList<UserGrade> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
	// 판정등급 추가
	public int insertuserGrade(UserGrade usergrade) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	// 판정등급 수정
	public int userGradeUp(UserGrade usergrade) {
		// TODO Auto-generated method stub
		return 0;
	}

	// 판정등급 삭제
	public void userGradeDel(String igrade_no) {
		// TODO Auto-generated method stub
		
	}
	
	
	
	
}// end class
