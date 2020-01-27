package com.kh.ibom.interview.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.interview.model.dao.InterviewDao;
import com.kh.ibom.interview.model.vo.InterUpdate;
import com.kh.ibom.interview.model.vo.Interview;

@Service("interService")
public class InterviewServiceImpl implements InterviewService{
	public InterviewServiceImpl() {}
	@Autowired
	private InterviewDao interDao;
	
	@Override
	public int dolInterviewUpdate(Interview inter) {
		// TODO Auto-generated method stub
		return interDao.dolInterviewUpdate(inter);
	}
	@Override
	public ArrayList<Interview> dolInterviewSelectList(String dol_id) {
		// TODO Auto-generated method stub
		return interDao.dolInterviewSelectList(dol_id);
	}
	@Override
	public ArrayList<Interview> userInterviewSelectList(String user_id) {
		// TODO Auto-generated method stub
		return interDao.userInterviewSelectList(user_id);
	}
	@Override
	public ArrayList<Interview> dolInterviewAdminSelectList(CommonPaging paging) {
		// TODO Auto-generated method stub
		return interDao.dolInterviewAdminSelectList(paging);
	}
	@Override
	public int dolInterviewAdminListCount(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return interDao.dolInterviewAdminListCount(map);
	}
	//사용자가 면접 검색
	@Override
	public ArrayList<Interview> InterviewIusersSearchList(HashMap<String, Object> map) {
		return interDao.InterviewIusersSearchList(map);
	}
	@Override
	public ArrayList<InterUpdate> adminInterUpList(String service2_no) {
		//면접 수정내역 불러오기
		return interDao.adminInterUpList(service2_no);
	}
	@Override
	public Interview selectOne(String service2_no) {
		// selectOne
		return interDao.selectOne(service2_no);
	}
	@Override
	public int interUpdateUp(Interview inter) {
		// 수정할 때 수정이력 테이블에 인서트하기
		return interDao.interUpdateUp(inter);
	}

}
