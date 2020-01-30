package com.kh.ibom.dol_judgrade.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ibom.dol_judgrade.model.dao.DolJudgradeDao;
import com.kh.ibom.dol_judgrade.model.vo.DolJudgrade;

@Service("djgService")
public class DolJudgradeServiceImpl implements DolJudgradeService{
	public DolJudgradeServiceImpl() {}
	
	@Autowired
	private DolJudgradeDao djgDao;

	@Override
	public ArrayList<DolJudgrade> dolJubGradeSelectList() {
		return djgDao.dolJubGradeSelectList();
	}

	@Override
	public int dolJubGradeInsert(DolJudgrade djg) {
		return djgDao.dolJubGradeInsert(djg);
	}

	@Override
	public int dolJubGradeUpdate(DolJudgrade djg) {
		return djgDao.dolJubGradeUpdate(djg);
	}

	@Override
	public int dolJubGradeDelete(String dgrade_no) {
		return djgDao.dolJubGradeDelete(dgrade_no);
	}
}
