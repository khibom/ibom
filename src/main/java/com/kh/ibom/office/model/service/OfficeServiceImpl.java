package com.kh.ibom.office.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.office.model.dao.OfficeDao;
import com.kh.ibom.office.model.vo.Office;

@Service("offService")
public class OfficeServiceImpl implements OfficeService{
	public OfficeServiceImpl() {}
	
	@Autowired
	private OfficeDao offDao;
	
	@Override
	public Office selectOne(String office_code) {
		// 돌보미 급여조회처리 돌보미 본인 지급센터 조회
		return offDao.selectOne(office_code);
	}

}
