package com.kh.ibom.emp.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.emp.model.dao.EmpDao;
import com.kh.ibom.emp.model.vo.Emp;

@Service("empService")
public class EmpServiceImpl implements EmpService{
	
	@Autowired
	private EmpDao empDao;
	
	public EmpServiceImpl() {}

	// 직원 목록
	public ArrayList<Emp> selectAll() {
		return empDao.selectAll();
	}
	
	// 직원 등록
	public int insertEmp(Emp emp) {
		return empDao.insertEmp(emp);
	}
	
	// 직원 수정
	public int empUp(Emp emp) {
		return empDao.empUp(emp);
	}
	
	// 직원 삭제
	public int empDel(Emp emp) {
		return empDao.empDel(emp);
	}
	
	// 직원 상세
	public Emp empInfo(String emp_id) {
		return empDao.empInfo(emp_id);
	}

	@Override
	public Emp selectOne(String emp_id) {
		
		return empDao.selectOne(emp_id);
	}
}
