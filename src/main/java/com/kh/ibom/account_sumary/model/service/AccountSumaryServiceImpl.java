package com.kh.ibom.account_sumary.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.account_sumary.model.dao.AccountSumaryDao;
import com.kh.ibom.account_sumary.model.vo.AccountSumary;

@Service("acsumService")
public class AccountSumaryServiceImpl  implements AccountSumaryService{
	
	
	@Autowired
	private AccountSumaryDao aDao;
	
	public AccountSumaryServiceImpl () {}

	@Override
	public ArrayList<AccountSumary> selectList(String userid) {
		// TODO Auto-generated method stub
		return null;
	}

}
