package com.kh.ibom.alldayserv_ap.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.alldayserv_ap.model.dao.AlldayServApDao;
import com.kh.ibom.alldayserv_ap.model.vo.AlldayServAp;

@Service("asaServive")
public class AlldayServApServiceImpl implements AlldayServApService{
	public AlldayServApServiceImpl() {}
	@Autowired
	private AlldayServApDao asaDao;
	@Override
	public ArrayList<AlldayServAp> allDayApplySelectList() {
		return asaDao.allDayApplySelectList();
	}
	@Override
	public int allDayApplyInsert(AlldayServAp asa) {
		return asaDao.allDayApplyInsert(asa);
	}
	@Override
	public AlldayServAp allDayApplySelectOne(int adsa_no) {
		return asaDao.allDayApplySelectOne(adsa_no);
	}
	@Override
	public int allDayApplyUpdate(AlldayServAp asa) {
		return asaDao.allDayApplyUpdate(asa);
	}
	@Override
	public ArrayList<AlldayServAp> allDayApplySelectList(String user_id) {
		// TODO Auto-generated method stub
		return asaDao.allDayApplySelectList(user_id);
	}

}
