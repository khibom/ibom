package com.kh.ibom.nomal_actlog.model.service;

import java.util.ArrayList;

import com.kh.ibom.allday_actlog.model.vo.AlldayActLog;
import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.common.ReturnActVo;
import com.kh.ibom.nomal_actlog.model.vo.NomalActLog;
import com.kh.ibom.service_apply.model.vo.ServiceCalendar;
import com.kh.ibom.synthesis_actlog.model.vo.SynthesisActLog;

public interface NomalActLogService {
	
	
	ArrayList<NomalActLog> selectList();
	
	int insertNomalAct(NomalActLog na);

	ArrayList<NomalActLog> NomalActPaging(CommonPaging comPage);

	NomalActLog selectOne(ServiceCalendar sc);
	//관리자 활동일지 승인시
	int sucUpdateDolNomalActLog(String time_no);
	//관리자 활동일지 반려시
	int cancelDolNomalActLog(NomalActLog nLog);
	//관리자 활동일지 목록에서 검색
	ArrayList<NomalActLog> searchNomalActLog(NomalActLog no);
	//돌보미 일지반려 페이지로 이동전 정보조회
	ArrayList<ReturnActVo> selectMyNomalReturnActLog(AlldayActLog acLog);
	//돌보미 급여반려 제 등록
	int updateReturnNomalAct(NomalActLog noLog);
	//급여반려 검색
	ArrayList<ReturnActVo> selectSearchMyNomalReturnActLog(AlldayActLog acLog);


}
