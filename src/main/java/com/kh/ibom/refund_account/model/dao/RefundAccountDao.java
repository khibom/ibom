package com.kh.ibom.refund_account.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.refund_account.model.vo.RefundAccount;

@Repository("reaccountDao")
public class RefundAccountDao {
	
	
	@Autowired
	private SqlSessionTemplate session;
	
	public RefundAccountDao() {}
	
	//환불계좌정보 목록 조회
	public ArrayList<RefundAccount> reAccountList() {
		return null;
	}
	
	// 환불계좌 정보 등록
	public int insertReAccount(RefundAccount reaccount) {
		return session.insert("refund_accountMapper.insertReAccount", reaccount);
	}

	// 환불계좌정보 수정
	public int reAccountUp(RefundAccount reaccount) {
		return 0;
	}
	//예치금 페이지 넘어갈때 환불계좌조회 용 Dao 
	public RefundAccount selectOne(String userid) {
		
		return session.selectOne("refund_accountMapper.selectOne",userid);
	}
	//계좌삭제
	public int deleteRestrict(String userId) {
		
		return session.delete("refund_accountMapper.deleteRestrict", userId);
	}
	
}// end class
