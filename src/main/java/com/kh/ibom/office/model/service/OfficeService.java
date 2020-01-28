package com.kh.ibom.office.model.service;

import java.util.List;

import com.kh.ibom.office.model.vo.Office;

public interface OfficeService {
	//돌보미 급여센터명 조회
		Office selectOne(String office_code);
		
	//  주소 검색 시 센터 리스트 가져오기
	List<Office> selectOfficeList(Office office);	
	
}// end class
