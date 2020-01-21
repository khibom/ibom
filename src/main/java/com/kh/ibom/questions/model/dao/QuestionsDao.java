package com.kh.ibom.questions.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.common.CommonPaging;
import com.kh.ibom.questions.model.vo.Questions;
import com.kh.ibom.service_apply.model.vo.ServiceApply2;

@Repository("qnaDao")
public class QuestionsDao {
	
	@Autowired
	private SqlSessionTemplate session;

	public int deleteQuestions(int anum) {
		return session.delete("questionsMapper.deleteQuestions", anum);
	}

	public int selectAllListCount(HashMap<String, Object> map) {
		return session.selectOne("questionsMapper.selectAllListCount", map);
	}

	public List<Questions> selectList(CommonPaging commonPage) {
		return session.selectList("questionsMapper.selectList", commonPage);
	}

	public Questions questionsDetailView(int anum) {
		return session.selectOne("questionsMapper.questionsDetailView", anum);
	}

	public int iuserinsertQuestions(Questions qna) {
		return session.insert("questionsMapper.iuserinsertQuestions", qna);
	}

	public int dolinsertQuestions(Questions qna) {
		return session.insert("questionsMapper.iuserinsertQuestions", qna);
	}

	public int updateQuestions(Questions qna) {
		return session.update("questionsMapper.updateQuestions", qna);
	}

}
