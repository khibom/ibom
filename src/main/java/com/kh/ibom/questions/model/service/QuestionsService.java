package com.kh.ibom.questions.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.questions.model.vo.Questions;
import com.kh.ibom.service_apply.model.vo.ServiceApply2;

public interface QuestionsService {
	
	int deleteQuestions(int anum);
	int iuserinsertQuestions(Questions qna);
	int dolinsertQuestions(Questions qna);
	int selectAllListCount(HashMap<String, Object> map);
	List<Questions> selectList(CommonPaging commonPage);
	Questions questionsDetailView(int anum);
	int updateQuestions(Questions qna);
}
