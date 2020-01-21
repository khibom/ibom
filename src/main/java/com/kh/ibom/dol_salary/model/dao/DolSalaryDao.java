package com.kh.ibom.dol_salary.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.common.CommonSearchDate;
import com.kh.ibom.dol_salary.model.vo.DolSalary;

@Repository("dolSalDao")
public class DolSalaryDao {
	
	
	@Autowired
	private SqlSessionTemplate session;
	
	public DolSalaryDao() {}

	public ArrayList<DolSalary> selectList() {
		
		return null;
	}

	public int insertDolSalary(DolSalary dSal) {
		// 돌보미 급여 지급
		return session.insert("dolSalaryMapper.insertDolSalary", dSal);
	}

	public ArrayList<DolSalary> dolSalaryList(String dol_id) {
		// 돌보미 급여상세조회 가기전 급여조히
		List<DolSalary> list = session.selectList("dolSalaryMapper.dolSalaryList",dol_id);
		return (ArrayList<DolSalary>)list;
	}

	public ArrayList<DolSalary> searchDolSalary(CommonSearchDate date) {
		// 돌보미 급여년 조회
		List<DolSalary> list = session.selectList("dolSalaryMapper.searchDolSalary",date);
		return (ArrayList<DolSalary>)list;
	}

	public DolSalary selectDateDolSal(CommonSearchDate dol) {
		// 돌보미 급여상세
		return session.selectOne("dolSalaryMapper.selectDateDolSal",dol);
	}

	
	
	
	

}
