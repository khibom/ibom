package com.kh.ibom.out_iusers.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.out_iusers.model.vo.Outiusers;

@Repository("outDao")
public class OutiusersDao {
	
	@Autowired
	private SqlSessionTemplate session;
	
	public OutiusersDao() {}

	// 회원탈퇴 입력
	public int bye(Outiusers out) {
		return 0;
	}

	public ArrayList<Outiusers> byeList() {
		return null;
	}
	
}// end class
