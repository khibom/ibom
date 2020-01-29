package com.kh.ibom.limit_grade.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.limit_grade.model.dao.LimitGradeDao;
import com.kh.ibom.limit_grade.model.vo.LimitGrade;

@Service("limitgradeService")
public class LimitGradeServiceImpl implements LimitGradeService{
	
	@Autowired
	private LimitGradeDao limitgradeDao;
	
	public  LimitGradeServiceImpl() {}

	@Override
	public ArrayList<LimitGrade> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	// 이용제한 등급목록 조회
	@Override
	public ArrayList<LimitGrade> limitGradeList() {
		return limitgradeDao.limitGradeList();
	}

	// 이용제한 등급 추가
	@Override
	public int limitGradeAdd(LimitGrade limitgrade) {
		return limitgradeDao.limitGradeAdd(limitgrade);
	}

	// 이용제한 등급 삭제
	@Override
	public void limitGradeDel(String limit_code) {
		// TODO Auto-generated method stub
		
	}

	//이용제한 등급 수정
	@Override
	public int limitGradeUp(LimitGrade limitgrade) {
		return limitgradeDao.limitGradeUp(limitgrade);
	}

}
