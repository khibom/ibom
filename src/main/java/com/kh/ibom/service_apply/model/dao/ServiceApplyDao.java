package com.kh.ibom.service_apply.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.service_apply.model.vo.ServiceApply1;
import com.kh.ibom.service_apply.model.vo.ServiceApply2;
import com.kh.ibom.service_apply.model.vo.ServiceApply3;
import com.kh.ibom.service_apply.model.vo.ServiceCalendar;
import com.kh.ibom.synthesis_actlog.model.vo.SynthesisActLog;

@Repository("applyDao")
public class ServiceApplyDao {
	public ServiceApplyDao() {}
	
	@Autowired
	private SqlSessionTemplate session;

	public int insertApply1(ServiceApply1 apply1) {
		return session.insert("applyMapper.insertApply1", apply1);
	}

	public int inserApply2(ServiceApply2 apply2) {
		return session.insert("applyMapper.insertApply2", apply2);
	}

	public ArrayList<ServiceApply2> serviceApplySelect(ServiceApply2 apply2) {
		return null;
	}

	public ArrayList<ServiceApply2> serviceApplyCardSelect(String userid) {
		return null;
	}

	public ArrayList<ServiceApply2> serviceApplyChildListSelect(String userid) {
		return null;
	}

	public int insertApply(ServiceApply1 apply1, ServiceApply2 apply2) {
		return 0;
	}

	public ArrayList<ServiceApply2> selectServiceList() {
		return null;
	}

	public int applyUpdate(ServiceApply2 apply2) {
		return session.update("applyMapper.applyUpdate", apply2);
	}

	public ServiceApply2 applyDetail(String service2_no) {
		return session.selectOne("applyMapper.applyDetail", service2_no);
	}
	// 은수 시작 --======================================================
	public ArrayList<ServiceApply1> selectDolService1List(String dolId) {
		//돌봄이 활동내역조회 처리용 dao
		List<ServiceApply1> s1list = session.selectList("applyMapper.selectDolService1List", dolId);
		
		return (ArrayList<ServiceApply1>)s1list;
	}

	public ArrayList<ServiceApply2> selectDolService2List(String dolId) {
		//돌봄이 활동내역조회 처리용 dao
		List<ServiceApply2> s1list = session.selectList("applyMapper.selectDolService2List", dolId);
		
		return (ArrayList<ServiceApply2>)s1list;
	}

	public ServiceApply2 selectDetailAct(String sNum) {
		//활동일지 상세보기 페이지로 가기전 정보조회
		return session.selectOne("applyMapper.selectDetailAct", sNum);
	}

	public ServiceApply1 selectOneDetailAct(String service1_no) {
		
		return session.selectOne("applyMapper.selectOneDetailAct", service1_no);
	}

	public ServiceApply3 selectOneA3DetailAct(ServiceCalendar sc) {
			
		
		return session.selectOne("applyMapper.selectOneA3DetailAct", sc);
	}

	public int updateLogCategory(SynthesisActLog av) {
		//활동일지 등록완료되면 서비스 완료로 업데이트 시킴
		return session.update("applyMapper.updateLogCategory", av);
	}

	public int LogCount(String dol_id) {
		// 돌보미 일지미제출건 카운트
		return session.selectOne("applyMapper.LogCount", dol_id);
	}

	public ServiceApply2 selectAdminActLogService(String service2_no) {
		// 관리자 돌보미 일지 상세보기조회용 
		return session.selectOne("applyMapper.selectAdminActLogService", service2_no);
	}

	public ArrayList<ServiceCalendar> selectServiceCalendar(ServiceCalendar sc) {
		List<ServiceCalendar> list = session.selectList("applyMapper.selectServiceCalendar", sc);
		
		return (ArrayList<ServiceCalendar>)list;
	}

	public int updateLogCategory2(ServiceApply2 ap2) {
		// TODO Auto-generated method stub
		return session.update("applyMapper.updateLogCategory2", ap2);
	}

	public Integer selectTotalUsingTime(ServiceApply2 ap2) {
		// 이번달 총 근무시간 조회
		return session.selectOne("applyMapper.selectTotalUsingTime", ap2);
	}

	
	// --은수 끝 ============================================================
}// end class
