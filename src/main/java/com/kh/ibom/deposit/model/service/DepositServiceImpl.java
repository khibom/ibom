package com.kh.ibom.deposit.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.common.CommonSearchDate;
import com.kh.ibom.deposit.model.dao.DepositDao;
import com.kh.ibom.deposit.model.vo.Deposit;
import com.kh.ibom.deposit.model.vo.DepositAdmin;


@Service("depoService")
public class DepositServiceImpl implements DepositService{
	
	@Autowired
	private DepositDao depositDao;
	
	
	public DepositServiceImpl() {}

	@Override
	public ArrayList<Deposit> selectList(String userId) {
		// TODO Auto-generated method stub
		return depositDao.selectList(userId);
	}

	@Override
	public ArrayList<Deposit> selectSearchList(CommonSearchDate act) {
		// TODO Auto-generated method stub
		return depositDao.selectSearchList(act);
	}

	@Override
	public int insertDeposit(Deposit depo) {
		// TODO Auto-generated method stub
		return depositDao.insertDeposit(depo);
	}

	@Override
	public ArrayList<DepositAdmin> selecRefundList(String depoCategory) {
		// TODO Auto-generated method stub
		return depositDao.selecRefundList(depoCategory);
	}

	@Override
	public int updateDepositCategory(String user_id) {
		//어드민 환불요청 승인처리용 서비스
		return depositDao.updateDepositCategory(user_id);
	}

	@Override
	public int updateDepositCancelCategory(String user_id) {
		//어드민 환불취소 처리
		return depositDao.updateDepositCancelCategory(user_id);
	}

	@Override
	public ArrayList<DepositAdmin> searchAdminDepoName(String user_name) {
		//어드민 유져이름으로 검색
		return depositDao.searchAdminDepoName(user_name);
	}


}
