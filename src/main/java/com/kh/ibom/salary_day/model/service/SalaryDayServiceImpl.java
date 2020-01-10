package com.kh.ibom.salary_day.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.salary_day.model.dao.SalaryDayDao;
import com.kh.ibom.salary_day.model.vo.SalaryDay;

@Service("saldayService")
public class SalaryDayServiceImpl implements SalaryDayService{
	
	
	@Autowired
	private SalaryDayDao saldayDao;
	
	public SalaryDayServiceImpl() {}

	@Override
	public SalaryDay selectOne() {
		
		return saldayDao.selectOne();
	}

	@Override
	public int updateSalaryDay(String salary_day) {
		//돌보미 급여일 변경
		return saldayDao.updateSalaryDay(salary_day);
	}

	@Override
	public int updateDolTimePay(String dol_time_pay) {
		// 돌보미 시급변경
		return saldayDao.updateDolTimePay(dol_time_pay);
	}

}
