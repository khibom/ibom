package com.kh.ibom.service_apply.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.service_apply.model.dao.ServiceApplyDao;
import com.kh.ibom.service_apply.model.vo.ServiceApply1;
import com.kh.ibom.service_apply.model.vo.ServiceApply2;
import com.kh.ibom.service_apply.model.vo.ServiceApply3;
import com.kh.ibom.service_apply.model.vo.ServiceApplyNumbers;
import com.kh.ibom.service_apply.model.vo.ServiceCalendar;
import com.kh.ibom.synthesis_actlog.model.vo.SynthesisActLog;

@Service("applyService")
public class ServiceApplyServiceImpl implements ServiceApplyService{

	@Autowired
	private ServiceApplyDao applyDao;

	@Override
	public int insertApply1(ServiceApply1 apply1) {
		return applyDao.insertApply1(apply1);
	}

	@Override
	public int insertApply2(ServiceApply2 apply2) {
		return applyDao.inserApply2(apply2);
	}

	@Override
	public ArrayList<ServiceApply2> serviceApplySelect(ServiceApply2 apply2) {
		return applyDao.serviceApplySelect(apply2);
	}

	@Override
	public ArrayList<ServiceApply2> serviceApplyCardSelect(String userid) {
		return applyDao.serviceApplyCardSelect(userid);
	}

	@Override
	public ArrayList<ServiceApply2> serviceApplyChildListSelect(String userid) {
		return applyDao.serviceApplyChildListSelect(userid);
	}

	@Override
	public int insertApply(ServiceApply1 apply1, ServiceApply2 apply2) {
		return applyDao.insertApply(apply1, apply2);
	}

	@Override
	public ArrayList<ServiceApply2> selectServiceList() {
		return applyDao.selectServiceList();
	}

	@Override
	public int applyUpdate(ServiceApply2 apply2) {
		return applyDao.applyUpdate(apply2);
	}

	@Override
	public ServiceApply2 applyDetail(String service2_no) {
		return applyDao.applyDetail(service2_no);
	}
	
	// 은수 시작 --=============================================
	
	@Override
	public ArrayList<ServiceApply1> selectDolService1List(String dolId) {
		//돌봄이 활동내역조회 처리용 서비스
		return applyDao.selectDolService1List(dolId);
	}

	@Override
	public ArrayList<ServiceApply2> selectDolService2List(String dolId) {
		// TODO Auto-generated method stub
		return applyDao.selectDolService2List(dolId);
	}

	@Override
	public ServiceApply2 selectDetailAct(ServiceApplyNumbers sNum) {
		//활동일지 상세페이지로 이동하기전 서비스2 상세정보 가져오기위한 서비스
		return applyDao.selectDetailAct(sNum);
	}

	@Override
	public ServiceApply1 selectOneDetailAct(String service1_no) {
		// 활동일지 상세페이지로 이동하기전 서비스1 상세정보  가져오기위한 서비스
		return applyDao.selectOneDetailAct(service1_no);
	}

	@Override
	public ServiceApply3 selectOneA3DetailAct(ServiceCalendar sc) {
		//활동일지 상세페이지로 이동하기전 서비스3 상세정보 가져오기 위한 서비스
		return applyDao.selectOneA3DetailAct(sc);
	}

	@Override
	public int updateLogCategory(SynthesisActLog av) {
		// 일반형 활동일지 등록후 서비스 카테고리 상태변경 서비스
		return applyDao.updateLogCategory(av);
	}

	@Override
	public int LogCount(String dol_id) {
		// 돌보미 서비스 미제출건 카운트
		return applyDao.LogCount(dol_id);
	}

	@Override
	public ServiceApply2 selectAdminActLogService(String service2_no) {
		// 관리자 상세보기 조회처리용메소드
		return applyDao.selectAdminActLogService(service2_no);
	}

	@Override
	public ArrayList<ServiceCalendar> selectServiceCalendar(String dolId) {
		// 캘린더 축력조회형 서비스
		return applyDao.selectServiceCalendar(dolId);
	}

	@Override
	public int updateLogCategory2(ServiceApply2 ap2) {
		// 돌보미 일지제출후 서비스완료 업데이트처리
		return applyDao.updateLogCategory2(ap2);
	}
	
	// 은수 끈 ===========================================
	
	
}// end class
