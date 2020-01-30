package com.kh.ibom.dol_salary.model.service;

import java.util.ArrayList;

import com.kh.ibom.common.CommonSearchDate;
import com.kh.ibom.dol_salary.model.vo.DolSalary;

public interface DolSalaryService {
	
	ArrayList<DolSalary> selectList();
	//돌보미 급여명세 인서트
	int insertDolSalary(DolSalary dSal);
	//돌보미 급여상세 조회 페이지로 이동하기전 값 조회
	ArrayList<DolSalary> dolSalaryList(String dol_id);
	//돌보미 급여년 조회
	ArrayList<DolSalary> searchDolSalary(CommonSearchDate date);
	//돌보미 급여 상세처리
	DolSalary selectDateDolSal(CommonSearchDate dol);
	
	
	
	

}
