package com.kh.ibom.allday_actlog.model.service;

import java.util.ArrayList;

import com.kh.ibom.allday_actlog.model.vo.AlldayActLog;
import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.common.ReturnActVo;
import com.kh.ibom.service_apply.model.vo.ServiceCalendar;

public interface AlldayActLogService {
	
	ArrayList<AlldayActLog> selectList();
	int insertAlldayAct(AlldayActLog al);
	
	ArrayList<AlldayActLog> alldayActService(CommonPaging comPage);
	AlldayActLog selectOne(ServiceCalendar sc);
	//종일제 관리자 활동일지 승인처리
	int sucUpdateDolAlldayActLog(String allday_no);
	//종일제 관리자 활동일지 반려
	int cancelDolAlldayActLog(AlldayActLog aLog);
	//종일제 활동일지 검색
	ArrayList<AlldayActLog> searchAlldayActLog(AlldayActLog aa);
	//돌보미 활동일지 반려 목록조회
	ArrayList<ReturnActVo> selectMyReturnActLog(AlldayActLog acLog);
	//활동일지 반려 페이징처리
	ArrayList<ReturnActVo> alldayReturnActVoActService(CommonPaging comPage);
	// 반려 종일제 활동일지 수정 등록
	int updateReturnAlldayAct(AlldayActLog allLog);

}
