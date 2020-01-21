package com.kh.ibom.terms.model.service;

import java.util.ArrayList;

import com.kh.ibom.terms.model.vo.Terms;

public interface TermsService {
	
	// 약관목록 조회
	ArrayList<Terms> termsList();
	
	// 약관 추가
	int termsAdd(Terms terms);
	// 약관 수정
	int termsUp(Terms terms);

	// 약관 삭제
	void termsDel(String term_code);

}// end class
