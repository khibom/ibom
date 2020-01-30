package com.kh.ibom.account_sumary.model.service;

import java.util.ArrayList;

import com.kh.ibom.account_sumary.model.vo.AccountSumary;

public interface AccountSumaryService {
	
	
	ArrayList<AccountSumary> selectList(String userid);

}
