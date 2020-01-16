package com.kh.ibom.terms.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.terms.model.vo.Terms;

@Repository("termsDao")
public class TermsDao {
	
	@Autowired
	private SqlSessionTemplate session;
	
	public TermsDao() {}
	
	// 약관목록 조회
	public ArrayList<Terms> termsList() {
		return null;
	}

	// 약관목록 추가
	public int termsAdd(Terms terms) {
		return 0;
	}

	// 약관 수정
	public int termsUp(Terms terms) {
		return 0;
	}

	// 약관삭제
	public void termsDel(String term_code) {
		
		
	}

}// end class
