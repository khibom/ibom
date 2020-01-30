package com.kh.ibom.allday_actlog.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.allday_actlog.model.dao.AlldayActLogDao;
import com.kh.ibom.allday_actlog.model.vo.AlldayActLog;
import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.common.ReturnActVo;
import com.kh.ibom.service_apply.model.vo.ServiceCalendar;

@Service("alldayActService")
public class AlldayActLogServiceImpl implements AlldayActLogService{
	
	@Autowired
	private AlldayActLogDao allActDao;
	
	public AlldayActLogServiceImpl () {}

	@Override
	public ArrayList<AlldayActLog> selectList() {
		
		return allActDao.selectList();
	}

	@Override
	public int insertAlldayAct(AlldayActLog al) {
		
		return allActDao.insertAlldayAct(al);
	}

	@Override
	public ArrayList<AlldayActLog> alldayActService(CommonPaging comPage) {
		// TODO Auto-generated method stub
		return allActDao.alldayActPaging(comPage);
	}

	@Override
	public AlldayActLog selectOne(ServiceCalendar sc) {
		// TODO Auto-generated method stub
		return allActDao.selectOne(sc);
	}

	@Override
	public int sucUpdateDolAlldayActLog(String allday_no) {
		// 종일제 관리자 활동일지 승인처리
		return allActDao.sucUpdateDolAlldayActLog(allday_no);
	}

	@Override
	public int cancelDolAlldayActLog(AlldayActLog aLog) {
		// 종일제관리자 활동일지 반려
		return allActDao.cancelDolAlldayActLog(aLog);
	}

	@Override
	public ArrayList<AlldayActLog> searchAlldayActLog(AlldayActLog aa) {
		// 종일제 활동일지 관리자 검색
		return allActDao.searchAlldayActLog(aa);
	}

	@Override
	public ArrayList<ReturnActVo> selectMyReturnActLog(AlldayActLog acLog) {
		// 돌보미 활동일지 반려 목록으로 이동 하기전 종일제 반려 조회
		return allActDao.selectMyReturnActLog(acLog);
	}

	@Override
	public ArrayList<ReturnActVo> alldayReturnActVoActService(CommonPaging comPage) {
		// 활동일지 반려 페이징 처리
		return allActDao.alldayReturnActVoActService(comPage);
	}

	@Override
	public int updateReturnAlldayAct(AlldayActLog allLog) {
		// 반려 종일제 활동일지 수정 등록
		return allActDao.updateReturnAlldayAct(allLog);
	}

	@Override
	public ArrayList<ReturnActVo> selectSearchMyReturnActLog(AlldayActLog acLog) {
		// 급여반려 검색
		return allActDao.selectSearchMyReturnActLog(acLog);
	}

}
