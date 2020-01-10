package com.kh.ibom.refund_account.model.service;

import java.util.ArrayList;

import com.kh.ibom.refund_account.model.vo.RefundAccount;

public interface RefundAccountService {
	
	// 환불계좌정보 조회
	ArrayList<RefundAccount> reAccountList();
	// 환불계좌 등록
	int insertReAccount(RefundAccount reaccount);
	// 환불계좌 수정
	int reAccountUp(RefundAccount reaccount);
	
	RefundAccount selectOne(String userid);
	int deleteRestrict(String userId);
}
