package com.kh.ibom.interview.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.interview.model.vo.InterUpdate;
import com.kh.ibom.interview.model.vo.Interview;

@Repository("interDao")
public class InterviewDao {
	
	public InterviewDao(){}
	@Autowired
	private SqlSessionTemplate session;
	
	
	public ArrayList<Interview> dolInterviewSelectList(String dol_id) {
		List<Interview> list = session.selectList("interviewMapper.dolSelectList", dol_id);
		return (ArrayList<Interview>)list;
	}
	public int dolInterviewUpdate(Interview inter) {
		return session.update("interviewMapper.updateInterDate",inter);
	}
	public ArrayList<Interview> userInterviewSelectList(String user_id) {
		List<Interview> list = session.selectList("interviewMapper.userSelectList", user_id);
		return (ArrayList<Interview>)list;
	}
	public ArrayList<Interview> dolInterviewAdminSelectList(CommonPaging paging) {
		List<Interview> list = session.selectList("interviewMapper.adminSelectList", paging);
		return (ArrayList<Interview>)list;
	}
	public int dolInterviewAdminListCount(HashMap<String, Object> map) {
		return session.selectOne("interviewMapper.selectAllListCount",map);
	}
	public ArrayList<Interview> InterviewIusersSearchList(HashMap<String, Object> map) {
		List<Interview> list = session.selectList("interviewMapper.searchIusersList", map);
		return (ArrayList<Interview>)list;
	}
	public ArrayList<InterUpdate> adminInterUpList(String service2_no) {
		List<InterUpdate> list = session.selectList("interviewMapper.updateList", service2_no);
		return (ArrayList<InterUpdate>)list;
	}
	public Interview selectOne(String service2_no) {
		return session.selectOne("interviewMapper.selectone", service2_no);
	}
	public int interUpdateUp(Interview inter) {
		return session.insert("interviewMapper.interUpdateUp",inter);
	}
	

}
