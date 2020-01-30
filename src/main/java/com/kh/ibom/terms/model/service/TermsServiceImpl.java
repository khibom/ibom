package com.kh.ibom.terms.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.terms.model.dao.TermsDao;
import com.kh.ibom.terms.model.vo.Terms;

@Service("termsService")
public class TermsServiceImpl implements TermsService{
	
	@Autowired
	private TermsDao termsDao;
	
	public TermsServiceImpl() {}

	// 약관목록 조회
	@Override
	public ArrayList<Terms> termsList() {
		return termsDao.termsList();
	}

	// 약관추가
	@Override
	public int termsAdd(Terms terms) {
		return termsDao.termsAdd(terms);
	}

	// 약관수정
	@Override
	public int termsUp(Terms terms) {
		return termsDao.termsUp(terms);
	}

	// 약관삭제
	@Override
	public void termsDel(String term_code) {
		termsDao.termsDel(term_code);
	}
	
}// end class
