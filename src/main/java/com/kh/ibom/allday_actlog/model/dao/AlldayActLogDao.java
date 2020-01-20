package com.kh.ibom.allday_actlog.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.allday_actlog.model.vo.AlldayActLog;
import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.common.ReturnActVo;
import com.kh.ibom.service_apply.model.vo.ServiceCalendar;

@Repository("allActDao")
public class AlldayActLogDao {
	
	
	@Autowired
	private SqlSessionTemplate session;
	
	public AlldayActLogDao () {}

	public int insertAlldayAct(AlldayActLog al) {
		
		return session.insert("actLogMapper.insertAlldayActLog", al);
	}

	public ArrayList<AlldayActLog> selectList() {
		
		List<AlldayActLog> list = session.selectList("actLogMapper.AlldaySelectList");
		
		
		return (ArrayList<AlldayActLog>)list;
	}

	public ArrayList<AlldayActLog> alldayActPaging(CommonPaging comPage) {
		
		List<AlldayActLog> list = session.selectList("actLogMapper.alldayActPaging", comPage);
		
		
		return (ArrayList<AlldayActLog>)list;
	}

	public AlldayActLog selectOne(ServiceCalendar sc) {
		// TODO Auto-generated method stub
		return session.selectOne("actLogMapper.selectAlldayOne", sc);
	}

	public int sucUpdateDolAlldayActLog(String allday_no) {
		// 관리자 종일제 활동일지 승인처리
		return session.update("actLogMapper.sucUpdateDolAlldayActLog", allday_no);
	}

	public int cancelDolAlldayActLog(AlldayActLog aLog) {
		// 관리자 종일제 활동일지 반려
		return session.update("actLogMapper.cancelDolAlldayActLog", aLog);
	}

	public ArrayList<AlldayActLog> searchAlldayActLog(AlldayActLog aa) {
		
		List<AlldayActLog> list = session.selectList("actLogMapper.searchAlldayActLog", aa);
		
		
		return (ArrayList<AlldayActLog>)list;
	}

	public ArrayList<ReturnActVo> selectMyReturnActLog(AlldayActLog acLog) {
		// 돌보미 활동일지 반려 목록으로 이동 하기전 종일제 반려 조회
		List<ReturnActVo> list = session.selectList("actLogMapper.selectMyReturnActLog", acLog);
		
		
		return (ArrayList<ReturnActVo>)list;
	}

	public ArrayList<ReturnActVo> alldayReturnActVoActService(CommonPaging comPage) {
		// 활동일지 반려 페이징 처리
		List<ReturnActVo> list = session.selectList("actLogMapper.alldayReturnActVoActService", comPage);
		
		
		return (ArrayList<ReturnActVo>)list;
	}

	public int updateReturnAlldayAct(AlldayActLog allLog) {
		// 반려 종일제 활동일지 수정 등록
		return session.update("actLogMapper.updateReturnAlldayAct", allLog);
	}

	public ArrayList<ReturnActVo> selectSearchMyReturnActLog(AlldayActLog acLog) {
		// 급여반려검색
		List<ReturnActVo> list = session.selectList("actLogMapper.selectSearchMyReturnActLog", acLog);
		
		
		return (ArrayList<ReturnActVo>)list;
	}
	
	
	

}
