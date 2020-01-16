package com.kh.ibom.office.model.service;

import com.kh.ibom.office.model.vo.Office;

public interface OfficeService {
	//돌보미 급여센터명 조회
		Office selectOne(String office_code);
}// end class
