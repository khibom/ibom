package com.kh.ibom.child_judgment_view.model.dao;


import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.child_judgment_view.model.vo.ChildJudgmentView;

@Repository("cjviewDao")
public class ChildJudgmentViewDao {
	
	@Autowired
	private SqlSessionTemplate session;
	
	public ChildJudgmentViewDao() {}
	
	// 아동판정이력 목록
	public ArrayList<ChildJudgmentView> childJudgViewList() {
		return null;
	}

}
