package com.kh.ibom.dol_judgrade.model.service;

import java.util.ArrayList;

import com.kh.ibom.dol_judgrade.model.vo.DolJudgrade;

public interface DolJudgradeService {

	ArrayList<DolJudgrade> dolJubGradeSelectList();

	int dolJubGradeInsert(DolJudgrade djg);

	int dolJubGradeUpdate(DolJudgrade djg);

	int dolJubGradeDelete(String dgrade_no);

}
