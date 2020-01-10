package com.kh.ibom.nomal_actlog.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.allday_actlog.model.vo.AlldayActLog;
import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.common.ReturnActVo;
import com.kh.ibom.nomal_actlog.model.dao.NomalActLogDao;
import com.kh.ibom.nomal_actlog.model.vo.NomalActLog;
import com.kh.ibom.service_apply.model.vo.ServiceCalendar;

@Service("nomalActService")
public class NomalActLogServiceImpl implements NomalActLogService{
	
	
	@Autowired
	private NomalActLogDao nomalActDao;
	
	public NomalActLogServiceImpl () {}

	@Override
	public ArrayList<NomalActLog> selectList() {
		
		return nomalActDao.selectList();
	}

	@Override
	public int insertNomalAct(NomalActLog na) {
		// TODO Auto-generated method stub
		return nomalActDao.insertNomalAct(na);
	}

	@Override
	public ArrayList<NomalActLog> NomalActPaging(CommonPaging comPage) {
		
		return nomalActDao.NomalActPaging(comPage);
	}

	@Override
	public NomalActLog selectOne(ServiceCalendar sc) {
		return nomalActDao.selectOne(sc);
	}

	@Override
	public int sucUpdateDolNomalActLog(String time_no) {
		//관리자 일반형 활동일지 승인시
		return nomalActDao.sucUpdateDolNomalActLog(time_no);
	}

	@Override
	public int cancelDolNomalActLog(NomalActLog nLog) {
		// 관리자 일반형 활동일지 반려시
		return nomalActDao.cancelDolNomalActLog(nLog);
	}

	@Override
	public ArrayList<NomalActLog> searchNomalActLog(NomalActLog no) {
		//관리자 활동일지 목록 검색
		return nomalActDao.searchNomalActLog(no);
	}


	@Override
	public ArrayList<ReturnActVo> selectMyNomalReturnActLog(AlldayActLog acLog) {
		// 돌보미 일지반려 페이지로 이동전 정보조회
		return nomalActDao.selectMyNomalReturnActLog(acLog);
	}

	@Override
	public int updateReturnNomalAct(NomalActLog noLog) {
		// 돌보미 급여반려 제 등록
		return nomalActDao.updateReturnNomalAct(noLog);
	}

}
