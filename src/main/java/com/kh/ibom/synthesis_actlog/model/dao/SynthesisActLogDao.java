package com.kh.ibom.synthesis_actlog.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.allday_actlog.model.vo.AlldayActLog;
import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.common.ReturnActVo;
import com.kh.ibom.service_apply.model.vo.ServiceCalendar;
import com.kh.ibom.synthesis_actlog.model.vo.SynthesisActLog;

@Repository("synDao")
public class SynthesisActLogDao {

	@Autowired
	private SqlSessionTemplate session;
	
	public SynthesisActLogDao () {}

	public int insertSynthesisAct(SynthesisActLog synLog) {
		
		return session.insert("actLogMapper.insertSynthesisAct",synLog);
	}

	public ArrayList<SynthesisActLog> synSelectList() {
		List<SynthesisActLog> list = session.selectList("actLogMapper.SynSelectList");
		
		
		return (ArrayList<SynthesisActLog>)list;
	}

	public ArrayList<SynthesisActLog> SynActPaging(CommonPaging comPage) {
		List<SynthesisActLog> list = session.selectList("actLogMapper.synActPaging", comPage);
		
		return (ArrayList<SynthesisActLog>)list;
	}

	public SynthesisActLog selectOne(ServiceCalendar sc) {
		return session.selectOne("actLogMapper.selectSynOne",sc);
	}

	public int sucUpdateDolSynActLog(String syn_no) {
		// 종합형 활동일지 승인완료처리
		return session.update("actLogMapper.sucUpdateDolSynActLog",syn_no);
	}

	public int cancelDolSynActLog(SynthesisActLog synLog) {
		// 관리자 종합형 활동일지 반려
		return session.update("actLogMapper.cancelDolSynActLog",synLog);
	}

	public ArrayList<SynthesisActLog> searchSynActLog(SynthesisActLog syn) {
		// 관리자 종합형 활동일지 검색
		List<SynthesisActLog> list = session.selectList("actLogMapper.searchSynActLog", syn);
		
		return (ArrayList<SynthesisActLog>)list;
	}

	public ArrayList<ReturnActVo> selectMySynReturnActLog(AlldayActLog acLog) {
		// 돌보미 일지반려 페이지로 이동전 정보조회
		List<ReturnActVo> list = session.selectList("actLogMapper.selectMySynReturnActLog", acLog);
		
		return (ArrayList<ReturnActVo>)list;
	}

	public int updateReturnSynAct(SynthesisActLog synLog) {
		// 돌보미 반려 종합형 활동일지 수정
		return session.update("actLogMapper.updateReturnSynAct", synLog);
	}

	public ArrayList<ReturnActVo> selectSearchMySynReturnActLog(AlldayActLog acLog) {
		// 급여반려 검색
		return null;
	}
	
	
	
}
