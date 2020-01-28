package com.kh.ibom.alldayserv_ap.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.alldayserv_ap.model.dao.AlldayServApDao;
import com.kh.ibom.alldayserv_ap.model.vo.AlldayServAp;
import com.kh.ibom.common.CommonPaging;

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
	public AlldayServAp allDayApplySelectOne(String adsa_no) {
		return asaDao.allDayApplySelectOne(adsa_no);
	}
	@Override
	public int allDayApplyUpdate(AlldayServAp asa) {
		return asaDao.allDayApplyUpdate(asa);
	}
	@Override
	public ArrayList<AlldayServAp> allDayApplySelectList(String user_id) {
		return asaDao.allDayApplySelectList(user_id);
	}
	//목록 갯수
	@Override
	public int adminAlldayServListCount(CommonPaging page) {
		return asaDao.adminAlldayServListCount(page);
	}
	@Override
	public ArrayList<AlldayServAp> allDayApplyAdminSelectList(CommonPaging paging) {
		return asaDao.allDayApplyAdminSelectList(paging);
	}
	@Override
	public int allDayApplyReceipt(String adsa_no) {
		// 종일제 관리자가 접수하기
		return asaDao.allDayApplyReceipt(adsa_no);
	}

}
