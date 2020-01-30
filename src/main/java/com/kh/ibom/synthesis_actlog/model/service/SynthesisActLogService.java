package com.kh.ibom.synthesis_actlog.model.service;

import java.util.ArrayList;

import com.kh.ibom.allday_actlog.model.vo.AlldayActLog;
import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.common.ReturnActVo;
import com.kh.ibom.service_apply.model.vo.ServiceCalendar;
import com.kh.ibom.synthesis_actlog.model.vo.SynthesisActLog;

public interface SynthesisActLogService {
	
	ArrayList<SynthesisActLog> selectList();
	int insertSynthesisAct(SynthesisActLog synLog);
	ArrayList<SynthesisActLog> SynActPaging(CommonPaging comPage);
	SynthesisActLog selectOne(ServiceCalendar sc);
	//관리자 종합형 활동일지 등록
	int sucUpdateDolSynActLog(String syn_no);
	//관리자 종합혀 활동일지 반려
	int cancelDolSynActLog(SynthesisActLog synLog);
	//관리자 종합형 활동일지 검색
	ArrayList<SynthesisActLog> searchSynActLog(SynthesisActLog syn);
	//돌보미 일지반려 페이지로 이동전 정보조회
	ArrayList<ReturnActVo> selectMySynReturnActLog(AlldayActLog acLog);
	//돌보미 반려 종합형 활동일지 수정
	int updateReturnSynAct(SynthesisActLog synLog);
	//급여반려 검색
	ArrayList<ReturnActVo> selectSearchMySynReturnActLog(AlldayActLog acLog);
	

}
