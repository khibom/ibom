package com.kh.ibom.emp.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.emp.model.vo.Emp;

@Repository("empDao")
public class EmpDao {
	
	@Autowired
	private SqlSessionTemplate session;
	
	public EmpDao() {}
	
	// 직원목록-
	public ArrayList<Emp> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	//직원등록 
	public int insertEmp(Emp emp) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	// 직원수정
	public int empUp(Emp emp) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	// 직원삭제
	public int empDel(Emp emp) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	// 직원상세
	public Emp empInfo(String emp_id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Emp selectOne(String emp_id) {
		
		return session.selectOne("empMapper.selectOne", emp_id);
	}
	
}// end class
