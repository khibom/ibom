package com.kh.ibom.service_apply.model.service;

import java.util.ArrayList;

import com.kh.ibom.service_apply.model.vo.ServiceApply1;
import com.kh.ibom.service_apply.model.vo.ServiceApply2;
import com.kh.ibom.service_apply.model.vo.ServiceApply3;
import com.kh.ibom.service_apply.model.vo.ServiceApplyNumbers;
import com.kh.ibom.service_apply.model.vo.ServiceCalendar;
import com.kh.ibom.synthesis_actlog.model.vo.SynthesisActLog;

public interface ServiceApplyService {

	int insertApply1(ServiceApply1 apply1);

	int insertApply2(ServiceApply2 apply2);

	ArrayList<ServiceApply2> serviceApplySelect(ServiceApply2 apply2);

	ArrayList<ServiceApply2> serviceApplyCardSelect(String userid);

	ArrayList<ServiceApply2> serviceApplyChildListSelect(String userid);

	int insertApply(ServiceApply1 apply1, ServiceApply2 apply2);

	ArrayList<ServiceApply2> selectServiceList();

	int applyUpdate(ServiceApply2 apply2);

	ServiceApply2 applyDetail(String service2_no);
// 은수 시작 =======================================
	ArrayList<ServiceApply1> selectDolService1List(String dolId);
	ArrayList<ServiceApply2> selectDolService2List(String dolId);
	//활동일지 상세보기 페이지로 가기전 정보조회
	ServiceApply2 selectDetailAct(String serviceNoList);
	ServiceApply1 selectOneDetailAct(String service1_no);
	//관리자 활동일지 상세보기 처리용 메소드
	ServiceApply3 selectOneA3DetailAct(ServiceCalendar sc);
	//종합형 활동일지 등록
	int updateLogCategory(SynthesisActLog synLog);
	//돌보미 일지 미제줄건 카운트
	int LogCount(String dol_id);

	ServiceApply2 selectAdminActLogService(String service2_no);

	ArrayList<ServiceCalendar> selectServiceCalendar(ServiceCalendar result);
	//돌보미 일지제출후 서비스2 서비스완료처리
	int updateLogCategory2(ServiceApply2 ap2);
	// 이번달 총근무시간 조회
	Integer selectTotalUsingTime(ServiceApply2 ap2);
	// 신청취소처리
	int cancelService(String sNo);
	
// 은수 끝 ================================================
	
	
	
}// end class
