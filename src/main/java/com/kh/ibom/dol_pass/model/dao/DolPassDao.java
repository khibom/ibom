package com.kh.ibom.dol_pass.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("dpassDao")
public class DolPassDao {
	public DolPassDao() {}
	
	@Autowired
	private SqlSessionTemplate session;

}
