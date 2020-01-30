package com.kh.ibom.interview.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.interview.model.vo.InterUpdate;
import com.kh.ibom.interview.model.vo.Interview;

public interface InterviewService {

	int dolInterviewUpdate(Interview inter);

	ArrayList<Interview> dolInterviewSelectList(String dol_id);

	ArrayList<Interview> userInterviewSelectList(String user_id);

	ArrayList<Interview> dolInterviewAdminSelectList(CommonPaging paging);

	int dolInterviewAdminListCount(HashMap<String, Object> map);
	//사용자가 면접 검색
	ArrayList<Interview> InterviewIusersSearchList(HashMap<String, Object> map);
	//면접 수정내역 불러오기
	ArrayList<InterUpdate> adminInterUpList(String service2_no);

	Interview selectOne(String service2_no);
	//수정될 때 수정이력 테이블에 인서트하기
	int interUpdateUp(Interview inter);

}
