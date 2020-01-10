package com.kh.ibom.account_sumary.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("aDao")
public class AccountSumaryDao {
	
	
	@Autowired
	private SqlSessionTemplate session;
	
	public AccountSumaryDao () {}
	
	

}
