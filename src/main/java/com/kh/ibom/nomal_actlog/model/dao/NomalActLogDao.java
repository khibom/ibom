package com.kh.ibom.nomal_actlog.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.allday_actlog.model.vo.AlldayActLog;
import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.common.ReturnActVo;
import com.kh.ibom.nomal_actlog.model.vo.NomalActLog;
import com.kh.ibom.service_apply.model.vo.ServiceCalendar;

@Repository("nomalActDao")
public class NomalActLogDao {

	
	@Autowired
	private SqlSessionTemplate session;
	
	public NomalActLogDao() {}

	public int insertNomalAct(NomalActLog na) {
		//일반형 활동일지 등록
		return session.insert("actLogMapper.insertNomalAct", na);
	}

	public ArrayList<NomalActLog> selectList() {
		List<NomalActLog> list = session.selectList("actLogMapper.NomalSelectList");
		
		
		return (ArrayList<NomalActLog>)list;
	}

	public ArrayList<NomalActLog> NomalActPaging(CommonPaging comPage) {
		List<NomalActLog> list = session.selectList("actLogMapper.nomalActPaging", comPage);
		return (ArrayList<NomalActLog>)list;
	}

	public NomalActLog selectOne(ServiceCalendar sc) {
		
		return session.selectOne("actLogMapper.selectOne", sc);
	}

	public int sucUpdateDolNomalActLog(String time_no) {
		
		return session.update("actLogMapper.sucUpdateDolNomalActLog", time_no);
	}

	public int cancelDolNomalActLog(NomalActLog nLog) {
		// TODO Auto-generated method stub
		return session.update("actLogMapper.cancelDolNomalActLog", nLog);
	}

	public ArrayList<NomalActLog> searchNomalActLog(NomalActLog no) {
		//관리자 활동일지목록에서 검색
		List<NomalActLog> list = session.selectList("actLogMapper.searchNomalActLog", no);
		return (ArrayList<NomalActLog>)list;
		
	}


	public ArrayList<ReturnActVo> selectMyNomalReturnActLog(AlldayActLog acLog) {
		// 돌보미 일지반려 페이지로 이동전 정보조회
		List<ReturnActVo> list = session.selectList("actLogMapper.selectMyNomalReturnActLog", acLog);
		return (ArrayList<ReturnActVo>)list;
	}

	public int updateReturnNomalAct(NomalActLog noLog) {
		// 돌보미 급여반려 제 등록
		return session.update("actLogMapper.updateReturnNomalAct", noLog);
	}

	public ArrayList<ReturnActVo> selectSearchMyNomalReturnActLog(AlldayActLog acLog) {
		List<ReturnActVo> list = session.selectList("actLogMapper.selectSearchMyNomalReturnActLog", acLog);
		return (ArrayList<ReturnActVo>)list;
	}
	
	
}
