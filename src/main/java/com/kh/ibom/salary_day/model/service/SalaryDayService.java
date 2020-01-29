package com.kh.ibom.salary_day.model.service;



import com.kh.ibom.salary_day.model.vo.SalaryDay;



public interface SalaryDayService {
	
	SalaryDay selectOne();
	//돌보미 급여일 변경
	int updateSalaryDay(String salary_day);
	//돌보미 시급 변경
	
	int updateDolTimePay(String dol_time_pay);
	
}
