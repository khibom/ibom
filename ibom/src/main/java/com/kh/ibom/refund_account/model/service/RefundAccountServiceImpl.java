package com.kh.ibom.refund_account.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.refund_account.model.dao.RefundAccountDao;
import com.kh.ibom.refund_account.model.vo.RefundAccount;

@Service("reaccountService")
public class RefundAccountServiceImpl implements RefundAccountService{
	
	@Autowired
	private RefundAccountDao reaccountDao;
	
	public RefundAccountServiceImpl () {}

// 환불정보 계좌 목록 조회
	@Override
	public ArrayList<RefundAccount> reAccountList() {
		return reaccountDao.reAccountList();
	}

	//환불계좌 등록
	@Override
	public int insertReAccount(RefundAccount reaccount) {
		return reaccountDao.insertReAccount(reaccount);
	}

	// 환불계좌 정보 수정
	@Override
	public int reAccountUp(RefundAccount reaccount) {
		return reaccountDao.reAccountUp(reaccount);
	}
	//예치금 화면 넘어가기전 환불계좌정보 조회해옴
	@Override
	public RefundAccount selectOne(String userid) {
		
		return reaccountDao.selectOne(userid);
	}
	@Override
	public int deleteRestrict(String userId) {
		
		return reaccountDao.deleteRestrict(userId);
	}

}// end class
