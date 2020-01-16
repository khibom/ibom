package com.kh.ibom.refund.model.dao;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("refundDao")
public class RefundDao {
	
	
	@Autowired
	private SqlSessionTemplate session;
	
	public RefundDao() {}
	
	

}
