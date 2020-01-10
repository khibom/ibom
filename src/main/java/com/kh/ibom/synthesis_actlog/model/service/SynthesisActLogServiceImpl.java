package com.kh.ibom.synthesis_actlog.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.allday_actlog.model.vo.AlldayActLog;
import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.common.ReturnActVo;
import com.kh.ibom.service_apply.model.vo.ServiceCalendar;
import com.kh.ibom.synthesis_actlog.model.dao.SynthesisActLogDao;
import com.kh.ibom.synthesis_actlog.model.vo.SynthesisActLog;

@Service("synActService")
public class SynthesisActLogServiceImpl implements SynthesisActLogService{
	
	@Autowired
	private SynthesisActLogDao synDao;

	public SynthesisActLogServiceImpl (){}
	
	@Override
	public ArrayList<SynthesisActLog> selectList() {
		
		return synDao.synSelectList();
	}

	@Override
	public int insertSynthesisAct(SynthesisActLog synLog) {
		//종합형 활동일지 등록
		return synDao.insertSynthesisAct(synLog);
	}

	@Override
	public ArrayList<SynthesisActLog> SynActPaging(CommonPaging comPage) {
		
		return synDao.SynActPaging(comPage);
	}

	@Override
	public SynthesisActLog selectOne(ServiceCalendar sc) {
		
		return synDao.selectOne(sc);
	}

	@Override
	public int sucUpdateDolSynActLog(String syn_no) {
		// 종합형 활동일지 승인완료처리
		return synDao.sucUpdateDolSynActLog(syn_no);
	}

	@Override
	public int cancelDolSynActLog(SynthesisActLog synLog) {
		// 종합형 활동일지 반려
		return synDao.cancelDolSynActLog(synLog);
	}

	@Override
	public ArrayList<SynthesisActLog> searchSynActLog(SynthesisActLog syn) {
		// 관리자 종합형 활동일지 검색
		return synDao.searchSynActLog(syn);
	}

	@Override
	public ArrayList<ReturnActVo> selectMySynReturnActLog(AlldayActLog acLog) {
		// 돌보미 일지반려 페이지로 이동전 정보조회
		return synDao.selectMySynReturnActLog(acLog);
	}

	@Override
	public int updateReturnSynAct(SynthesisActLog synLog) {
		// 돌보미 반려 종합형 활동일지 수정
		return synDao.updateReturnSynAct(synLog);
	}

	

}
