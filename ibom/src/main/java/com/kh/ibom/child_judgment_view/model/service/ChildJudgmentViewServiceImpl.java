package com.kh.ibom.child_judgment_view.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.child_judgment_view.model.dao.ChildJudgmentViewDao;
import com.kh.ibom.child_judgment_view.model.vo.ChildJudgmentView;

@Service("cjviewService")
public class ChildJudgmentViewServiceImpl implements ChildJudgmentViewService{
	
	@Autowired
	private ChildJudgmentViewDao cjviewDao;
	
	public ChildJudgmentViewServiceImpl() {}
	
	// 아동판정이력 목록
	@Override
	public ArrayList<ChildJudgmentView> childJudgViewList() {
		return cjviewDao.childJudgViewList();
	}

}// end class
