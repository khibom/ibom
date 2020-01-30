package com.kh.ibom.user_grade.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.user_family.model.vo.UserFamily;
import com.kh.ibom.user_grade.model.dao.UserGradeDao;
import com.kh.ibom.user_grade.model.vo.UserGrade;

@Service("ugradeService")
public class UserGradeServiceImpl implements UserGradeService{
	
	@Autowired
	private UserGradeDao ugradeDao;
	
	public UserGradeServiceImpl() {}
	
	// 판정 등급 목록
	public ArrayList<UserGrade> selectAll() {
		return ugradeDao.selectAll();
	}
	
	// 판정등급 추가 
	public int insertuserGrade(UserGrade usergrade) {
		// TODO Auto-generated method stub
		return ugradeDao.insertuserGrade(usergrade);
	}

	// 판정 등급 수정
	public int userGradeUp(UserGrade usergrade) {
		// TODO Auto-generated method stub
		return ugradeDao.userGradeUp(usergrade);
	}
	
	// 판정등급 삭제
	@Override
	public void userGradeDel(String igrade_no) {
		ugradeDao.userGradeDel(igrade_no);
		
	}

	
}// end class
