package com.kh.ibom.interview.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.interview.model.vo.Interview;

public interface InterviewService {

	int dolInterviewUpdate(Interview inter);

	ArrayList<Interview> dolInterviewSelectList(String dol_id);

	ArrayList<Interview> userInterviewSelectList(String user_id);

	ArrayList<Interview> dolInterviewAdminSelectList(CommonPaging paging);

	int dolInterviewAdminListCount(HashMap<String, Object> map);
	//사용자가 면접 검색
	ArrayList<Interview> InterviewIusersSearchList(HashMap<String, Object> map);

}
