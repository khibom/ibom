package com.kh.ibom.dol_judgrade.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.dol_judgrade.model.vo.DolJudgrade;

@Repository("djgDao")
public class DolJudgradeDao {
	public DolJudgradeDao() {}
	@Autowired
	private SqlSessionTemplate session;
	public ArrayList<DolJudgrade> dolJubGradeSelectList() {
		List<DolJudgrade> list = session.selectList("doljudgradeMapper.selectList");
		return (ArrayList<DolJudgrade>)list;
	}
	public int dolJubGradeInsert(DolJudgrade djg) {
		return session.insert("doljudgradeMapper.insert",djg);
	}
	public int dolJubGradeUpdate(DolJudgrade djg) {
		return session.update("doljudgradeMapper.update",djg);
	}
	public int dolJubGradeDelete(String dgrade_no) {
		return session.delete("doljudgradeMapper.delete",dgrade_no);
	}
	

}
