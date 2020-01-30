package com.kh.ibom.emp.model.service;

import java.util.ArrayList;

import com.kh.ibom.emp.model.vo.Emp;

public interface EmpService {

	// 직원 목록 조회
	ArrayList<Emp> selectAll();
	// 직원 등록
	int insertEmp(Emp emp);
	// 직원정보 수정
	int empUp(Emp emp);
	//직원정보 수정
	int empDel(Emp emp);
	// 직원정보 상세
	Emp empInfo(String emp_id);
	//로그인 성공 조회
	Emp selectOne(String emp_id);
	

}
