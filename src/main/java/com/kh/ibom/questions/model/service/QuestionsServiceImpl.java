package com.kh.ibom.questions.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.questions.model.dao.QuestionsDao;
import com.kh.ibom.questions.model.vo.Questions;
import com.kh.ibom.service_apply.model.vo.ServiceApply2;

@Service("qservice")
public class QuestionsServiceImpl implements QuestionsService{
	
	@Autowired
	private QuestionsDao qnaDao;
	
	public QuestionsServiceImpl() {}

	@Override
	public int selectAllListCount(HashMap<String, Object> map) {
		return qnaDao.selectAllListCount(map);
	}

	@Override
	public List<Questions> selectList(CommonPaging commonPage) {
		return qnaDao.selectList(commonPage);
	}

	@Override
	public Questions questionsDetailView(int anum) {
		return qnaDao.questionsDetailView(anum);
	}

	@Override
	public int iuserinsertQuestions(Questions qna) {
		return qnaDao.iuserinsertQuestions(qna);
	}

	@Override
	public int dolinsertQuestions(Questions qna) {
		return qnaDao.dolinsertQuestions(qna);
	}

	@Override
	public int deleteQuestions(int anum) {
		return qnaDao.deleteQuestions(anum);
	}

	@Override
	public int updateQuestions(Questions qna) {
		return qnaDao.updateQuestions(qna);
	}

	@Override
	public List<Questions> adminselectList(CommonPaging commonPage) {
		return qnaDao.adminselectList(commonPage);
	}

}
