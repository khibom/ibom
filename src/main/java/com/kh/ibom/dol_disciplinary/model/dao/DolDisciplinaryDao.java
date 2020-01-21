package com.kh.ibom.dol_disciplinary.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ibom.dol_disciplinary.model.vo.DolDisciplinary;

@Repository("ddcpDao")
public class DolDisciplinaryDao {
	public DolDisciplinaryDao() {}
	
	@Autowired
	private SqlSessionTemplate session;

	public ArrayList<DolDisciplinary> dolDisciplinarySelectList() {
		List<DolDisciplinary> list = session.selectList("dolDisciplinaryMapper.selcetList");
		return (ArrayList<DolDisciplinary>)list;
	}

	public DolDisciplinary dolDisciplinarySelectOne(String disciplinary_no) {
		return session.selectOne("dolDisciplinaryMapper.selectOne",disciplinary_no);
	}

	public int dolDisciplinaryInsert(DolDisciplinary dDisciplinary) {
		return session.insert("dolDisciplinaryMapper.insert",dDisciplinary);
	}

	public int dolDisciplinaryUpdate(DolDisciplinary dDisciplinary) {
		return session.update("dolDisciplinaryMapper.update",dDisciplinary);
	}

}
