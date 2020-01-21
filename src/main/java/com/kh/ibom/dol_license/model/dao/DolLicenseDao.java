package com.kh.ibom.dol_license.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("dliceDao")
public class DolLicenseDao {
	public DolLicenseDao() {}
	
	@Autowired
	private SqlSessionTemplate session;

}
