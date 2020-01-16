package com.kh.ibom.salary_day.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.salary_day.model.vo.SalaryDay;

@Repository("saldayDao")
public class SalaryDayDao {
	
	@Autowired
	private SqlSessionTemplate session;
	
	public SalaryDayDao() {}

	public SalaryDay selectOne() {
		
		return session.selectOne("dolSalaryMapper.selectSalaryDay");
	}

	public int updateSalaryDay(String salary_day) {
		//돌보미 급여일 변경
		return session.update("dolSalaryMapper.updateSalaryDay", salary_day);
	}

	public int updateDolTimePay(String dol_time_pay) {
		// 돌보미 시급변경
		return session.update("dolSalaryMapper.updateDolTimePay", dol_time_pay);
	}
	

}
