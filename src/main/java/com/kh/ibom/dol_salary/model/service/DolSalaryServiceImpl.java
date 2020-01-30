package com.kh.ibom.dol_salary.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.common.CommonSearchDate;
import com.kh.ibom.dol_salary.model.dao.DolSalaryDao;
import com.kh.ibom.dol_salary.model.vo.DolSalary;

@Service("dolsalServie")
public class DolSalaryServiceImpl implements DolSalaryService{
	
	@Autowired
	private DolSalaryDao dolSalDao;
	
	public DolSalaryServiceImpl() {}

	@Override
	public ArrayList<DolSalary> selectList() {
		
		return dolSalDao.selectList();
	}

	@Override
	public int insertDolSalary(DolSalary dSal) {
		
		return dolSalDao.insertDolSalary(dSal);
	}

	@Override
	public ArrayList<DolSalary> dolSalaryList(String dol_id) {
		//돌보미 급여 상세조회 이동하기전 정보조회
		return dolSalDao.dolSalaryList(dol_id);
	}

	@Override
	public ArrayList<DolSalary> searchDolSalary(CommonSearchDate date) {
		// 돌보미 급여년 조회
		return dolSalDao.searchDolSalary(date);
	}

	@Override
	public DolSalary selectDateDolSal(CommonSearchDate dol) {
		// 돌보미 급여상세
		return dolSalDao.selectDateDolSal(dol);
	}

	
}
