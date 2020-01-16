package com.kh.ibom.deposit.model.service;

import java.util.ArrayList;

import com.kh.ibom.common.CommonSearchDate;
import com.kh.ibom.deposit.model.vo.Deposit;
import com.kh.ibom.deposit.model.vo.DepositAdmin;

public interface DepositService {
	
	
	ArrayList<Deposit> selectList(String userId);
	ArrayList<Deposit> selectSearchList(CommonSearchDate act);
	int insertDeposit(Deposit depo);
	ArrayList<DepositAdmin> selecRefundList (String depoCategory);
	int updateDepositCategory(String user_id);
	int updateDepositCancelCategory(String user_id);
	ArrayList<DepositAdmin> searchAdminDepoName(String user_name);
}
